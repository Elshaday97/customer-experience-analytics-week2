# Notebooks

This directory contains Jupyter notebooks used for interactive analysis, testing, and visualization.

## Notebooks

### `exploratory_scrapping.ipynb`

This notebook performs:

- Scraping using the DataManager
- Parsing and cleaning scrapped review data
- Saving clean CSV to the `/data/processed` directory
- Visualizes Average Rating per Bank
- Visualized Time Series Analysis of Number of Reviews over Months

### `sentiment_analysis.ipynb`

Purpose: Performs sentiment analysis on cleaned reviews using VADER and TextBlob, with comparisons across banks.

- Load dependencies: DataManager, SentimentAnalyzer, tabulate, pandas, matplotlib.
- Load processed data using DataManager.load_data().
- Run sentiment analysis:
- Compute VADER and TextBlob scores/labels on cleaned reviews.
- Generate summary tables: Average sentiment scores per bank, distribution of labels.
- Focus on 1-star reviews: Average scores for low-rated reviews per bank.

- Outputs: Prints tabulated results (e.g., average scores) and DataFrame previews.
