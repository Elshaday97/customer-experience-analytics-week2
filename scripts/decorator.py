import time
from functools import wraps


def retry(max_retries=3, backoff=2, delay=1):
    """
    Decorator for retrying a function with exponential backoff.
    """

    def wrapper(func):
        @wraps(func)
        def inner(*args, **kwargs):
            retries = 0
            wait = delay

            while retries < max_retries:
                try:
                    return func(*args, **kwargs)
                except Exception as e:
                    retries += 1
                    print(f"Error: {e} (retry {retries}/{max_retries})")

                    if retries == max_retries:
                        print("Max retries reached.")
                        return None

                    time.sleep(wait)
                    wait *= backoff

        return inner

    return wrapper
