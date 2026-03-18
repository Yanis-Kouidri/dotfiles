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

# Rust

if ! command -v rustup &> /dev/null; then
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
    . "$HOME/.cargo/env"
fi

# Update rust
rustup update

# Install a tool to update cargo installed tools
if ! command -v cargo-install-update &> /dev/null; then
    cargo install cargo-update
fi

# dua-cli
if ! command -v dua &> /dev/null; then
    cargo install dua-cli
fi

# fd (better find)
if ! command -v fd &> /dev/null; then
    cargo install fd-find
fi
