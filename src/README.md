# Src Directory

This directory contains the core Python modules for data management, cleaning, and sentiment analysis. These classes are used in notebooks for structured workflows.

## Modules Overview

### 1\. manager.py

#

- **Purpose**: Manages data scraping, cleaning, saving, and loading.
- **Key Class**: DataManager
  - Initializes paths for raw/processed data and bank app IDs.
  - scrape_reviews() -> pd.DataFrame: Scrapes reviews for all banks, parses, cleans, and saves to CSV.
  - load_data() -> pd.DataFrame: Loads processed CSV with date parsing.
  - save_to_csv(df, ...): Saves DataFrames to raw or processed directories.
- **Dependencies**: pathlib, pandas, scripts (scrapper, parser), src.preprocessing.DataCleaner.
- **Usage Example**:

  Python

      from src.data import DataManager
      dm = DataManager()
      dm.scrape_reviews()
      df = dm.load_data()

### 2\. cleaner.py

#

- **Purpose**: Cleans the DataFrame by removing invalid data and normalizing text.
- **Key Class**: DataCleaner(df: pd.DataFrame)
  - remove_missing_values_and_duplicates(): Drops duplicates/NaNs.
  - normalize_dates(): Converts dates to datetime, normalizes, and sorts.
  - clean_reviews(): Filters out Ethiopic reviews, applies clean_text to create 'clean_review' column.
  - clean_df(): Runs all cleaning steps.
  - get_df() -> pd.DataFrame: Returns cleaned DataFrame.
- **Dependencies**: pandas, scripts (constants, text_cleaner).
- **Usage Example**:

  Python

      from src.preprocessing import DataCleaner
      cleaner = DataCleaner(raw_df)
      cleaner.clean_df()
      cleaned_df = cleaner.get_df()

### 3\. sentiment.py

#

- **Purpose**: Analyzes sentiment in reviews using multiple models.
- **Key Class**: SentimentAnalyzer(load_bert=False)
  - Lazy-loads models: VADER, TextBlob, optionally BERT (via transformers).
  - run_vader(reviews: pd.Series), run_textblob(...), run_bert(...): Return scores and labels ('positive', 'negative', 'neutral').
  - run_all(reviews: pd.Series) -> pd.DataFrame: Runs VADER and TextBlob (BERT if loaded) and combines results.
- **Dependencies**: pandas, nltk.sentiment.vader, textblob, optionally transformers.pipeline.
- **Usage Example**:

  Python

      from src.analysis import SentimentAnalyzer
      analyzer = SentimentAnalyzer(load_bert=True)  # Optional
      results_df = analyzer.run_all(df['clean_review'])

## Notes

- Modules are organized into subpackages (e.g., src.data, src.preprocessing, src.analysis).
- Use relative imports within src.
- BERT loading is optional to avoid heavy dependencies unless needed.
- Outputs are Pandas Series/DataFrames for easy integration with notebooks.
