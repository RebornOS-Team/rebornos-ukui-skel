#! /usr/bin/env sh

SCRIPT_DIRECTORY="$(dirname -- "$(readlink -f -- "$0")")"
PROJECT_DIRECTORY="$(dirname -- "$SCRIPT_DIRECTORY")"

KEYFILE_DIRECTORY="$PROJECT_DIRECTORY/scripts/keyfiles"
OUTPUT_FILE="$PROJECT_DIRECTORY/src/dconf/user"

dconf compile "$OUTPUT_FILE" "$KEYFILE_DIRECTORY"

