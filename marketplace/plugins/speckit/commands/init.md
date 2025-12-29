---
description: Initialize spec-kit in the current project - creates .specify/ directory with templates, scripts, and memory.
handoffs:
  - label: Create Constitution
    agent: speckit.constitution
    prompt: Create project principles and development guidelines
---

## User Input

```text
$ARGUMENTS
```

You **MUST** consider the user input before proceeding (if not empty).

## Outline

Initialize spec-kit in the current project without requiring the `specify` CLI installer. This command sets up the `.specify/` directory structure needed for Spec-Driven Development.

### Execution Steps

1. **Check if already initialized**: Look for `.specify/` directory in the project root.
   - If exists and has content, ask user: "Spec-kit is already initialized. Do you want to reinitialize? (This will preserve your existing constitution and specs)"
   - If user declines, exit gracefully

2. **Create directory structure**:
   ```
   .specify/
   ├── memory/
   │   └── constitution.md
   ├── scripts/
   │   └── bash/
   │       ├── common.sh
   │       ├── check-prerequisites.sh
   │       ├── create-new-feature.sh
   │       ├── setup-plan.sh
   │       └── update-agent-context.sh
   └── templates/
       ├── spec-template.md
       ├── plan-template.md
       ├── tasks-template.md
       ├── checklist-template.md
       └── agent-file-template.md
   ```

3. **Copy bundled assets**: The plugin includes bundled assets in `${CLAUDE_PLUGIN_ROOT}/assets/`. Copy these to the project's `.specify/` directory:
   - Copy `${CLAUDE_PLUGIN_ROOT}/assets/scripts/bash/*` → `.specify/scripts/bash/`
   - Copy `${CLAUDE_PLUGIN_ROOT}/assets/templates/*` → `.specify/templates/`
   - Copy `${CLAUDE_PLUGIN_ROOT}/assets/memory/constitution.md` → `.specify/memory/constitution.md` (only if not exists)

4. **Make scripts executable**:
   ```bash
   chmod +x .specify/scripts/bash/*.sh
   ```

5. **Create specs directory** for feature specifications:
   ```bash
   mkdir -p specs
   ```

6. **Initialize git (if not already a repo)**:
   - Check if `.git/` exists
   - If not, offer to initialize: "Would you like to initialize git for version control? (recommended)"
   - If yes, run `git init`

7. **Report completion**:
   - List created directories and files
   - Suggest next steps:
     - "Run `/speckit.constitution` to define your project principles"
     - "Run `/speckit.specify <description>` to create your first feature specification"

## User Arguments

If `$ARGUMENTS` is provided:
- `--force` or `-f`: Reinitialize without prompting
- `--no-git`: Skip git initialization prompt
- `--ai claude`: Explicitly set AI agent (for compatibility with original specify CLI)

## Quick Start Guide

After initialization, the Spec-Driven Development workflow is:

1. `/speckit.constitution` - Define project principles
2. `/speckit.specify` - Create feature specification  
3. `/speckit.clarify` - Clarify ambiguous requirements
4. `/speckit.plan` - Generate technical implementation plan
5. `/speckit.tasks` - Break down into actionable tasks
6. `/speckit.implement` - Execute the implementation

## Notes

- This command replaces `specify init` from the CLI
- All spec-kit commands will work after initialization
- The constitution can be updated anytime with `/speckit.constitution`
- Templates can be customized to match your project's needs
