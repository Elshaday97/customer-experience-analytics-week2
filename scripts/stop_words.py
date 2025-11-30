# text_utils/stopwords.py

import nltk
from nltk.corpus import stopwords


def ensure_nltk_data():
    try:
        nltk.data.find("corpora/stopwords")
    except LookupError:
        nltk.download("stopwords")


ensure_nltk_data()

ENGLISH_STOP_WORDS = set(stopwords.words("english"))
