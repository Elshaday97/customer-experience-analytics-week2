from typing import Dict, List
import pandas as pd
from src.constants import KEY_MAPPING, GOOGLE_PLAY


def reviews_parser(raw_reviews_dict: Dict[str, List[Dict]]) -> pd.DataFrame:
    """
    raw_reviews_dict: { bank_name: [ {raw_review_dict}, ... ], ... }
    Returns a pandas DataFrame with columns:
      ['review_id','review','rating','date','bank', 'source]
    """
    try:
        rows = []
        for bank, reviews_list in raw_reviews_dict.items():
            for review_dict in reviews_list:
                row = {
                    new_key: review_dict.get(old_key)
                    for old_key, new_key in KEY_MAPPING.items()
                }
                row["bank"] = bank
                row["source"] = GOOGLE_PLAY
                rows.append(row)

        # Return empty dataframe if no rows exist
        if not rows:
            default_cols = list(KEY_MAPPING.values()) + ["bank"]
            return pd.DataFrame(columns=default_cols)
        return pd.DataFrame(rows)

    except Exception as e:
        print(f"Something went wrong while parsing reviews: {e}")
