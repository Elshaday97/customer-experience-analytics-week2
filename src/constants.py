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


# Regex for any Ethiopic script character (Amharic)
ethiopic_pattern = re.compile(r"[\u1200-\u137F]")
