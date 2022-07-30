#!/usr/bin/env bash

set -euo pipefail

red='\033[0;31m'
green='\033[0;32m'
purple='\033[0;35m'
normal='\033[0m'

_w() {
  local -r text="${1:-}"
  echo -e "$text"
}
_a() { _w " > $1"; }
_e() { _a "${red}$1${normal}"; }
_s() { _a "${green}$1${normal}"; }
_q() { read -rp "🤔 $1: " "$2"; }

current_timestamp() { date +%s; }

create_dotfiles_dir() {
  if [ -d "$1" ]; then
    _e "The path '$1' already exist"
    _s "Creating a backup in '$backup_path'"

    mv "$1" "$backup_path"
  else
    _a "Ok! dotfiles will be located in: ${purple}$DOTFILES_PATH${normal}"
  fi

  mkdir -p "$1"
}

command_exists() {
  type "$1" >/dev/null 2>&1
}

_w "  ┌─────────────────────────────────────────┐"
_w "~ │ 🚀 Welcome to the ${green}dotfiles${normal} installer!"
_w "  └─────────────────────────────────────────┘"
_w
_q "Where do you want your dotfiles to be located? (default ~/.dotfiles)" "DOTFILES_PATH"
DOTFILES_PATH="${DOTFILES_PATH:-$HOME/.dotfiles}"
DOTFILES_PATH="$(eval echo "$DOTFILES_PATH")"
export DOTFILES_PATH="$DOTFILES_PATH"

create_dotfiles_dir "$DOTFILES_PATH"
mkdir "$DOTFILES_PATH"


if ! command_exists git; then
  _e "git not installed, trying to install"

  if command_exists apt; then
    _a "Installing using apt"
    sudo apt -y install git
  elif command_exists dnf; then
    _a "Installing using dnf"
    sudo dnf -y install git
  elif command_exists yum; then
    _a "Installing using yum"
    yes | sudo yum install git
  elif command_exists brew; then
    _a "Installing using brew"
    yes | brew install git
  elif command_exists pacman; then
    _a "Installing using pacman"
    sudo pacman -S --noconfirm git
  else
    case "$OSTYPE" in
    darwin*)
      _a "Checking if Command Line Tools are installed 🕵️‍♂️"

      xcode-select --install 2>&1 | grep installed >/dev/null
      if [[ $? ]]; then
        _a "Installing Command Line Tools 📺"
        xcode-select --install
        _q "Press a key after command line tools has finished to continue...👇" "CLT_INSTALLED"
      fi
      ;;
    *)
      _e "Could not install git, no package provider found"
      exit 1
      ;;
    esac
  fi
fi

_a "Cloning dotfiles repository"
git clone "https://github.com/ddmarin94/.dotfiles.git" "$DOTFILES_PATH"

cd $DOTFILES_PATH

bash init.sh

# _a "🎉 dotfiles setup installed correctly! 🎉"
# _a "Please, restart your terminal to see the changes"