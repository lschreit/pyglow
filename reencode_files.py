import os
import sys
import chardet

def get_file_encoding(file_path):
    with open(file_path, 'rb') as file:
        raw_data = file.read()
        result = chardet.detect(raw_data)
        encoding = result['encoding']
        return encoding

def reencode_file(file_path):
    try:
        encoding = get_file_encoding(file_path)
        with open(file_path, 'r', encoding=encoding, errors='replace') as file:
            content = file.read()
        with open(file_path, 'w', encoding='utf-8') as file:
            file.write(content)
        print(f"Successfully re-encoded {file_path}")
    except (UnicodeDecodeError, TypeError) as e:
        print(f"Failed to re-encode {file_path}: {e}")

def reencode_directory(directory):
    for filename in os.listdir(directory):
        if filename.endswith(".f90"):
            file_path = os.path.join(directory, filename)
            if os.path.isfile(file_path):
                reencode_file(file_path)

if __name__ == '__main__':
    directory = sys.argv[1]
    reencode_directory(directory)