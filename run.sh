#!/bin/bash

# Change directory to LanguageTool
cd languagetool/LanguageTool-6.5

# Start LanguageTool server with US English ngrams directory
java -cp languagetool-server.jar org.languagetool.server.HTTPServer --port 8080 --public --languageModel ngrams