# /changelog

Generate or update CHANGELOG.md from git history or commits.

## Arguments

- `$ARGUMENTS`: Version number or "unreleased" (optional)

## Usage

```
/changelog
/changelog v2.0.0
/changelog --since v1.5.0
```

## Format

Follows [Keep a Changelog](https://keepachangelog.com/) format:

### Categories
- **Added**: New features
- **Changed**: Changes to existing functionality
- **Deprecated**: Soon-to-be removed features
- **Removed**: Removed features
- **Fixed**: Bug fixes
- **Security**: Security patches

## Options

- `--since VERSION`: Generate entries since version
- `--format [keep|conventional]`: Changelog format style
- `--include-prs`: Include PR references
- `--include-authors`: Include commit authors
