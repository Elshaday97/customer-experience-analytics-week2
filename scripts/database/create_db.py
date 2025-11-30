import psycopg2
from config.settings import get_db_config


def create_db():
    try:
        cfg = get_db_config()
        conn = psycopg2.connect(
            dbname=cfg["DB_NAME"],
            user=cfg["DB_USER"],
            password=cfg["DB_PASSWORD"],
            host=cfg["DB_HOST"],
            port=cfg["DB_PORT"],
        )
        print("Connected to PostgreSQL successfully!")
        return conn
    except psycopg2.Error as e:
        raise ConnectionError(f"Error connecting to PostgreSQL: {e}")
