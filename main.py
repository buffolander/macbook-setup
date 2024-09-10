#!/usr/bin/python

import subprocess, sys

command = sys.argv[1:]


def to_pascal_case(text: str) -> str:
    """
    Convert any string to PascalCase
    """
    if not text or not isinstance(text, str):
        raise TypeError("'text' must be a non-empty string")

    return "".join(x for x in text.title() if not x.isspace())


def run(label: str, command: str) -> None:
    """
    Run a command and print the output
    """
    label = to_pascal_case(label)
    print(f"\n{label} Running...")

    out = subprocess.run(command, check=False, shell=True, executable="/bin/bash")
    if out.returncode != 0:
        print(f"{label} Failed")
        print(out.stderr)
        sys.exit(out.returncode)

    print(f"{label} Success")


run(
    "install_homebrew",
    '/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"',
)

run(
    "install_brewfile",
    "brew tap Homebrew/bundle && brew bundle --file=Brewfile --force --no-lock",
)

# run(
#     "copy_zshrc",
#     "cp dotfiles/[default]/.zshrc ~/.zshrc && source ~/.zshrc",
# )

run(
    "setup_wezterm",
    r"mkdir -p ~/.config/wezterm && cp -r dotfiles/\[default\]/.config/wezterm/ ~/.config/wezterm/",
)

run(
    "setup_starship",
    r"mkdir -p ~/.config && cp dotfiles/\[default\]/.config/starship.toml ~/.config/starship.toml",
)
