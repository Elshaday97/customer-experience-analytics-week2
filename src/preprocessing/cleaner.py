import pandas as pd
from scripts.constants import ethiopic_pattern
from scripts import clean_text


class DataCleaner:
    def __init__(self, df: pd.DataFrame):
        self.df = df
        self.date_column_key = "date"
        self.review_col_key = "review"
        self.clean_review_col_key = "clean_review"

    def remove_missing_values_and_duplicates(self):
        if self.df.empty:
            raise ValueError("DataFrame is empty — cannot clean.")

        before = len(self.df)
        self.df = self.df.drop_duplicates().dropna()
        after = len(self.df)
        print(f"Removed {before - after} rows with missing and duplicate values.")
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

        self.df[self.clean_review_col_key] = self.df[self.review_col_key].map(
            clean_text
        )
        print(f"Saved cleaned review under {self.clean_review_col_key} column")

        return True

    def get_df(self):
        return self.df

    def clean_df(self):
        self.remove_missing_values_and_duplicates()
        self.clean_reviews()
        self.normalize_dates()
        return True
