import re
from nltk.downloader import download
from nltk.stem import WordNetLemmatizer
from nltk.corpus import stopwords
from .constants import NEGATION_WORDS

download("wordnet")
download("stopwords")

ENGLISH_STOP_WORDS = set(stopwords.words("english"))
CUSTOM_STOPWORDS = set(ENGLISH_STOP_WORDS) - NEGATION_WORDS

lemmatizer = WordNetLemmatizer()


def clean_text(text: str) -> str:
    text = str(text).lower()
    text = re.sub(r"http\S+", "", text)
    text = re.sub(r"[^a-z\s]", " ", text)
    text = re.sub(r"\s+", " ", text).strip()
    text = re.sub(r"[^\w\s😊😂😍😭😡]", " ", text)  # Preserve common emojis

    words = text.split()
    words = [lemmatizer.lemmatize(w) for w in words]
    words = [w for w in words if w not in CUSTOM_STOPWORDS]
    text = " ".join(words)

    return text
