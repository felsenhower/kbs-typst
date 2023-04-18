from math import ceil

def lorem(words: int) -> str:
    lorem_ipsum = "Lorem ipsum [...]"
    arr = lorem_ipsum.split(" ")
    n = ceil(words / len(arr))
    arr = n * arr
    arr = arr[0:words]
    text = " ".join(arr)
    if text.endswith(","):
        text = text[:-1]
    if not text.endswith("."):
        text += "."
    return text

