# SRC

The `src` directory contains all core reusable modules for scraping, cleaning, and managing application data.  
These modules form the backbone of the data pipeline.

## Structure

```txt
├── src/
│   ├── constants.py              # All constant values (app IDs, keys)
│   ├── data/
│   │   └── manager.py            # DataManager class for scraping/loading/saving
│   ├── preprocessing/
│       └── cleaner.py            # Text cleaning methods
```

## Modules

### `constants.py`

Holds:

- App IDs for Dashen, CBE, and BOA
- Bank identifiers
- Review keys to extract
- Key mappings for standardized schema

Centralizes values for maintainability.

### `data/manager.py` — DataManager Class

Provides a unified interface to:

- Scrape reviews
- Parse raw review data
- Save processed CSVs
- Load datasets from disk

Typical usage:

```python
from src.data.manager import DataManager

dm = DataManager()
dm.scrape_reviews()
df = dm.load_data()
```

### `preprocessing/cleaner.py` — DataCleaner Class

Provides a unified interface to:

- Remove missing values
- Normalize dates
- Drop Non English reviews

Typical usage:

```python
from src.preprocessing import DataCleaner

cleaner = DataCleaner(df)
cleaner.clean_df()
cleaned_df = cleaner.get_df()
```
