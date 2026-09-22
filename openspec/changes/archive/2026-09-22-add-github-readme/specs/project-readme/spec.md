# Spec Delta

## Purpose

Defines documentation requirements for the repository `README.md`, ensuring clear guidance on repository architecture, slide authoring outlines, directive syntax, and compilation instructions.

## ADDED Requirements

### Requirement: Project Overview and Technology Stack Documentation
The `README.md` SHALL provide a clear introduction to the presentation slide repository, explaining the project purpose, presentation framework (Typst with Touying `simple` theme), and diagram rendering libraries (Merman and Cetz).

#### Scenario: Visitor reads project overview
- **WHEN** a user views `README.md` on GitHub
- **THEN** they can identify the purpose of the repository, the presentation engine, and the underlying tooling stack

### Requirement: Markdown Lecture Outline Syntax Documentation
The `README.md` SHALL document the Markdown outline format used for authoring lecture notes, including header metadata fields (`% Title`, `% Subtitle`, `% Class`, `% Date`) and the verbatim preservation convention for Swedish lecture content.

#### Scenario: Author inspects outline syntax
- **WHEN** an instructor or contributor drafts a Markdown lecture file
- **THEN** `README.md` provides explicit syntax examples of header metadata and slide content conventions

### Requirement: Slide Layout and Directive Syntax Documentation
The `README.md` SHALL provide a comprehensive reference of supported English HTML comment directives, including slide division (`<!-- SLIDE: ... -->`), multi-column formatting (`<!-- LEFT -->`, `<!-- RIGHT -->`), progressive reveals (`<!-- PAUSE -->`), and diagram generation (`<!-- DIAGRAM: ... -->`).

#### Scenario: Contributor looks up directive usage
- **WHEN** a contributor implements column layouts, pauses, or sequence diagrams
- **THEN** `README.md` provides exact comment syntax and usage examples for each directive

### Requirement: Compilation and Build Instructions Documentation
The `README.md` SHALL document how to compile Typst slides to PDF targeting the `output/` directory, providing copy-pasteable CLI commands and explaining that generated PDFs are excluded from version control.

#### Scenario: User follows compilation instructions
- **WHEN** a user runs the documented compilation command
- **THEN** the Typst CLI compiles the presentation directly into `output/<name>.pdf`
