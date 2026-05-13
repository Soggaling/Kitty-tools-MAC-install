#!/bin/zsh

# Enviroment detection
echo "Checking environment..."
if [[ "$OSTYPE" == "darwin"* ]]; then
    if ! command -v brew &>/dev/null; then
        echo "Installing Homebrew..."
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    fi
    INSTALL_CMD="brew install"
elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
    INSTALL_CMD="sudo apt install -y"
    sudo apt update
else
    echo "Unsupported OS. Please install dependencies manually."
    exit 1
fi

# Installs the dependancies.
packages=(git python3 node)

for pkg in $packages; do
    if ! command -v $pkg &>/dev/null; then
        echo "Installing $pkg..."
        $INSTALL_CMD $pkg
    else
        echo "$pkg is already installed."
    fi
done

# clones and sets up
TARGET_DIR="$HOME/Kitty-Tools"

if [ -d "$TARGET_DIR" ]; then
    echo "Directory $TARGET_DIR already exists. Pulling latest changes..."
    cd "$TARGET_DIR" && git pull
else
    echo "Cloning Kitty-Tools..."
    git clone https://github.com/0u44/Kitty-Tools "$TARGET_DIR"
    cd "$TARGET_DIR"
fi

# Install the requirements.
if [ -f "requirements.txt" ]; then
    echo "Installing Python dependencies..."
    python3 -m pip install -r requirements.txt
fi

# Run the main script
echo "Launching Kitty-Tools..."
python3 main.py
