#!/bin/bash

# Define the name of your Crystal source file (replace with your actual filename)
SOURCE_FILE="src/hex.cr"

# Check if the Crystal compiler is installed
if ! command -v crystal &> /dev/null; then
    echo "Crystal is not installed. Please install Crystal before running this script."
    exit 1
fi

# Check if the source file exists
if [ ! -f "$SOURCE_FILE" ]; then
    echo "Source file '$SOURCE_FILE' not found. Please specify the correct file path."
    exit 1
fi

# Build the Crystal program
mkdir -p build
crystal build "$SOURCE_FILE" -o build/hex

# Check if the build was successful
if [ $? -eq 0 ]; then
    echo "Build successful. Running the program..."
    ./build/hex
else
    echo "Build failed."
fi
