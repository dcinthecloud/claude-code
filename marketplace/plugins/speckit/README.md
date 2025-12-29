# Spec-Kit Plugin for Claude Code

Spec-Driven Development toolkit for Claude Code. Create specifications, plans, tasks, and implementations without installing the `specify` CLI.

## Installation

```bash
# Add the marketplace
/plugin marketplace add github:dcinthecloud/claude-code/marketplace

# Install the speckit plugin
/plugin install speckit@daniel-tools
```

## Quick Start

```bash
# 1. Initialize spec-kit in your project
/speckit.init

# 2. Define project principles
/speckit.constitution

# 3. Create a feature specification
/speckit.specify Build a todo app with categories and due dates

# 4. Generate implementation plan
/speckit.plan

# 5. Create task breakdown
/speckit.tasks

# 6. Start implementation
/speckit.implement
```

## Available Commands

| Command | Description |
|---------|-------------|
| `/speckit.init` | Initialize spec-kit in the current project |
| `/speckit.constitution` | Create or update project principles |
| `/speckit.specify` | Create feature specification from description |
| `/speckit.clarify` | Clarify ambiguous requirements (max 5 questions) |
| `/speckit.plan` | Generate technical implementation plan |
| `/speckit.tasks` | Break down plan into actionable tasks |
| `/speckit.implement` | Execute all tasks from tasks.md |
| `/speckit.analyze` | Validate consistency across spec/plan/tasks |
| `/speckit.checklist` | Generate requirements quality checklist |
| `/speckit.taskstoissues` | Convert tasks to GitHub issues |

## Agents

- **Spec Writer**: Expert in writing clear, technology-agnostic specifications
- **Planner**: Specialist in architecture design and task breakdown

## Skills

- **Spec-Driven Development**: Core SDD methodology and workflow
- **Requirements Analysis**: Techniques for evaluating requirement quality

## The SDD Workflow

```
/speckit.init → /speckit.constitution → /speckit.specify → /speckit.clarify
                                                                ↓
                             /speckit.implement ← /speckit.tasks ← /speckit.plan
```

## Key Features

- **No CLI required**: Works entirely through Claude Code slash commands
- **Bundled assets**: Templates, scripts, and constitution template included
- **Handoffs**: Commands have built-in handoffs to guide you through the workflow
- **Project principles**: Constitution governs all development decisions

## License

MIT License - Based on [github/spec-kit](https://github.com/github/spec-kit)
