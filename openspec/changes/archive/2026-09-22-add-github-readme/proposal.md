# Proposal

## Why

The repository lacks a `README.md`, making it difficult for visitors and collaborators on GitHub to understand the purpose of the project, how lecture notes are structured, and how the presentation generation pipeline operates. Adding a comprehensive `README.md` establishes a clear landing page that explains the repository architecture, outline conventions, Markdown metadata and directive syntax, and compilation workflow.

## What Changes

- Create a root `README.md` formatted for GitHub presentation.
- Document project background, toolstack (Typst, Touying `simple` theme, Merman sequence/flowchart diagrams, and Cetz drawings), and language conventions (verbatim Swedish lecture text with English formatting directives).
- Document Markdown outline syntax:
  - Header metadata format (`% Title: ...`, `% Subtitle: ...`, `% Class: ...`, `% Date: ...`).
  - Slide division and titling directives (`<!-- TITLE SLIDE: ... -->`, `<!-- SLIDE: ... -->`).
  - Layout directives (`<!-- LEFT -->`, `<!-- RIGHT -->`, `<!-- PAUSE -->`).
  - Diagram and illustration directives (`<!-- DIAGRAM: ... -->`, Cetz canvas).
- Document building and compiling slides to PDF targeting the gitignored `output/` directory (`typst compile slides.typ output/slides.pdf`).

## Capabilities

### New Capabilities
- `project-readme`: Root README documentation specifying project overview, Markdown outline structure, directive syntax reference, and compilation instructions.

### Modified Capabilities

<!-- None -->

## Impact

- **Files added**: `README.md` in repository root.
- **Audience**: GitHub repository viewers, slide authors, and automated agents.
- **Dependencies**: None.
