import pandas as pd
from tabulate import tabulate
from ..constants import ethiopic_pattern, KEY_MAPPING


class DataCleaner:
    def __init__(self, df: pd.DataFrame):
        self.df = df
        self.date_column_key = "date"
        self.review_col_key = "review"

    def remove_missing_values(self):
        if self.df.empty:
            raise ValueError("DataFrame is empty — cannot clean.")

        before = len(self.df)
        self.df = self.df.dropna()
        after = len(self.df)

        print(f"Removed {before - after} rows with missing values.")
        return True

    def normalize_dates(self):
        if self.df.empty or self.date_column_key not in self.df.columns:
            raise KeyError("Date column not found in DataFrame.")

        self.df[self.date_column_key] = pd.to_datetime(
            self.df[self.date_column_key],
            errors="coerce",
        )
        self.df[self.date_column_key] = self.df[self.date_column_key].dt.normalize()
        self.df = self.df.sort_values(by=self.date_column_key)
        return True

    def clean_reviews(self):
        if self.review_col_key not in self.df.columns:
            raise KeyError("Review column not found in DataFrame.")

        before = len(self.df)
        self.df = self.df[
            ~self.df[self.review_col_key].str.contains(
                ethiopic_pattern, regex=True, na=False
            )
        ]
        after = len(self.df)

        print(f"Removed {before - after} rows with Ethiopic reviews.")
        return True

    def get_df(self):
        return self.df

    def clean_df(self):
        self.remove_missing_values()
        self.clean_reviews()
        self.normalize_dates()
        return True
