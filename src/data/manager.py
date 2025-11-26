from pathlib import Path
import pandas as pd
from src.constants import BOA_APP_ID, CBE_APP_ID, DASHEN_APP_ID, BOA, CBE, DASHEN
from scripts import data_scrapper, reviews_parser


class DataManager:

    def __init__(self, data_dir="../data"):
        self.bank_app_ids = {DASHEN: DASHEN_APP_ID, CBE: CBE_APP_ID, BOA: BOA_APP_ID}
        self.data_dir = Path(data_dir)
        self.reviews_data_file_name = "reviews_data.csv"

    def scrape_reviews(self) -> pd.DataFrame:
        try:
            raw_reviews = {}
            for bank, app_id in self.bank_app_ids.items():
                scrapped = data_scrapper(app_id=app_id)
                raw_reviews[bank] = scrapped

            df = reviews_parser(raw_reviews)
            self.save_to_csv(df)
        except Exception as e:
            print(f"Something went wrong while scraping data: {e}")

    def load_data(self) -> pd.DataFrame:
        try:
            path = self.data_dir / self.reviews_data_file_name
            data = pd.read_csv(path, parse_dates=["date"], dtype={"rating": "Int64"})
            return data
        except Exception as e:
            print(f"Something went wrong while loading data: {e}")

    def save_to_csv(
        self, df: pd.DataFrame, keep_index: bool = False, file_name: str = ""
    ):
        try:
            if df.empty:
                print(
                    "Please make sure your data is not empty and have passed the correct file name"
                )
            if not file_name:
                file_name = self.reviews_data_file_name

            path = self.data_dir / file_name
            df.to_csv(path, index=keep_index)
            print(f"Successfully saved to file {file_name}")
        except Exception as e:
            print(f"Unable to save data to csv. Please try again. : {e}")
