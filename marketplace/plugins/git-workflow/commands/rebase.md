# /rebase

Interactive rebase with intelligent commit organization.

## Arguments

- `$ARGUMENTS`: Target branch or commit count

## Usage

```
/rebase main
/rebase -i HEAD~5
/rebase --onto main feature-base
```

## Features

- **Conflict Resolution**: Provides guidance for merge conflicts
- **Commit Organization**: Suggests squash/fixup opportunities
- **History Cleanup**: Identifies and removes debug commits

## Interactive Mode

When using interactive rebase, provides suggestions for:
- Commits to squash together
- Commit messages to reword
- Out-of-order commits to reorder
- WIP commits to fixup

## Options

- `-i, --interactive`: Interactive mode
- `--onto BRANCH`: Rebase onto specific branch
- `--continue`: Continue after conflict resolution
- `--abort`: Abort and restore original state

## Safety

- Always creates a backup branch before rebasing
- Warns about rebasing shared branches
- Provides rollback instructions
