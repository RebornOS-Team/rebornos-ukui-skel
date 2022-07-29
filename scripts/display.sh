#! /usr/bin/env sh

SCRIPT_DIRECTORY="$(dirname -- "$(readlink -f -- "$0")")"
PROJECT_DIRECTORY="$(dirname -- "$SCRIPT_DIRECTORY")"

KEYFILE_DIRECTORY="$PROJECT_DIRECTORY/scripts/keyfiles"
OUTPUT_FILE="$PROJECT_DIRECTORY/src/dconf/user"

XDG_CONFIG_HOME="$PROJECT_DIRECTORY/src" dconf dump /


