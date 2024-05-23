# Customized File Synchronization

In various scenarios, you may need to synchronize or transfer files between different locations, such as remote servers or local folders. However, sometimes you only need to copy the latest files, rather than synchronizing the entire directory structure. This repository provides two Bash scripts that offer customized solutions for efficient file synchronization, tailored to your specific needs.

These scripts are designed to be lightweight, portable, and easy to use, without relying on external dependencies. They leverage the power of Bash scripting to provide a self-contained solution for synchronizing the latest files between remote servers or local folders.

By focusing on transferring only the latest files, these scripts can help minimize bandwidth usage, reduce disk space consumption, and improve overall efficiency. Whether you need to back up critical data, synchronize remote development environments, or distribute content updates, these scripts offer a flexible and customizable approach to meet your file synchronization requirements.


This repository contains a Bash script, `sync.sh`, `synclocal.sh`  designed to provide a customized solution for synchronizing the latest files from a source folder to a destination folder locally or on another remote server. It will only copy files that do not already exist in the destination folder.

## Customized Synchronization Solution

This script serves as a customized solution for scenarios where you need to transfer only the latest files between remote servers, but an external package for file synchronization (such as `rsync`) may not be readily available or installed on the target systems.

While external packages like `rsync` offer more advanced features and flexibility, they may not always be present in all environments, especially in restricted or minimal setups. In such cases, this Bash script provides a lightweight and self-contained solution for selectively synchronizing the latest files between remote servers.

## Use Cases

The script can be useful in various scenarios where efficient and customized file synchronization or transfer between remote servers is required. Here are some potential use cases:

1. **Remote File Backup**
   - The script can be used to back up the latest files from a remote server to a local or another remote backup location.
   - This can be particularly useful for incrementally backing up important files or logs that are frequently updated, without having to copy the entire directory structure.

2. **Synchronizing Critical Data**
   - In scenarios where you have critical data that needs to be synchronized between two remote servers, but you only want to transfer the latest files to minimize bandwidth usage or disk space consumption.
   - Examples could include synchronizing transaction logs, database backups, or other frequently updated data files.

3. **Automated File Transfers**
   - The script can be integrated into a larger automation workflow, where it is used to transfer the latest files between remote servers as part of a larger process.
   - For example, it could be used to transfer the latest log files from a production server to a monitoring or analysis server, as part of a log processing pipeline.

4. **Remote Development Environment Synchronization**
   - If you are working on a remote development environment (e.g., a cloud-based IDE or a remote server), the script can be used to synchronize the latest changes in your local development files to the remote environment.
   - This can be especially useful for developers who work on multiple machines or in collaborative environments, where they need to keep their remote development environments up-to-date with the latest code changes.

5. **Remote Content Distribution**
   - In scenarios where you need to distribute the latest content (e.g., software updates, media files, or other data) from a central server to multiple remote locations, the script can be used to selectively transfer only the latest files to each remote location.
   - This can help minimize bandwidth usage and ensure that only the most recent content is distributed to the remote locations.

6. **Remote File Monitoring**
   - The script can be used as part of a monitoring system to transfer the latest log files or other diagnostic files from remote servers to a central monitoring location for analysis or archiving.
   - This can be useful in troubleshooting issues or tracking system events across multiple remote servers.


## Advantages

1. **No External Dependencies**: The script is written in pure Bash and does not rely on any external packages or dependencies, making it highly portable and easy to use across different systems and environments.

2. **Focused on Latest Files**: The script is designed specifically to transfer only the latest files from the source folder, making it a more lightweight and efficient solution when you don't need to synchronize the entire directory structure.

3. **Reduced Bandwidth and Storage Usage**: By transferring only the latest files, the script can help save bandwidth and storage space, which can be particularly beneficial in environments with limited resources or when dealing with large file sets.

4. **Simpler Configuration**: The script has a straightforward configuration and usage, making it easier to set up and run compared to more complex file synchronization tools.

5. **Targeted Synchronization**: If you have a specific requirement to synchronize only the latest files between two remote locations, this script can be a more focused and specialized solution.

## Prerequisites

- SSH access to both the source and destination servers
- Appropriate authentication methods (e.g., SSH keys) set up for passwordless SSH access

## Usage

1. Clone or download this repository to your local machine.
2. Open the `sync.sh` script in a text editor.
3. Set the following variables with the appropriate values for your servers and folders:
   - `SOURCE_SERVER`: The username and hostname of the source server (e.g., `user@sourceserver.com`)
   - `SOURCE_FOLDER`: The path to the source folder on the source server (e.g., `/path/to/sourceFolder`)
   - `DEST_SERVER`: The username and hostname of the destination server (e.g., `user@destinationserver.com`)
   - `DEST_FOLDER`: The path to the destination folder on the destination server (e.g., `/path/to/destinationFolder`)
4. Save the changes to the script.
5. Make the script executable by running: `chmod +x sync.sh`
6. Run the script: `./sync.sh`

The script will then copy the latest files from the source folder on the source server to the destination folder on the destination server, but only if the files do not already exist in the destination folder.

## synclocal.sh

`synclocal.sh` is a lightweight and portable Bash script that provides a similar functionality to `sync.sh`, but for local folders on the same machine. It's designed to be easy to use, with no external dependencies, and focused on transferring only the latest files between the source and destination folders.

### Features

- **Efficient Synchronization**: Copies only the latest files, reducing disk space usage.
- **Local Folder Support**: Supports synchronization between local folders on the same machine.
- **Lightweight and Portable**: Written in pure Bash, no external dependencies required.
- **Customizable**: Easily configure the source and destination folder paths.
- **Error Handling**: Includes basic error handling and informative output messages.
- **Incremental Synchronization**: Designed to be run repeatedly, transferring only new or modified files since the last synchronization.

### Usage

1. Open the `synclocal.sh` script in a text editor.
2. Set the following variables with the appropriate paths for your source and destination folders:
  - `sourceFolder`: The path to the source folder (e.g., `/path/to/sourceFolder`)
  - `destinationFolder`: The path to the destination folder (e.g., `/path/to/destinationFolder`)
3. Save the changes to the script.
4. Make the script executable by running: `chmod +x synclocal.sh`
5. Run the script: `./synclocal.sh`

The script will then copy the latest files from the source folder to the destination folder, but only if the files do not already exist in the destination folder.

For more details and usage instructions, please refer to the comments within the `synclocal.sh` script.


## Contact Us 📧

Have questions, feedback, or need assistance? Reach out to:

Email: hrushikeshdagwar@gmail.com
