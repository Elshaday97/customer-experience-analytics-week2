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
    "know",
    "go",
    "ahead",
    "step",
}

RAW_DATA_DIRS = "../data/raw"
PROCESSED_DATA_DIR = "../data/processed"

CUSOM_USERNAME_STOPWORDS = [
    "aadan",
    "abdulkadir",
    "abebaw",
    "abrahim",
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
    "mohammed",
    "riyad",
    "abaoli",
]

THEMES = {
    "Account Access & Login": [
        "login",
        "password",
        "pin",
        "otp",
        "access",
        "developer",
        "device",
    ],
    "Transactions": [
        "transfer",
        "send money",
        "transaction",
        "payment",
        "balance",
        "fail",
    ],
    "App Performance & Reliability": [
        "slow",
        "crash",
        "freeze",
        "error",
        "loading",
        "not working",
        "working",
        "not work",
        "bug",
        "fix",
        "worst",
        "take",
        "long",
        "functional",
        "poor",
        "connection",
        "usable",
        "unusable",
        "fail",
        "failure",
        "network",
        "load",
    ],
    "User Interface & Experience": [
        "easy",
        "friendly",
        "simple",
        "design",
        "interface",
        "navigation",
        "excellent",
        "worst",
        "good",
        "amazing",
        "exprience",
        "wow",
    ],
    "Customer Support & Feature Requests": [
        "support",
        "help",
        "service",
        "feature",
        "request",
        "customer",
    ],
}

RECOMMENDATIONS = {
    "App Performance & Reliability": [
        "Conduct a full performance audit: reduce app startup time, fix memory leaks, "
        "and optimize slow API calls.",
        "Implement crash reporting (e.g., Firebase Crashlytics) and prioritize top crash fixes.",
        "Introduce lazy loading and image compression to reduce load times on low-end devices.",
    ],
    "Account Access & Login": [
        "Simplify OTP flow: allow biometric fallback, resend OTP faster, and show clearer error messages.",
        "Add 'Remember this device' + trusted device management to reduce login friction.",
        "Support alternative login methods (e.g., email magic link, face ID).",
    ],
    "Transactions": [
        "Improve transaction failure handling: show exact error reason + one-tap retry button.",
        "Add transaction status tracker and push notifications for pending/delayed transfers.",
        "Increase daily transfer limits or make them user-configurable with risk-based approval.",
    ],
    "Customer Support & Feature Requests": [
        "Launch in-app chat support with 24/7 availability and conversation history.",
        "Create a public feature request portal (e.g., Canny or in-app voting) to capture user needs.",
        "Shorten support response time SLA to under 2 hours for critical issues.",
    ],
    "User Interface & Experience": [
        "Run usability testing sessions with real users and fix top 3 friction points.",
        "Redesign key flows (e.g., transfer, balance check) based on heatmaps and session recordings.",
        "Adopt consistent design system and improve dark mode support.",
    ],
}
