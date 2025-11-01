import sys
from collections import Counter

def count_vowels(file_path):
    vowels = "aeiouAEIOU"
    with open(file_path, 'r') as f:
        text = f.read()
    counts = Counter([c for c in text if c in vowels])
    return counts

if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("Usage: python frequency.py <filename>")
        sys.exit(1)
    file_path = sys.argv[1]
    try:
        result = count_vowels(file_path)
        print("Vowel frequency:", result)
    except FileNotFoundError:
        print("File not found.")