# Set paths for source and destination folders
sourceFolder="/A"
destinationFolder="/B"

# List files in source folder
files_in_source=$(ls -rt "$sourceFolder" | tail -n 5 | awk '{print $NF}')

# Loop through files in source folder
for file in $files_in_source; do
    # Check if file exists in destination folder
    if [ ! -e "$destinationFolder/$file" ]; then
        # If file doesn't exist in destination folder, copy it from source folder
        cp "$sourceFolder/$file" "$destinationFolder"
        echo "Copied $file from $sourceFolder to $destinationFolder."
    else
        echo "$file already exists in $destinationFolder. Skipping..."
    fi
done
