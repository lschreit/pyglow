import os
import sys

def remove_non_ascii(file_path):
    with open(file_path, 'r', encoding='utf-8', errors='ignore') as file:
        content = file.read()
    cleaned_content = ''.join(c for c in content if ord(c) < 128)
    with open(file_path, 'w', encoding='utf-8') as file:
        file.write(cleaned_content)

def main():
    if len(sys.argv) != 2:
        print("Usage: python remove_non_ascii.py <directory>")
        sys.exit(1)

    directory = sys.argv[1]
    for root, _, files in os.walk(directory):
        for file in files:
            if file.endswith(('.f', '.f90', '.for')):
                file_path = os.path.join(root, file)
                remove_non_ascii(file_path)

if __name__ == "__main__":
    main()
