import pandas as pd
from sklearn.feature_extraction.text import TfidfVectorizer
from scripts.constants import CUSTOM_PROJECT_STOPWORDS, CUSOM_USERNAME_STOPWORDS
from scripts.stop_words import ENGLISH_STOP_WORDS
from sklearn.cluster import KMeans


class KeywordExtractor:

    def extract_keywords_tfidf(self, reviews: pd.Series, top_k=60):
        vectorizer = TfidfVectorizer(
            ngram_range=(2, 3),
            stop_words=CUSOM_USERNAME_STOPWORDS
            + list(CUSTOM_PROJECT_STOPWORDS)
            + list(ENGLISH_STOP_WORDS),
            min_df=2,
        )
        tfidf_matrix = vectorizer.fit_transform(list(reviews))
        feature_names = vectorizer.get_feature_names_out()
        avg_scores = tfidf_matrix.mean(axis=0).A1
        sorted_indices = avg_scores.argsort()[::-1]
        top_keywords = [
            (feature_names[idx], avg_scores[idx]) for idx in sorted_indices[:top_k]
        ]
        return top_keywords
