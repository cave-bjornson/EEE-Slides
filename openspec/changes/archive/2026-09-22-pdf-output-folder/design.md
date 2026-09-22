# Design

## Context

See `proposal.md` for motivation. Currently, the project compiles slide decks using Typst (e.g. `slides.typ`). There is no `.gitignore` in the repository root, and compiled PDFs risk being generated in the root directory and committed to version control.

## Goals / Non-Goals

**Goals:**
- Establish a dedicated, tracked `output/` directory for generated PDF documents.
- Configure `.gitignore` so that generated PDFs and `output/` contents are excluded from Git, while preserving `output/.gitkeep`.
- Define standard Typst compilation command conventions targeting `output/`.

**Non-Goals:**
- Building automated CI/CD build scripts or GitHub Actions workflows.
- Altering slide source files or Typst templates.

## Decisions

### Decision 1: Directory naming (`output/`)
- **Choice**: Use `output/` at the project root.
- **Rationale**: `output/` is intuitive, neutral, and standard for document generation. It can accommodate presentation PDFs as well as future export formats (e.g., student handouts).
- **Alternatives considered**:
  - `pdf/`: Overly narrow if other export formats are introduced later.
  - `dist/` or `build/`: Typical for web/software projects, but less standard for document/slide authoring.

### Decision 2: Git tracking and ignore configuration
- **Choice**: Track the folder with `output/.gitkeep` and configure `.gitignore` as:
  ```gitignore
  # Output directory and compiled artifacts
  output/*
  !output/.gitkeep
  *.pdf
  ```
- **Rationale**: Adding `output/.gitkeep` ensures the folder is present immediately upon checkout so build tools that expect an existing target folder succeed without extra steps. Explicitly ignoring `*.pdf` provides a fallback if a user accidentally runs `typst compile slides.typ` in the root.
- **Alternatives considered**:
  - Ignoring `output/` entirely without `.gitkeep`: Requires manual `mkdir output` before compiling if tools do not create missing target directories.

## Risks / Trade-offs

- **[Risk]**: A developer might accidentally unignore or remove `.gitkeep`.
  - **Mitigation**: `.gitignore` explicitly whitelists `!output/.gitkeep` so Git will preserve the tracked placeholder across branches.
