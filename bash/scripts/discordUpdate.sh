#!/bin/bash

# Perform curl to get the final URL
final_url=$(curl -s -L -o /dev/null -w '%{url_effective}' "https://discord.com/api/download/stable?platform=linux&format=deb")

# Perform wget with the final URL
wget "$final_url" -P /tmp

sudo dpkg -i /tmp/discord-0.0.*.deb
