from sklearn.feature_extraction.text import TfidfVectorizer
from sklearn.cluster import KMeans
from collections import Counter


class ThemeClusterer:
    DEFAULT_LABELS = {
        "Account Access & Login": [
            "login",
            "password",
            "pin",
            "otp",
            "access",
            "developer",
            "device",
        ],
        "Transactions": [
            "transfer",
            "send",
            "money",
            "transaction",
            "fail",
            "payment",
            "balance",
        ],
        "App Performance & Reliability": [
            "slow",
            "crash",
            "freeze",
            "error",
            "loading",
            "not",
            "work",
        ],
        "User Interface & Experience": [
            "easy",
            "friendly",
            "simple",
            "design",
            "interface",
            "navigation",
        ],
        "Customer Support & Feature Requests": [
            "support",
            "help",
            "service",
            "feature",
            "request",
            "customer",
        ],
    }

    def __init__(self, n_clusters=5, theme_labels=None):
        self.n_clusters = n_clusters
        self.theme_labels = theme_labels or self.DEFAULT_LABELS

    def cluster(self, keywords):
        vectorizer = TfidfVectorizer()
        X = vectorizer.fit_transform(keywords)
        kmeans = KMeans(n_clusters=self.n_clusters, random_state=42)
        labels = kmeans.fit_predict(X)

        clusters = {}
        for kw, label in zip(keywords, labels):
            clusters.setdefault(label, []).append(kw)
        return clusters

    def assign_labels(self, clusters):
        labeled_clusters = {}
        for label, words in clusters.items():
            word_counts = Counter()
            for theme, indicators in self.theme_labels.items():
                matches = sum(any(ind in w for w in words) for ind in indicators)
                word_counts[theme] = matches
            # Pick theme with most matches
            best_theme = word_counts.most_common(1)[0][0]
            labeled_clusters[best_theme] = words
        return labeled_clusters
