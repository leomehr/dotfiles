# Leo's agent-first Mac setup

This repository describes Leo's local technology stack and makes it
reproducible on a new Mac. Coding agents are the main development interface;
the terminal stays fast and familiar, while the underlying tools stay
predictable for both people and agents.

A future coding agent should begin with [`AGENTS.md`](AGENTS.md), audit the
machine, explain any material changes, and then run the setup with the
appropriate permissions.

## Setup

Run:

```sh
./setup
```

To install the command-line toolset as well:

```sh
./setup --install
```

`--install` expects [Homebrew](https://brew.sh/). The setup script moves any
existing files or links to timestamped backups before linking the tracked
configuration. It also installs the iTerm dynamic profile and shared
instructions for Codex and Claude Code. By default, it also clears pinned
applications from the Dock while leaving Finder, Trash, folders, and running
applications alone. Set `DOTFILES_SKIP_DEFAULTS=true` to skip macOS preference
changes.

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
- Coding: Codex in ChatGPT and the Codex CLI (https://openai.com/codex/), Claude Code (https://claude.com/product/claude-code), Cursor (https://cursor.com/)
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
- `tmux`: persistent terminal sessions, matching the tracked aliases

These are intentionally practical rather than decorative. There is no shell
framework, prompt framework, icon font, or collection of replacement commands.

## Repository scope

This is more than a collection of dotfiles. It is the source of truth for:

- core applications and coding interfaces
- command-line tools used by people and agents
- shell, Git, and iTerm configuration
- shared defaults for coding agents
- repeatable setup and verification on a new Mac

## Credentials

Credentials do not belong in this public repository. Keep passkeys, tokens, and
API keys in a password manager, Keychain, or an ignored project environment
file.
