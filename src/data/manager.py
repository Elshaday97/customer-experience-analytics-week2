from pathlib import Path
import pandas as pd
from scripts.constants import (
    BOA_APP_ID,
    CBE_APP_ID,
    DASHEN_APP_ID,
    BOA,
    CBE,
    DASHEN,
    RAW_DATA_DIRS,
    PROCESSED_DATA_DIR,
)
from scripts import data_scrapper, reviews_parser
from src.preprocessing import DataCleaner


class DataManager:

    def __init__(self):
        self.bank_app_ids = {DASHEN: DASHEN_APP_ID, CBE: CBE_APP_ID, BOA: BOA_APP_ID}
        self.raw_data_dir = Path(RAW_DATA_DIRS)
        self.processed_data_dir = Path(PROCESSED_DATA_DIR)
        self.reviews_data_file_name = "reviews_data.csv"
        self.cleaned_reviews_data_file_name = "cleaned_reviews_data.csv"

    def scrape_reviews(self) -> pd.DataFrame:
        try:
            raw_reviews = {}
            for bank, app_id in self.bank_app_ids.items():
                scrapped = data_scrapper(app_id=app_id)
                raw_reviews[bank] = scrapped

            df = reviews_parser(raw_reviews)
            self.save_to_csv(df)
            cleaner = DataCleaner(df)
            cleaner.clean_df()
            cleaned_df = cleaner.get_df()
            self.save_to_csv(cleaned_df, processed=True)
            return pd.DataFrame()
        except Exception as e:
            print(f"Something went wrong while scraping data: {e}")

    def load_data(self) -> pd.DataFrame:
        path = self.processed_data_dir / self.cleaned_reviews_data_file_name
        if not path.exists():
            raise FileNotFoundError(f"CSV file not found: {path}")

        return pd.read_csv(path, parse_dates=["date"], dtype={"rating": "Int64"})

    def save_to_csv(
        self,
        df: pd.DataFrame,
        keep_index: bool = False,
        file_name: str = "",
        processed: bool = False,
    ):
        if df.empty:
            raise ValueError("Cannot save empty DataFrame.")

        if not file_name:
            file_name = (
                self.cleaned_reviews_data_file_name
                if processed
                else self.reviews_data_file_name
            )

        path = (
            (self.processed_data_dir / file_name)
            if processed
            else (self.raw_data_dir / file_name)
        )
        df.to_csv(path, index=keep_index)
        print(f"Saved data to {path}")
