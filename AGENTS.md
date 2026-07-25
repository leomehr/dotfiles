# Workstation setup instructions

## Goal

Configure Leo's Mac as a small, reproducible, agent-first development
environment. Treat this repository as the source of truth for the local
technology stack, not merely as a collection of dotfiles.

## Before changing the machine

1. Read `README.md`, `Brewfile`, `setup`, and every configuration file that the
   setup script links.
2. Inspect the current macOS version, architecture, shell, installed apps,
   Homebrew state, existing configuration files, and repository status.
3. Preserve unrelated work. Explain any destructive, security-sensitive, or
   externally visible action before taking it.
4. Never copy credentials, passkeys, tokens, private keys, or email contents
   into this public repository.

## Setup

1. Install Homebrew from its official source if it is missing and Leo approves
   the installation.
2. Review `Brewfile` for compatibility with the current Mac and requested
   stack.
3. Run `./setup --install`. The script backs up regular files before linking
   tracked configuration.
4. Do not overwrite application data or import a full iTerm preferences dump.
   The tracked dynamic profile contains only durable, portable settings.
5. Keep credentials in a password manager, Keychain, or ignored project-local
   environment file.

## Verification

After setup:

- Run `zsh -n .zshrc .aliases setup`.
- Start a clean zsh and verify the prompt, aliases, fzf bindings, `mise`, and
  `direnv`.
- Run `brew bundle check --file Brewfile`.
- Confirm `~/.zshrc`, `~/.aliases`, `~/.gitconfig`, the iTerm dynamic profile,
  and global Codex and Claude instructions link to this repository.
- Confirm iTerm is not loading preferences from a machine-specific custom
  folder.
- Run `git diff --check` and report anything that could not be verified.

## Change policy

- Favor a small, reliable stack over decorative terminal tooling.
- Keep the original two-line prompt unless Leo asks to change it.
- Prefer safe Git defaults such as `--force-with-lease`.
- Add tools only when they materially help Leo or coding agents.
- Make local commits only when explicitly requested. Never push without
  explicit approval.
