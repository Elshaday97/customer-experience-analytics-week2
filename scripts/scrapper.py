from google_play_scraper import reviews as gps_reviews
from .constants import REVIEW_KEYS, SCRAPPER_CONFIG, MAX_SCRAPPER_RETRIES
from .decorator import retry


@retry(max_retries=MAX_SCRAPPER_RETRIES)
def data_scrapper(app_id: str):
    """
    Fetch reviews for an app_id using google_play_scraper.reviews.
    Returns a list of dicts containing only keys in REVIEW_KEYS.
    Retries on transient failure with exponential backoff.
    """

    try:
        review_list, _ = gps_reviews(app_id=app_id, **SCRAPPER_CONFIG)
        filtered_response = [{k: x.get(k) for k in REVIEW_KEYS} for x in review_list]
        return filtered_response
    except Exception as e:
        print(
            f"Something went wrong while trying to fetch {app_id}. Please try again. {e}"
        )
