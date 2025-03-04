#!/bin/bash

# Check if LanguageTool directory exists
if [ -d "languagetool/LanguageTool-6.5" ]; then
    echo "LanguageTool directory exists."
else
    echo "LanguageTool directory does not exist."
    exit 1
fi

# Check if LanguageTool server JAR file exists
if [ -f "languagetool/LanguageTool-6.5/languagetool-server.jar" ]; then
    echo "LanguageTool server JAR file exists."
else
    echo "LanguageTool server JAR file does not exist."
    exit 1
fi

# Check if English (US) ngrams directory exists
if [ -d "languagetool/LanguageTool-6.5/ngrams" ]; then
    echo "English (US) ngrams directory exists."
else
    echo "English (US) ngrams directory does not exist."
    exit 1
fi

echo "All files and directories are correctly set up."