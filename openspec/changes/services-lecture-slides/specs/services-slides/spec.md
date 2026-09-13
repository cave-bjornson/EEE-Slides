## Purpose

Transforms Markdown lecture notes with Swedish text and English layout/diagram directives into a complete, compilable Typst slide presentation tailored for high school students.

## ADDED Requirements

### Requirement: Ingest Markdown Notes from Project Root
The system SHALL detect and read the lecture notes Markdown file placed in the project root.

#### Scenario: Markdown file found in root
- **WHEN** a Markdown file with lecture content is present in the project root
- **THEN** the system reads the content and processes the embedded slide directives

### Requirement: Preserve Swedish Text Verbatim
The system SHALL transfer all Swedish lecture text into the Typst presentation exactly as authored, without translation, summarization, or wording alterations.

#### Scenario: Unmodified Swedish content in slides
- **WHEN** Swedish content is provided in the lecture Markdown notes
- **THEN** the exact Swedish wording, punctuation, and phrasing are emitted directly into the corresponding Typst slide body

### Requirement: Parse English HTML Directives for Slide Formatting
The system SHALL parse English directives enclosed in HTML comments (`<!-- ... -->`) to determine slide titles, slide boundaries, column arrangements, and progressive reveals.

#### Scenario: Multi-column slide formatting
- **WHEN** an HTML directive specifies a multi-column layout with split content
- **THEN** the system emits a Touying slide utilizing side-by-side columns containing the designated content

#### Scenario: Slide title and section grouping
- **WHEN** an HTML directive specifies a slide title or section boundary
- **THEN** the system emits the corresponding Touying slide heading and metadata

### Requirement: Generate Merman Mermaid Diagrams from English Directives
The system SHALL translate English diagram descriptions inside `<!-- DIAGRAM: ... -->` comments into valid Mermaid syntax rendered through the Merman Typst package.

#### Scenario: Sequence diagram generation
- **WHEN** an English directive describes a sequence flow (such as DHCP DORA or DNS resolution)
- **THEN** the system generates a `#mermaid(...)` block with valid Mermaid sequence diagram syntax matching the description

#### Scenario: Architecture flowchart generation
- **WHEN** an English directive describes a process or service architecture flow
- **THEN** the system generates a `#mermaid(...)` block with valid Mermaid flowchart syntax

### Requirement: Touying Simple Theme Presentation Structure
The system SHALL output a standalone, valid Typst presentation document configured with Touying and the `simple` theme.

#### Scenario: Standalone Typst document generation
- **WHEN** the presentation source file is generated
- **THEN** it includes necessary package imports for Touying and Merman, applies `#show: simple-theme.with(...)`, and cleanly structures all slides
