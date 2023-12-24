#!/bin/zsh

DISCORD_HOME="/opt/discord"

mkdir -p $DISCORD_HOME
./update_discord.sh
cp update_discord.sh $DISCORD_HOME

sudo ln -s $DISCORD_HOME/Discord /usr/bin/discord
sudo ln -s $DISCORD_HOME/update_discord.sh /usr/bin/update_discord
