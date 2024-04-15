#!/bin/zsh

set -e
trap 'dunstify "Something do wrong in update_discord script."' ERR


DISCORD_URL="https://discord.com/api/download?platform=linux&format=tar.gz"
DOWNLOAD_DIR="$HOME/Downloads"
DISCORD_HOME="/opt/discord"
TEMP_DIR="$DOWNLOAD_DIR/discord_temp"

mkdir -p "$TEMP_DIR"

echo "Downloading Discord..."
curl -L "$DISCORD_URL" -o "$TEMP_DIR/discord.tar.gz"

echo "Extracting Discord..."
tar -xzf "$TEMP_DIR/discord.tar.gz" -C "$TEMP_DIR"

echo "Updating Discord..."
cp -r "$TEMP_DIR/Discord"/* "$DISCORD_HOME/"

echo "Cleaning up..."
rm -rf "$TEMP_DIR"

dunstify "Discord has been updated successfully!"

