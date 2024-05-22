#!/bin/bash

# Set source and destination server details
SOURCE_SERVER="user@sourceserver.com"
SOURCE_FOLDER="/path/to/sourceFolder"
DEST_SERVER="user@destinationserver.com"
DEST_FOLDER="/path/to/destinationFolder"

# Get the list of files in the source folder
FILES_IN_SOURCE=$(ls -rt "$SOURCE_FOLDER" | tail -n 5 | awk '{print $NF}')

# Loop through each file in the source folder
for FILE in $FILES_IN_SOURCE; do
    # Construct the full path for the file on source and destination
    SOURCE_FILE_PATH="${SOURCE_FOLDER}/${FILE}"
    DEST_FILE_PATH="${DEST_FOLDER}/${FILE}"

    # Check if the file exists in the destination folder
    if ! ssh "${DEST_SERVER}" "[[ -e "${DEST_FILE_PATH}" ]]"; then
        # If the file doesn't exist in the destination folder, copy it
        scp "${SOURCE_SERVER}:${SOURCE_FILE_PATH}" "${DEST_SERVER}:${DEST_FOLDER}/"
        echo "Copied ${FILE} from ${SOURCE_SERVER}:${SOURCE_FOLDER} to ${DEST_SERVER}:${DEST_FOLDER}."
    else
        echo "${FILE} already exists in ${DEST_SERVER}:${DEST_FOLDER}. Skipping..."
    fi
done
