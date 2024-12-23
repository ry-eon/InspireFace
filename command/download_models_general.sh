#!/bin/bash

# Target download folder
DOWNLOAD_DIR="test_res/pack"

# File URLs
URL1="https://github.com/HyperInspire/InspireFace/releases/download/v1.x/Megatron"
URL2="https://github.com/HyperInspire/InspireFace/releases/download/v1.x/Pikachu"
URL3="https://github.com/HyperInspire/InspireFace/releases/download/v1.x/Gundam_RV1109"
URL4="https://github.com/HyperInspire/InspireFace/releases/download/v1.x/Gundam_RV1106"

# Color codes
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Create download folder
mkdir -p "$DOWNLOAD_DIR"

# Function to download file
download_file() {
    local url=$1
    if command -v wget > /dev/null 2>&1; then
        echo "Using wget for download..."
        wget --no-check-certificate -L -P "$DOWNLOAD_DIR" "$url"
    else
        echo "wget not found, using curl instead..."
        cd "$DOWNLOAD_DIR"
        curl -L -O "$url"
        cd - > /dev/null
    fi
}

# Function to print file path
print_file_path() {
    local filename=$1
    echo -e "File downloaded to: ${YELLOW}$(cd "$DOWNLOAD_DIR" && pwd)/${filename}${NC}"
}

# Check if argument is provided
if [ $# -eq 0 ]; then
    echo "No argument provided, downloading all files..."
    download_file "$URL1"
    download_file "$URL2"
    download_file "$URL3"
    download_file "$URL4"
    # Check all files
    if [ -f "$DOWNLOAD_DIR/Megatron" ] && [ -f "$DOWNLOAD_DIR/Pikachu" ] && \
       [ -f "$DOWNLOAD_DIR/Gundam_RV1109" ] && [ -f "$DOWNLOAD_DIR/Gundam_RV1106" ]; then
        echo "All downloads completed successfully!"
        print_file_path "Megatron"
        print_file_path "Pikachu"
        print_file_path "Gundam_RV1109"
        print_file_path "Gundam_RV1106"
    else
        echo "Download failed!"
        exit 1
    fi
else
    case "$1" in
        "Megatron"|"Pikachu"|"Gundam_RV1109"|"Gundam_RV1106")
            echo "Downloading $1..."
            case "$1" in
                "Megatron") url="$URL1" ;;
                "Pikachu") url="$URL2" ;;
                "Gundam_RV1109") url="$URL3" ;;
                "Gundam_RV1106") url="$URL4" ;;
            esac
            download_file "$url"
            # Check file
            if [ -f "$DOWNLOAD_DIR/$1" ]; then
                echo "$1 download completed successfully!"
                print_file_path "$1"
            else
                echo "$1 download failed!"
                exit 1
            fi
            ;;
        *)
            echo "Invalid argument. Please use 'Megatron', 'Pikachu', 'Gundam_RV1109' or 'Gundam_RV1106'"
            exit 1
            ;;
    esac
fi