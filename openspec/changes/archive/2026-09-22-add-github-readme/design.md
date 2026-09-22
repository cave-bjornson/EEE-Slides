# Design

## Context

See `proposal.md` for motivation. Currently, the repository contains lecture notes (`services.md`), generated Typst slides (`slides.typ`), an output directory (`output/`), and OpenSpec configurations, but lacks a root `README.md` explaining how the slide deck is authored, organized, and compiled.

## Goals / Non-Goals

**Goals:**
- Provide a clean, well-formatted `README.md` at the repository root tailored for GitHub.
- Clearly explain the project architecture and presentation stack (Typst + Touying `simple` theme + Merman + Cetz).
- Document the authoring workflow: instructors author lecture content in Swedish using Markdown files in the project root, augmented with English directives in HTML comments.
- Detail the outline and syntax conventions (metadata lines, slide delimiters, column splits, pauses, and diagram directives).
- Provide copy-pasteable build commands for compiling slides to `output/<name>.pdf`.

**Non-Goals:**
- Modifying existing slide notes (`services.md`) or Typst presentations (`slides.typ`).
- Adding automated build scripts or GitHub Actions workflows.

## Decisions

### Decision 1: Document Structure
- **Choice**: Organize `README.md` into distinct, accessible sections:
  1. **Overview & Tech Stack**: Project purpose, Touying, Merman, Cetz.
  2. **Authoring Workflow**: Swedish lecture content rule + English formatting directives.
  3. **Outline & Syntax Guide**:
     - Header Metadata (`% Key: Value`)
     - Slide Delimiters (`<!-- TITLE SLIDE: ... -->`, `<!-- SLIDE: ... -->`)
     - Column Layouts (`<!-- LEFT -->`, `<!-- RIGHT -->`)
     - Progressive Reveals (`<!-- PAUSE -->`)
     - Diagrams & Drawings (`<!-- DIAGRAM: ... -->`, Cetz canvas)
  4. **Compilation & Output**: Command-line instructions for building to `output/`.
  5. **Repository Layout**: Brief directory tree showing where files live.
- **Rationale**: This logical progression gives new contributors and automated agents immediate understanding of how to read and write slide decks.
- **Alternatives considered**:
  - Embedding documentation inside `services.md`: Clutters the authoritative lecture source.

### Decision 2: Language Conventions
- **Choice**: Write `README.md` in English.
- **Rationale**: Matches GitHub open conventions, OpenSpec artifacts, and the English directives used within the project. The README will explicitly note that lecture content itself is authored in Swedish.

### Decision 3: Concrete Syntax Examples
- **Choice**: Use realistic syntax examples directly mirroring `services.md`.
- **Rationale**: Grounding examples in actual project conventions prevents ambiguity for authors and LLMs.

## Risks / Trade-offs

- **[Risk]**: New directives or packages might be added later, causing documentation drift.
  - **Mitigation**: Structure the directive reference in a modular table/list format that is easily updated when capabilities expand.
