import pathlib as Path
import pandas as pd


class DataManager:

    def __init__(self, data_dir="../data"):
        self.dashen_app_id = "com.dashen"
        self.cbe_app_id = "com.cbe"
        self.boa_app_id = "com.boa"
        self.data_dir = Path.Path(data_dir)

    def load_reviews_data(self, lang="en", banks: list = []):
        if len(banks) == 0:
            print("Please make sure you select 1 or more banks")

        reviews_data = {}

        try:
            for bank in banks:
                print(bank)
                reviews_data[bank] = []

            return reviews_data
        except Exception as e:
            print(f"Something went wrong while loading data: {e}")

    def save_to_csv(
        self, df: pd.DataFrame, keep_index: bool = False, file_name: str = ""
    ):
        try:
            if not file_name or df.empty:
                print(
                    "Please make sure your data is not empty and have passed the correct file name"
                )
            path = self.data_dir / f"{file_name}.csv"
            df.to_csv(path, index=keep_index)
            print(f"Successfully saved to file {file_name}")
        except Exception as e:
            print(f"Unable to save data to csv. Please try again. : {e}")
