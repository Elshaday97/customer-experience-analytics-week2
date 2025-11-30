from typing import List
from .create_db import create_db
from pathlib import Path
from ..constants import (
    PROCESSED_DATA_DIR,
    DASHEN,
    DASHEN_APP_ID,
    BOA,
    BOA_APP_ID,
    CBE,
    CBE_APP_ID,
)
import pandas as pd


class DatabaseManager:
    def __init__(self):
        self.conn = create_db()
        self.cursor = self.conn.cursor()
        self.clean_reviews_path = Path(PROCESSED_DATA_DIR) / "cleaned_reviews_data.csv"

    # ---------------------------
    # Helper query method
    # ---------------------------
    def query(self, sql, params=None) -> pd.DataFrame:
        return pd.read_sql(sql, self.conn, params=params)

    # ---------------------------
    # Execute with commit/rollback
    # ---------------------------
    def execute(self, sql, params=None):
        try:
            self.cursor.execute(sql, params)
            self.conn.commit()
        except Exception as e:
            self.conn.rollback()
            raise e

    # ---------------------------------------------------
    # Create Tables
    # ---------------------------------------------------

    def create_schema(self):
        DDL = [
            """
            CREATE TABLE IF NOT EXISTS banks (
                bank_id SERIAL PRIMARY KEY,
                bank_name TEXT NOT NULL,
                app_name TEXT UNIQUE NOT NULL
            );
            """,
            """
            CREATE TABLE IF NOT EXISTS reviews (
                review_id TEXT PRIMARY KEY,
                bank_id INTEGER REFERENCES banks(bank_id),
                review_text TEXT,
                rating INTEGER,
                review_date DATE,
                vader_sentiment_label TEXT,
                vader_sentiment_score FLOAT,
                textblob_sentiment_label TEXT,
                textblob_sentiment_score FLOAT,
                source TEXT
            );
            """,
            "CREATE INDEX IF NOT EXISTS idx_reviews_bank_id ON reviews(bank_id);",
        ]
        for statement in DDL:
            self.execute(statement)

    # ---------------------------------------------------
    # Insert Banks
    # ---------------------------------------------------
    def insert_banks(self):
        banks = [
            {"bank_name": CBE, "app_name": CBE_APP_ID},
            {"bank_name": BOA, "app_name": BOA_APP_ID},
            {"bank_name": DASHEN, "app_name": DASHEN_APP_ID},
        ]
        sql = """
            INSERT INTO banks (bank_name, app_name)
            VALUES (%s, %s)
            ON CONFLICT (app_name) DO NOTHING;
        """

        for bank in banks:
            self.execute(sql, (bank["bank_name"], bank["app_name"]))
            print(f" {bank} bank inserted.")

    # ---------------------------
    # Get bank_id
    # ---------------------------
    def get_bank_id(self, bank_name: str) -> int:
        self.execute("SELECT bank_id FROM banks WHERE bank_name = %s;", (bank_name,))
        result = self.cursor.fetchone()
        return result[0] if result else None

    # ---------------------------
    # Insert Reviews
    # ---------------------------
    def insert_reviews(self):
        df = pd.read_csv(self.clean_reviews_path)
        sql = """
            INSERT INTO reviews (
                review_id, bank_id, review_text, rating, review_date,
                vader_sentiment_label, vader_sentiment_score,
                textblob_sentiment_label, textblob_sentiment_score,
                source
            )
            VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s)
            ON CONFLICT (review_id) DO NOTHING;
        """
        for _, row in df.iterrows():
            bank_id = self.get_bank_id(row["bank"])
            if bank_id is None:
                print(
                    f"Skipping review {row['review_id']} — unknown bank {row['app_name']}"
                )
                continue
            params = (
                row["review_id"],
                bank_id,
                row["clean_review"],
                row["rating"],
                row["date"],
                row["vader_label"],
                row["vader_score"],
                row["textblob_label"],
                row["textblob_score"],
                row["source"],
            )
            self.execute(sql, params)
        print("Inserted reviews successfully!")

    # ---------------------------
    # Setup (tables + banks)
    # ---------------------------
    def setup(self):
        self.create_schema()
        # Check if banks exist
        self.execute("SELECT COUNT(*) AS c FROM banks;")
        count = self.cursor.fetchone()[0]
        if count == 0:
            self.insert_banks()
            print("Banks inserted.")
        else:
            print("Banks already exist. Skipping insertion.")

    # ---------------------------
    # Close connection
    # ---------------------------
    def close(self):
        try:
            if self.conn:
                self.conn.close()
        except Exception:
            pass
