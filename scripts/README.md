# Scripts Directory

This directory contains utility scripts for data scraping, error handling, parsing, and text cleaning. These are imported as modules in notebooks and src/ code.

## Scripts Overview

### 1\. `scrapper.py`

- **Purpose**: Fetches reviews from Google Play Store using the google-play-scraper library.
- **Key Functions**:
  - `data_scrapper(app_id: str)`: Scrapes reviews for a given app ID. Returns a list of filtered review dictionaries (keys defined in constants.REVIEW_KEYS).
  - Uses` @retry` decorator for handling transient errors with exponential backoff.
  - Configurable via constants.SCRAPPER_CONFIG (e.g., review count, country='et', lang='en').
- **Dependencies**: `google-play-scraper`, `retry` from `decorator.py`.
- **Usage Example**:

  Python

      from scripts.scrapper import data_scrapper
      reviews = data_scrapper("com.dashen.dashensuperapp")

### 2\. `decorator.py`

- **Purpose**: Provides a retry mechanism for functions prone to transient failures (e.g., network issues during scraping).
- **Key Functions**:
  - `retry(max_retries=3, backoff=2, delay=1)`: Decorator that retries the wrapped function with exponential backoff on exceptions.
- **Usage**: Applied as` @retry` to functions like data_scrapper.
- **Dependencies**: `time`, `functools`.

### 3\. `parser.py`

- **Purpose**: Parses raw scraped reviews into a structured Pandas DataFrame.
- **Key Functions**:
  - reviews_parser(raw_reviews_dict: Dict\[str, List\[Dict\]\]) -> pd.DataFrame: Takes a dict of bank-to-reviews and returns a DataFrame with columns like 'review_id', 'review', 'rating', 'date', 'bank', 'source'.
  - Uses `constants.KEY_MAPPING` for column renaming and adds 'bank' and 'source' ('google_play').
- **Dependencies**: `pandas`, `typing`.
- **Usage Example**:

  Python

      from scripts.parser import reviews_parser
      df = reviews_parser({"dashen": raw_reviews_list})

### 4\. `text_cleaner.py`

- **Purpose**: Cleans and normalizes review text for analysis.
- **Key Functions**:
  - `expand_contractions(text: str)`: Replaces contractions (e.g., "don't" -> "do not") using constants.CONTRACTIONS.
  - `clean_text(text: str)` -> str: Lowercases, removes URLs/non-alphabetic chars, expands contractions, lemmatizes, removes stopwords (custom set excluding negations).
- **Dependencies**: `re`, `nltk` (WordNetLemmatizer, stopwords).
- **Usage Example**:

  Python

      from scripts.text_cleaner import clean_text
      cleaned = clean_text("This app isn't working well.")

- **Notes**: Downloads NLTK resources on import if needed. Custom stopwords from constants.

### Additional Files

- **`constants.py`**: Defines project-wide constants (e.g., app IDs, review keys, Ethiopic regex, custom stopwords, contractions). Imported across scripts and src.

## Notes

- These scripts are designed to be lightweight and reusable.
- Error handling is minimal; logs issues to stdout.
- Ensure NLTK downloads are complete for text_cleaner.py.
