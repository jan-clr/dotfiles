#!/bin/bash

sudo apt update
sudo apt upgrade

curl https://sh.rustup.rs | sh

cargo install sccache

# set sccache as the rust compiler wrapper
printf '[build]\nrustc-wrapper = "/home/jc/.cargo/bin/sccache"' > ~/.cargo/config.toml

cargo install cargo-info ripgrep ncspot du-dust exa \
bat irust nu starship zellij bacon cargo-watch porsmo \
speedtest-rs gitui wiki-tui evcxr_jupyter rtx-cli mprocs