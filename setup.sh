#!/bin/bash

# Download LanguageTool
wget https://languagetool.org/download/LanguageTool-stable.zip -O languagetool.zip

# Extract LanguageTool
unzip languagetool.zip -d languagetool

# Verify the download and extraction of LanguageTool
if [ -f "languagetool/LanguageTool-6.5/languagetool-server.jar" ]; then
    echo "LanguageTool downloaded and extracted successfully."
else
    echo "LanguageTool download or extraction failed."
    exit 1
fi

# Download English (US) ngram data
cd languagetool/LanguageTool-6.5
wget https://languagetool.org/download/ngram-data/ngrams-en-20150817.zip -O ngrams-en.zip

# Verify the download of the ngrams file
if [ -f "ngrams-en.zip" ]; then
    echo "ngrams-en.zip downloaded successfully."
else
    echo "ngrams-en.zip download failed."
    exit 1
fi

# Extract English (US) ngram data
unzip ngrams-en.zip -d ngrams

# Verify the dictionary extraction
if [ -d "ngrams/en" ] && [ -d "ngrams/en/1grams" ] && [ -d "ngrams/en/2grams" ] && [ -d "ngrams/en/3grams" ]; then
    echo "English (US) dictionary downloaded and extracted successfully."
else
    echo "English (US) dictionary download or extraction failed."
    exit 1
fi