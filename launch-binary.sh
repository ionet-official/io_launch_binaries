#!/bin/bash

set -e

REPO="ionet-official/io_launch_binaries"

INSTALL_DIR="/usr/local/bin"
BINARY_NAME="io-net-launcher"
BINARY_PATH="$INSTALL_DIR/$BINARY_NAME"

get_local_version() {
  if [ -f "$BINARY_PATH" ]; then
    version_output="$($BINARY_PATH --version)"
    echo "$version_output" | grep -oE '[0-9]+\.[0-9]+\.[0-9]+$'
  else
    echo "none"
  fi
}

get_latest_version() {
  curl -s "https://api.github.com/repos/$REPO/releases/latest" | grep '"tag_name":' | sed -E 's/.*"([^"]+)".*/\1/'
}

download_binary() {
  case "$(uname -sm)" in
    "Darwin arm64") FILENAME="io_net_launch_binary_mac" ;;
    "Linux x86_64") FILENAME="io_net_launch_binary_linux" ;;
    *) echo "Unsupported architecture: $(uname -sm)" >&2; exit 1 ;;
  esac

  URL="https://github.com/$REPO/releases/download/$1/$FILENAME"
  echo "Downloading $FILENAME version $1 from GitHub releases"
  if ! curl -sSLf "$URL" -o "$BINARY_PATH"; then
    echo "Failed to download or write to $INSTALL_DIR; try with sudo" >&2
    exit 1
  fi

  if ! chmod +x "$BINARY_PATH"; then
    echo "Failed to set executable permission on $BINARY_PATH" >&2
    exit 1
  fi

  echo "$BINARY_NAME version $1 is successfully installed"
}

local_version=$(get_local_version)
latest_version=$(get_latest_version)

if [ "$local_version" != "$latest_version" ]; then
  echo "Local version ($local_version) is different from the latest version ($latest_version). Updating..."
  download_binary "$latest_version"
else
  echo
fi

# Execute the binary with the provided flags and options
"$BINARY_PATH" "$@"
