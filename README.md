# Agent-first macOS dotfiles

Small, reproducible defaults for a Mac where coding agents are the main
development interface. The terminal stays fast and familiar; the underlying
tools stay predictable for both people and agents.

## Setup

Run:

```sh
./setup
```

To install the command-line toolset as well:

```sh
./setup --install
```

`--install` expects [Homebrew](https://brew.sh/). The setup script backs up
regular files before linking the tracked configuration. It also installs the
iTerm dynamic profile and shared instructions for Codex and Claude Code.

## Terminal

- the original two-line prompt, with success/failure-colored time, current directory, and Git branch
- shared, deduplicated command history
- case-insensitive completion menus
- fzf completion and key bindings
- personal navigation, Python, Git, macOS, and tmux aliases from `.aliases`
- a portable iTerm dynamic profile without machine-specific paths

Useful fzf bindings:

- `Ctrl-R`: search command history
- `Ctrl-T`: find files and directories
- `Alt-C`: change directory

## Core apps

- Browser: Dia (https://www.diabrowser.com/)
- Cmd bar: Alfred (https://www.alfredapp.com/)
- Dictation: VoiceInk (https://tryvoiceink.com/)
- Terminal: iTerm (https://iterm2.com/)
- Window manager: Rectangle (https://rectangleapp.com/)
- Coding: Codex (https://openai.com/codex/), Claude Code (https://claude.com/product/claude-code), Cursor (https://cursor.com/)
- Video recording: Loom (https://loom.com/)
- Red-shift: Flux (https://justgetflux.com/)
- Gif Creator: Gifox (https://gifox.app/)

## Command-line tools

- `fzf`: interactive history and file selection
- `ripgrep` and `fd`: fast search for people and coding agents
- `jq`: reliable JSON inspection and transformation
- `gh`: GitHub workflows from agents and the terminal
- `mise`: project-specific language and tool versions
- `direnv`: optional per-project environment loading

These are intentionally practical rather than decorative. There is no shell
framework, prompt framework, icon font, or collection of replacement commands.

## Credentials

Credentials do not belong in this public repository. Keep passkeys, tokens, and
API keys in a password manager, Keychain, or an ignored project environment
file.
