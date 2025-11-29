import pandas as pd


class SentimentAnalyzer:
    def __init__(self, load_bert=False):
        """
        load_bert=False prevents loading a heavy model unless needed.
        """
        self.clean_review_col_key = "clean_review"

        self._vader = None
        self._textblob = None
        self._bert = None

        self._bert_model_name = "distilbert-base-uncased-finetuned-sst-2-english"

        self._load_vader()
        self._load_textblob()

        if load_bert:
            self._load_transformer()

    # -------------------------------------------------
    # Loader helpers (Lazy Loading Style)
    # -------------------------------------------------
    def _load_vader(self):
        from nltk.sentiment.vader import SentimentIntensityAnalyzer

        self._vader = SentimentIntensityAnalyzer()

    def _load_textblob(self):
        from textblob import TextBlob

        self._textblob = TextBlob

    def _load_transformer(self):
        from transformers import pipeline

        self._bert = pipeline(
            "sentiment-analysis",
            model=self._bert_model_name,
        )

    # -------------------------------------------------
    # Utility
    # -------------------------------------------------

    @staticmethod
    def _safe_text(text):
        if not isinstance(text, str):
            return ""
        return text

    @staticmethod
    def _label_from_score(score):
        if score > 0.05:
            return "positive"
        elif score < -0.05:
            return "negative"
        return "neutral"

    # -------------------------
    # Methods
    # -------------------------

    def run_vader(self, reviews: pd.Series):
        scores = reviews.apply(
            lambda text: self._vader.polarity_scores(self._safe_text(text))["compound"]
        )
        labels = scores.apply(self._label_from_score)
        return scores, labels

    def run_textblob(self, reviews: pd.Series):
        scores = reviews.apply(
            lambda text: self._textblob(self._safe_text(text)).sentiment.polarity
        )
        labels = scores.apply(self._label_from_score)
        return scores, labels

    def run_bert(self, reviews: pd.Series):
        if self._bert is None:
            raise RuntimeError("BERT model not loaded. Use load_bert=True.")

        output = reviews.apply(lambda text: self._bert(self._safe_text(text))[0])

        scores = output.apply(lambda x: x["score"])
        labels = output.apply(lambda x: x["label"].lower())

        return scores, labels

    # -------------------------
    # Combined Runner
    # -------------------------

    def run_all(self, reviews: pd.Series):
        df = pd.DataFrame()

        # VADER
        df["vader_score"], df["vader_label"] = self.run_vader(reviews)

        # TextBlob
        df["textblob_score"], df["textblob_label"] = self.run_textblob(reviews)

        # BERT
        # if self._bert is not None:
        #     df["bert_score"], df["bert_label"] = self.run_bert(reviews)

        return df
