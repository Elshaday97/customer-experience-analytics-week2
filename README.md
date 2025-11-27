# Customer Experience Analytics for Fintech Apps

### Week 2 — Data Collection, NLP Analysis, and Database Engineering

This repository contains the implementation of **Week 2** of the 10 Academy Data Science & Machine Learning Program.  
The objective is to collect, process, analyze, and store customer reviews from the **Google Play Store** for three major banks:

- Commercial Bank of Ethiopia (CBE)
- Bank of Abyssinia (BOA)
- Dashen Bank

The goal is to derive **customer experience insights**, identify **pain points**, extract **themes**, and prepare the data for storage in a PostgreSQL database.

---

## Project Objectives

1. **Scrape 400+ reviews per bank** (minimum 1200 total) using Google Play Store.
2. **Preprocess** reviews (cleaning, normalization, date handling).
3. **Sentiment Analysis** using transformer models.
4. **Keyword & Theme Extraction** using NLP.
5. **Store results** into a PostgreSQL database.
6. **Derive insights & recommendations** with visualizations.
7. **Produce deliverables**:
   - Interim Report
   - Final 10-page Data Analysis Report
   - Clean GitHub repository

## Repository Structure

```txt
.
├── data/
│   ├── reviews_data.csv           # Scraped and cleaned reviews, ignored by git
│
├── notebooks/
│   ├── collect_data.ipynb        # Notebook for scraping and initial exploration
│
├── scripts/
│   ├── scrapper.py               # Google Play scraping logic
│   ├── parser.py                 # Parser for normalizing & flattening review data
│
├── src/
│   ├── constants.py              # All constant values (app IDs, keys)
│   ├── data/
│   │   └── manager.py            # DataManager class for scraping/loading/saving
│   ├── preprocessing/
│       └── cleaner.py            # Text cleaning methods
│
└── README.md
```

## Installation

```bash
# Clone and enter
git clone git@github.com:Elshaday97/customer-experience-analytics-week2.git
cd customer-experience-analytics-week2

# Create and activate virtual environment
python -m venv venv
source venv/bin/activate    # Linux/Mac
venv\Scripts\activate     # Windows

# Install dependencies
pip install -r requirements.txt

# Launch Jupyter
jupyter lab
```

## Tech Stack

- Python 3.10+
- Pandas
- google-play-scraper
