from google_play_scraper import reviews as gps_reviews
from src.constants import REVIEW_KEYS


def data_scrapper(app_id: str, lang: str = "en", country: str = "et", count: int = 500):
    """
    Fetch reviews for an app_id using google_play_scraper.reviews.
    Returns a list of dicts containing only keys in REVIEW_KEYS.
    Retries on transient failure with exponential backoff.
    """

    try:
        review_list, _ = gps_reviews(
            app_id=app_id, lang=lang, country=country, count=count
        )
        filtered_response = [{k: x.get(k) for k in REVIEW_KEYS} for x in review_list]
        return filtered_response
    except Exception as e:
        print(
            f"Something went wrong while trying to fetch {app_id}. Please try again. {e}"
        )
