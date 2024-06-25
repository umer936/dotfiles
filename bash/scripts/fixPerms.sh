#!/bin/bash

# This script will check the permissions of files that have differences between your local branch and the remote branch.
# If the permissions differ, the script will set the local file's permissions to match the permissions from the remote repository.


# Fetch the latest changes from the remote repository
git fetch origin

# Iterate over the list of files that have differences between your local branch and the remote branch
for file in $(git diff --name-only origin/main); do
	# Get the permissions of the file from the remote repository
	remote_perm=$(git ls-files -s "$file" | awk '{print $1}')

	# Remove the leading "100" from the permission value
	remote_perm=${remote_perm#100}

	# Get the local permissions of the file
	local_perm=$(stat -c "%a" "$file")

	# Compare the local permissions with the remote permissions
	if [ "$local_perm" != "$remote_perm" ]; then
    	echo "Changing permissions for $file to match remote: $remote_perm"
    	# Set the local file's permissions to match the permissions from the remote repository
    	sudo chmod $remote_perm "$file"
	else
    	echo "Permissions for $file already match remote: $remote_perm"
	fi
done

