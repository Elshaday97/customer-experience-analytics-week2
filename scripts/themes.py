from typing import Dict
import pandas as pd


def theme_stats_for_bank(df_bank):
    # returns DataFrame with theme, count, mean_vader, mean_textblob, avg_rating
    g = (
        df_bank.groupby("theme")
        .agg(
            count=("review_id", "size"),
            mean_vader=("vader_score", "mean"),
            mean_textblob=("textblob_score", "mean"),
            avg_rating=("rating", "mean"),
        )
        .reset_index()
    )
    # fill NaNs
    g["mean_vader"] = g["mean_vader"].fillna(0.0)
    g["mean_textblob"] = g["mean_textblob"].fillna(0.0)
    g = g.sort_values("count", ascending=False)
    return g


def pick_drivers_and_painpoints(theme_df, top_n=3, min_count=10):
    # Only consider themes with at least min_count mentions
    cand = theme_df[theme_df["count"] >= min_count].copy()
    if cand.empty:
        return [], []
    # Drivers: top by (count * mean_vader) weight
    cand["driver_score"] = cand["count"] * cand["mean_vader"]
    drivers = cand.sort_values("driver_score", ascending=False).head(top_n)
    # Pain points: top by (count * -mean_vader) weight (high count and low sentiment)
    cand["pain_score"] = cand["count"] * (-cand["mean_vader"])
    pain_points = cand.sort_values("pain_score", ascending=False).head(top_n)
    return drivers, pain_points


def analyze_bank_themes(df_bank: pd.DataFrame) -> Dict:
    stats = theme_stats_for_bank(df_bank)
    drivers, painpoints = pick_drivers_and_painpoints(stats, top_n=5, min_count=10)

    return {
        "total_reviews": len(df_bank),
        "theme_stats": stats,
        "drivers": drivers,
        "pain_points": painpoints,
    }
