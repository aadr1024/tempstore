# tempstore

Quick terminal snippet storage. Save text, retrieve it later with fuzzy search.

## Install

```bash
curl -fsSL https://raw.githubusercontent.com/aadr1024/tempstore/main/install.sh | bash
```

Requires: [fzf](https://github.com/junegunn/fzf) (`brew install fzf`)

## Usage

```bash
# Save
tempstore some text I want to save later

# Retrieve (opens fuzzy picker)
tempstore
```

**Picker controls:**
- `Enter` - copy to clipboard & exit
- `ctrl-d` - delete item
- `Tab` - multi-select (for large file cleanup)
- `Esc` - cancel

## Features

- Sorted by most recent
- Preview before selecting
- Auto-detects large files (>100KB) and prompts cleanup
- Copies to clipboard on select

## Storage

Snippets stored in `~/.tempstore/` as timestamped files.

## License

MIT
