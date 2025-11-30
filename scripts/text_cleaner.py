import re
from nltk.downloader import download
from nltk.stem import WordNetLemmatizer
from .constants import NEGATION_WORDS, CUSTOM_PROJECT_STOPWORDS, CONTRACTIONS
from .stop_words import ENGLISH_STOP_WORDS

download("wordnet")

CUSTOM_STOPWORDS = (ENGLISH_STOP_WORDS | CUSTOM_PROJECT_STOPWORDS) - NEGATION_WORDS

lemmatizer = WordNetLemmatizer()


def expand_contractions(text):
    for c, expanded in CONTRACTIONS.items():
        text = text.replace(c, expanded)
    return text


def clean_text(text: str) -> str:
    text = str(text).lower()
    text = expand_contractions(text)
    text = re.sub(r"http\S+", "", text)
    text = re.sub(r"[^a-z😊😂😍😭😡]+", " ", text)
    text = re.sub(r"\s+", " ", text).strip()

    words = text.split()
    words = [lemmatizer.lemmatize(w) for w in words]
    words = [w for w in words if w not in CUSTOM_STOPWORDS]
    text = " ".join(words)

    return text
