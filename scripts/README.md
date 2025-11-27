# Scripts

This folder contains procedural scripts responsible for scraping and parsing Google Play Store reviews

## Files

### `scrapper.py`

Handles:

- Fetching raw reviews using `google-play-scraper`
- Filtering review fields
- Returning raw structured dictionaries

### `parser.py`

Handles:

- Normalizing review dictionaries into a consistent schema
- Renaming keys (e.g., `content` → `review`)
- Adding bank and source metadata
- Converting raw structures into a clean pandas DataFrame
