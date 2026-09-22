# Proposal

## Why

Compiling Typst presentation slides (such as `slides.typ`) produces binary PDF files. Without a dedicated output directory and version control exclusion rules, compiled PDFs risk cluttering the project root and being inadvertently committed to Git. Establishing a standard gitignored output directory provides a clean build destination and prevents binary artifacts from polluting repository history.

## What Changes

- Create a dedicated `output/` directory at the project root for compiled PDF presentations.
- Add an `output/.gitkeep` file so the folder exists in version control for clean checkouts.
- Create or update `.gitignore` at the project root to exclude compiled PDF files (`*.pdf`, `output/*` except `.gitkeep`).
- Establish standard output conventions for compiling Typst slide decks into the `output/` directory.

## Capabilities

### New Capabilities
- `pdf-output`: Directory structure and Git exclusion rules for compiled presentation PDF artifacts.

### Modified Capabilities

<!-- None -->

## Impact

- **File structure**: Adds `.gitignore` in the repository root and initializes `output/.gitkeep`.
- **Workflows**: Typst build commands will target `output/<name>.pdf` (e.g., `typst compile slides.typ output/slides.pdf`).
- **Dependencies**: No external tools or package dependencies required.
