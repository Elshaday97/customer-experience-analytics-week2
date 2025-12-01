from sklearn.feature_extraction.text import TfidfVectorizer
from sklearn.cluster import KMeans
from collections import Counter
from scripts.constants import THEMES


class ThemeClusterer:
    """
    Takes extracted keywords (from TF-IDF) and:
    1. Clusters them into k groups
    2. Assigns a high-level theme label to each cluster
    """

    def __init__(self, n_clusters=5, theme_labels=None):
        self.n_clusters = n_clusters
        self.theme_labels = theme_labels or THEMES

    # ----------------------------------------------------
    # 1. Cluster keywords
    # ----------------------------------------------------
    def cluster(self, keywords):
        """
        Clusters keywords into k groups using TF-IDF + KMeans.
        """
        if len(keywords) < self.n_clusters:
            return {0: keywords}

        vectorizer = TfidfVectorizer()
        X = vectorizer.fit_transform(keywords)

        kmeans = KMeans(n_clusters=self.n_clusters, random_state=42, n_init="auto")
        labels = kmeans.fit_predict(X)

        clusters = {}
        for kw, label in zip(keywords, labels):
            clusters.setdefault(label, []).append(kw)

        return clusters

    # ----------------------------------------------------
    # 2. Assign human-readable theme names
    # ----------------------------------------------------
    def assign_labels(self, clusters):
        """
        Assign theme names to each cluster by matching indicator keywords.
        """
        labeled_clusters = {}

        for cluster_id, words in clusters.items():

            theme_scores = Counter()

            for theme, indicators in self.theme_labels.items():
                score = 0
                for ind in indicators:
                    for w in words:
                        if ind in w.lower():
                            score += 1
                theme_scores[theme] = score

            best_theme, best_score = theme_scores.most_common(1)[0]

            if best_score == 0:
                best_theme = f"Other {cluster_id}"

            labeled_clusters[best_theme] = words

        return labeled_clusters
