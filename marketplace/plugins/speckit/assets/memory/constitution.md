<!--
Sync Impact Report:
Version Change: N/A → 1.0.0 (Initial Constitution)
Modified Principles: N/A (new constitution)
Added Sections:
  - Core Principles (4 principles: Code Quality, Testing Discipline, UX Consistency, Performance)
  - Development Standards
  - Quality Gates
  - Governance
Removed Sections: N/A
Templates Requiring Updates:
  ✅ plan-template.md - Constitution Check section aligns with principles
  ✅ spec-template.md - Requirements align with quality standards
  ✅ tasks-template.md - Task structure supports testing discipline
Follow-up TODOs: None
-->

# Autonomous Trading Platform Constitution

## Core Principles

### I. Code Quality Standards (NON-NEGOTIABLE)

All code MUST adhere to the following quality requirements:

- **Type Safety**: All Python code MUST use type annotations for function signatures, return types, and complex data structures. TypeScript MUST use strict mode with no implicit `any` types.
- **Documentation**: All modules MUST include Google-style docstrings. Public APIs MUST be documented with parameter descriptions, return values, and usage examples.
- **Linting & Formatting**: Python code MUST pass Ruff linting with `--fix` and Pyright type checking. TypeScript MUST pass ESLint checks. No code may be committed with linting errors.
- **Import Organization**: Imports MUST be grouped (standard library, third-party, local) and use absolute paths (no relative imports).
- **Security First**: Code MUST NOT introduce OWASP Top 10 vulnerabilities. All user inputs MUST be validated. All external API calls MUST have 10-second timeouts. All file operations MUST use UTF-8 encoding.

**Rationale**: High code quality prevents technical debt, reduces bugs, improves maintainability, and ensures the trading platform operates reliably with financial data.

### II. Testing Discipline (NON-NEGOTIABLE)

Testing is mandatory and follows strict discipline:

- **Test Coverage**: All new features MUST include tests. Backend services MUST have unit tests (pytest). Integration tests MUST cover critical workflows (trading execution, ML model training, data synchronization).
- **Test-First Development**: For complex features, tests SHOULD be written before implementation. Tests MUST fail before implementation begins (Red-Green-Refactor cycle).
- **Contract Testing**: API endpoints MUST have contract tests validating request/response schemas. Breaking changes MUST be caught by contract tests.
- **Test Isolation**: Tests MUST be independent and parallelizable. Tests MUST NOT depend on external services in CI/CD (use mocks/fixtures).
- **Test Organization**: Tests MUST be organized by type: `tests/unit/`, `tests/integration/`, `tests/contract/`. Test file names MUST match source files (`test_<module>.py`).

**Rationale**: Comprehensive testing prevents regressions, enables confident refactoring, and ensures the trading platform behaves correctly under all conditions—critical when handling real-money transactions.

### III. User Experience Consistency

UI/UX MUST maintain consistency across the platform:

- **Design System**: Frontend MUST use Tailwind CSS with the custom "dark terminal" theme. Color palette, typography, and spacing MUST be consistent across all components.
- **Component Reusability**: Shared UI patterns MUST be extracted into reusable components (buttons, modals, cards, forms). No duplicate implementations of the same UI pattern.
- **Responsive Design**: All UI MUST be responsive and functional on desktop (1920x1080 minimum) and tablet (768px minimum) viewports.
- **Error Handling UX**: All user-facing errors MUST provide clear, actionable messages. Loading states MUST use consistent skeleton screens or spinners. Success/failure feedback MUST be immediate and visible.
- **Accessibility**: Interactive elements MUST be keyboard-navigable. Forms MUST have proper labels and validation feedback. Color MUST NOT be the only means of conveying information.

**Rationale**: Consistent UX builds user trust, reduces cognitive load, and creates a professional trading platform that users can navigate intuitively.

### IV. Performance Requirements

The platform MUST meet these performance standards:

- **API Response Times**: REST endpoints MUST respond within 200ms (p95) for read operations, 500ms (p95) for write operations. Database queries MUST be optimized (use indexes, avoid N+1 queries).
- **Real-time Data**: WebSocket connections for live trading data MUST maintain <100ms latency. Market data updates MUST be reflected in the UI within 200ms.
- **ML Model Performance**: Model training MUST complete within 5 minutes for datasets <100K records. Inference MUST complete within 50ms per prediction. Models MUST be cached and reused across requests.
- **Frontend Performance**: Initial page load MUST complete within 2 seconds (p95). React components MUST avoid unnecessary re-renders (use React.memo, useMemo, useCallback appropriately). Bundle size MUST be monitored and kept under 500KB (gzipped).
- **Scalability**: Backend MUST handle 1000 concurrent users without degradation. Celery workers MUST process background tasks within 1 minute (simple tasks) or 10 minutes (ML training tasks).

**Rationale**: Performance is critical for a trading platform where milliseconds matter. Slow performance leads to missed trading opportunities, poor user experience, and competitive disadvantage.

## Development Standards

### Technology Stack Requirements

- **Backend**: Python 3.11+, FastAPI framework, SQLAlchemy (async), Celery + Redis for task queues
- **Frontend**: React 19, TypeScript, Vite, Tailwind CSS
- **Database**: PostgreSQL with proper indexing and migrations (Alembic)
- **Testing**: Pytest (backend), Playwright (frontend E2E)
- **Package Management**: `uv` for Python (NOT pip/poetry/conda), `npm` for Node.js
- **Code Quality**: Ruff (linting/formatting), Pyright (type checking), ESLint (TypeScript)

### File Encoding & I/O Standards

- All text file operations MUST specify `encoding="utf-8"`
- All external HTTP requests MUST include a 10-second timeout
- All file paths MUST use `pathlib.Path` (not string concatenation)
- All CLI output MUST use the `rich` library for formatting

### Git & Version Control

- Commit messages MUST follow conventional commits format: `feat:`, `fix:`, `docs:`, `refactor:`, `test:`, `chore:`
- No commits with trailing whitespace in Python files
- All commits MUST include both staged and relevant untracked files
- Pre-commit hooks MAY modify files; if so, re-stage and commit again (never use `--no-verify`)

## Quality Gates

All pull requests MUST pass these gates before merge:

1. **Linting & Type Checking**: `ruff check --fix` and `pyright` (backend), `eslint` (frontend) with zero errors
2. **Tests**: All existing tests pass, new features include tests, coverage does not decrease
3. **Code Review**: At least one human approval required, security-sensitive changes require security review
4. **Performance**: No regressions in API response times or frontend load times
5. **Documentation**: Public APIs documented, breaking changes noted in PR description

## Governance

### Amendment Process

This constitution supersedes all other development practices. Amendments require:

1. Documentation of proposed changes with rationale
2. Team review and approval
3. Version bump following semantic versioning (see below)
4. Update of all dependent templates and documentation
5. Migration plan for existing code if applicable

### Versioning Policy

Constitution follows semantic versioning (MAJOR.MINOR.PATCH):

- **MAJOR**: Backward-incompatible changes (principle removal, redefinition of core requirements)
- **MINOR**: New principles added, material expansion of existing guidance
- **PATCH**: Clarifications, wording improvements, non-semantic refinements

### Compliance & Reviews

- All PRs MUST verify compliance with this constitution
- Complexity that violates principles (e.g., skipping tests, relaxing performance requirements) MUST be explicitly justified in the PR description
- Constitution review occurs quarterly to ensure alignment with project evolution

**Version**: 1.0.0 | **Ratified**: 2025-12-27 | **Last Amended**: 2025-12-27
