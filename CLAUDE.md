# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

This is a Homebrew tap repository (`moonD4rk/homebrew-tap`) that hosts Formula files for installing CLI tools via `brew tap moond4rk/tap`. Formula files may be updated automatically by CI/CD tools (e.g., GoReleaser) from upstream project releases, or manually maintained.

## Repository Structure

- `Formula/` — Homebrew formula files (one `.rb` per package)
- `README.md` — Lists available packages with install commands

## How It Works

Users install packages via:
```bash
brew tap moond4rk/tap
brew install moond4rk/tap/<package>
```

## Adding a New Formula

1. Create `Formula/<name>.rb` following existing formulas as reference
2. Key elements: `desc`, `homepage`, `version`, `license`, `url` + `sha256` (per-architecture via `on_arm`/`on_intel` for macOS), `install`, `test`
3. Update `README.md` Available Packages table

## Validating Formulas

```bash
# Lint a formula
brew audit --strict Formula/<name>.rb

# Test a formula installs correctly
brew install --build-from-source Formula/<name>.rb
brew test <name>
```

## Conventions

- Archive naming: `<name>_macos_m1.tar.gz` (ARM64), `<name>_macos_intel.tar.gz` (x86_64)
- All formulas target macOS only (darwin)
- Use `on_arm`/`on_intel` blocks for architecture-specific download URLs and checksums
