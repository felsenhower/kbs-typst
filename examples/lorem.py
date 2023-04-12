#!/usr/bin/env python3

from math import ceil

def lorem(words: int) -> str:
    lorem_ipsum = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
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

def main() -> None:
    print(lorem(7))

if __name__ == "__main__":
    main()
