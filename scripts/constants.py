import re

# APP IDs
DASHEN_APP_ID = "com.dashen.dashensuperapp"
CBE_APP_ID = "com.combanketh.mobilebanking"
BOA_APP_ID = "com.boa.boaMobileBanking"

# BANKS
DASHEN = "dashen"
CBE = "cbe"
BOA = "boa"

# REVIEW KEYS
REVIEW_KEYS = ["reviewId", "content", "score", "at"]

# Helper to map raw keys to CSV column names
KEY_MAPPING = {
    "reviewId": "review_id",
    "content": "review",
    "score": "rating",
    "at": "date",
}

# Data Source
GOOGLE_PLAY = "google_play"


# Regex for any Ethiopic script character (Amharic)
ethiopic_pattern = re.compile(r"[\u1200-\u137F]")

# Scrapper Confif
SCRAPPER_CONFIG = {
    "count": 600,
    "country": "et",
    "lang": "en",
}

MAX_SCRAPPER_RETRIES = 3

NEGATION_WORDS = {
    "not",
    "no",
    "never",
    "n't",
    "dont",
    "don't",
    "doesn't",
    "doesnot",
    "won't",
}

CONTRACTIONS = {
    "don't": "do not",
    "doesn't": "does not",
    "didn't": "did not",
    "can't": "can not",
    "won't": "will not",
    "isn't": "is not",
    "aren't": "are not",
    "wasn't": "was not",
    "weren't": "were not",
    "shouldn't": "should not",
    "couldn't": "could not",
    "wouldn't": "would not",
    "haven't": "have not",
    "hasn't": "has not",
    "hadn't": "had not",
}


CUSTOM_PROJECT_STOPWORDS = {
    # domain-specific
    "bank",
    "banking",
    "app",
    "application",
    "mobile",
    "ethiopia",
    "boa",
    "cbe",
    "dashen",
    "super",
    # general filler
    "one",
    "ever",
    "ha",
    "ok",
    "wow",
    "time",
    "use",
    "using",
    "really",
    "keep",
    "even",
    "open",
    "make",
    "like",
    "thank",
    "doe",
    "wa",
    "know" "go",
}

RAW_DATA_DIR_FOR_NOTEBOOKS = "../data/raw"
PROCESSED_DATA_DIR_FOR_NOTEBOOKS = "../data/processed"

CUSOM_USERNAME_STOPWORDS = [
    "aadan",
    "abdulkadir",
    "abebaw",
    "asfaw",
    "asefa",
    "asledin",
    "axmed",
    "barkhadle",
    "abdrug",
    "bentahuuuu",
    "abdulakim",
    "abrahim",
    "elemoo",
    "damse",
    "obsa",
    "ibsa",
    "zenebe",
]
