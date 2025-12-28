# Daniel's Claude Code Plugins Marketplace

A comprehensive marketplace showcasing all Claude Code plugin component types including commands, agents, skills, hooks, MCP servers, and LSP servers.

## Installation

### From GitHub (Recommended)

```bash
# Using GitHub shorthand
/plugin marketplace add github:dcinthecloud/claude-code --path marketplace

# Using full GitHub URL
/plugin marketplace add https://github.com/dcinthecloud/claude-code.git --path marketplace
```

### From Local Clone

```bash
# If you've cloned the repo locally
/plugin marketplace add ./marketplace

# Or with absolute path
/plugin marketplace add /path/to/claude-code/marketplace
```

### Installing Plugins

Once the marketplace is added, install individual plugins:

```bash
# Install a specific plugin
/plugin install code-review-tools@daniel-tools
/plugin install security-scanner@daniel-tools
/plugin install git-workflow@daniel-tools

# List available plugins from this marketplace
/plugin marketplace list daniel-tools

# Update marketplace to get latest plugins
/plugin marketplace update daniel-tools
```

### For Other Git Hosts

```bash
# GitLab
/plugin marketplace add https://gitlab.com/username/repo.git --path marketplace

# Bitbucket
/plugin marketplace add https://bitbucket.org/username/repo.git --path marketplace

# Any Git URL
/plugin marketplace add https://git.example.com/repo.git --path marketplace
```

## Available Plugins

| Plugin | Description | Components |
|--------|-------------|------------|
| [code-review-tools](#code-review-tools) | Comprehensive code review toolset | Commands, Agents, Skills, Hooks, Styles |
| [deployment-automation](#deployment-automation) | Automated deployment workflows | Commands, Agents, MCP Servers |
| [testing-suite](#testing-suite) | Advanced testing tools | Commands, Agents, Skills, Hooks |
| [documentation-generator](#documentation-generator) | AI-powered documentation | Commands, Agents, Skills |
| [security-scanner](#security-scanner) | Security scanning | Commands, Agents, Skills, Hooks, LSP Servers |
| [git-workflow](#git-workflow) | Enhanced Git workflows | Commands, Agents, Hooks |

## Plugin Details

### code-review-tools

Comprehensive code review with commands, agents, and automated hooks.

**Commands:**
- `/review` - Review code for bugs, security, and best practices
- `/lint` - Linting and style analysis
- `/complexity` - Code complexity metrics

**Agents:**
- Code Reviewer - Expert code analysis
- Performance Analyst - Performance optimization

**Skills:**
- Code Quality Analysis
- Best Practices Checker

**Hooks:**
- PostToolUse: Auto-lint after file changes
- PreToolUse: Best practice reminders before writing
- Stop: Session summary prompt

---

### deployment-automation

Automated deployment workflows with MCP server integration.

**Commands:**
- `/deploy` - Deploy to environments
- `/rollback` - Rollback deployments
- `/status` - Check deployment status

**Agents:**
- DevOps Engineer - Infrastructure and deployment expertise

**MCP Servers:**
- deployment-db - Deployment tracking database
- kubernetes-client - Kubernetes operations
- docker-manager - Docker container management
- ci-pipeline - CI/CD pipeline integration

---

### testing-suite

Advanced testing tools with hooks for test automation.

**Commands:**
- `/test` - Run tests with coverage
- `/coverage` - Coverage reports
- `/generate-tests` - AI test generation

**Agents:**
- QA Engineer - Testing expertise

**Skills:**
- TDD (Test-Driven Development)

**Hooks:**
- PostToolUse: Run related tests after file changes
- SessionStart: Check test environment status
- SessionEnd: Test session summary
- PreCompact: Preserve test data

---

### documentation-generator

AI-powered documentation generation.

**Commands:**
- `/docs` - Generate documentation
- `/api-docs` - API documentation
- `/changelog` - Changelog generation

**Agents:**
- Technical Writer - Documentation expertise

**Skills:**
- Docstring Generation
- README Generation

---

### security-scanner

Security scanning with LSP-like diagnostics.

**Commands:**
- `/security-scan` - SAST and vulnerability scanning
- `/audit-deps` - Dependency audit
- `/secrets-scan` - Secret detection

**Agents:**
- Security Analyst - Security expertise

**Skills:**
- OWASP Top 10 Detection

**LSP Servers:**
- semgrep - Multi-language security linting
- bandit-python - Python security scanner
- snyk-security - Dependency vulnerability scanning

**Hooks:**
- PreToolUse: Security checks before writing
- PostToolUse: Quick security scan after changes
- Notification: Security alert handling
- PermissionRequest: Permission security evaluation

---

### git-workflow

Enhanced Git workflows with commit hooks and branch management.

**Commands:**
- `/commit` - Conventional commit messages
- `/pr` - Pull request management
- `/branch` - Branch operations
- `/rebase` - Interactive rebase assistance

**Agents:**
- Git Expert - Version control expertise

**Hooks:**
- SubagentStart: Git workflow reminders for subagents
- SubagentStop: Verify git operations completion
- PostToolUseFailure: Git error recovery (agent type)
- UserPromptSubmit: Git command preparation

## Component Configuration Reference

This marketplace demonstrates all plugin configuration fields:

### Marketplace Schema
- `name` - Marketplace identifier
- `owner` - Owner information (name, email)
- `metadata` - Description, version, pluginRoot
- `plugins` - Array of plugin entries

### Plugin Entry Fields
- `name` - Plugin identifier
- `source` - Plugin location (path, GitHub, or URL)
- `description` - Plugin description
- `version` - Semantic version
- `author` - Author info (name, email, url)
- `homepage` - Documentation URL
- `repository` - Source repository URL
- `license` - License identifier
- `keywords` - Search keywords
- `category` - Plugin category
- `tags` - Additional tags
- `strict` - Whether plugin.json is required

### Plugin Manifest Fields
- `name` - Plugin name (required)
- `version` - Semantic version
- `description` - Plugin description
- `author` - Author information
- `homepage` - Documentation URL
- `repository` - Source repository
- `license` - License identifier
- `keywords` - Search keywords
- `commands` - Command paths
- `agents` - Agent paths
- `skills` - Skill paths
- `hooks` - Hooks configuration path
- `mcpServers` - MCP server configuration
- `lspServers` - LSP server configuration
- `outputStyles` - Output style paths

### Hook Event Types
- `PreToolUse` - Before tool execution
- `PostToolUse` - After successful tool execution
- `PostToolUseFailure` - After tool execution failure
- `PermissionRequest` - When permission is requested
- `UserPromptSubmit` - When user submits prompt
- `Notification` - When notification is sent
- `Stop` - When Claude stops
- `SubagentStart` - When subagent starts
- `SubagentStop` - When subagent stops
- `SessionStart` - At session start
- `SessionEnd` - At session end
- `PreCompact` - Before history compaction

### Hook Types
- `command` - Execute shell commands
- `prompt` - LLM prompt evaluation
- `agent` - Agentic verification with tools

### LSP Server Configuration
- `command` - Server executable
- `args` - Command arguments
- `extensionToLanguage` - File extension mapping
- `transport` - Connection type (stdio/socket)
- `env` - Environment variables
- `initializationOptions` - LSP init options
- `settings` - Server settings
- `workspaceFolder` - Workspace path
- `startupTimeout` - Startup timeout (ms)
- `shutdownTimeout` - Shutdown timeout (ms)
- `restartOnCrash` - Auto-restart on crash
- `maxRestarts` - Maximum restart attempts
- `loggingConfig` - Debug logging configuration

## License

MIT License - See [LICENSE](LICENSE) for details.
