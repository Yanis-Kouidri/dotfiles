#!/bin/bash

# This files contains all non-apt apps to install

# tldr

if ! command -v tldr &> /dev/null; then
    pipx install tldr
fi

# yt-dlp

if ! command -v yt-dlp &> /dev/null; then
    curl -fsSL -o ~/.local/bin/yt-dlp https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp
    chmod +x ~/.local/bin/yt-dlp
fi

# Deno

if ! command -v deno &> /dev/null; then
    curl -fsSL https://deno.land/install.sh | sh
fi