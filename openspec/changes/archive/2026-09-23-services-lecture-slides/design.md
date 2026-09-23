## Context

The user provides a Markdown file in the project root containing Swedish lecture material for high school students on background services, DHCP, and DNS. Directives for slide layout, boundaries, and diagrams are embedded as English HTML comments (`<!-- ... -->`). See proposal.md for motivation and specs/services-slides/spec.md for behavioral requirements.

## Goals / Non-Goals

**Goals:**
- Provide a clear, reproducible mapping from Markdown notes with embedded HTML directives to a standalone Typst slide deck.
- Implement the presentation using Touying with the `simple` theme.
- Convert English diagram descriptions into valid Mermaid syntax rendered via the Merman package.
- Enforce strict verbatim preservation of Swedish text (no translations, summarizations, or edits).
- Gracefully escape Typst special characters (`#`, `@`, `*`, `_`) when importing raw Swedish text blocks.

**Non-Goals:**
- Auto-translating Swedish text into English or other languages.
- Rephrasing or correcting the author's Swedish content.
- Managing external system packages; the design focuses on producing a valid `.typ` file.

## Decisions

### Decision 1: Touying Presentation Engine with `simple` Theme
- **Rationale**: Requested by the user. Touying is the premier slide generation package in the Typst ecosystem. The `simple` theme provides clean, distraction-free slides suitable for high school teaching without visual clutter.
- **Alternatives considered**: Touying `metropolis` (clean but darker/heavier accents), `university` (more academic chrome), Polylux (older, more verbose slide wrappers).

### Decision 2: Merman Package for In-Slide Mermaid Diagrams
- **Rationale**: Requested by the user. Merman (`@preview/merman`) parses Mermaid diagram definitions natively within Typst. This allows sequence diagrams (for DHCP DORA and DNS tree queries) and architecture flowcharts to be embedded directly as code without raster image conversion.
- **Alternatives considered**: Typst native diagram packages (Fletcher, CeTZ) which require complex coordinate positioning rather than standard Mermaid syntax.

### Decision 3: Option A (HTML Comments) Directive Parser
- **Rationale**: User confirmed Option A. Using HTML comments (`<!-- ... -->`) allows the author to read and render their Markdown file cleanly in any Markdown viewer while embedding precise directives for the slide generator.
- **Directive syntax**:
  - `<!-- SLIDE: Title [layout] -->` marks slide creation and title.
  - `<!-- LEFT -->` and `<!-- RIGHT -->` mark multi-column splits.
  - `<!-- DIAGRAM: <description> -->` prompts generation of corresponding Mermaid syntax.
  - `<!-- PAUSE -->` emits a `#pause` in Touying.

## Risks / Trade-offs

- **[Risk] Diagram overflow on slide canvas** → *Mitigation*: Set explicit max widths or scale containers (`#box(width: 85%, mermaid(...))`) for complex sequence diagrams like DHCP DORA.
- **[Risk] Typst special syntax collisions** → *Mitigation*: Ensure plain Swedish text blocks escape reserved characters (`#`, `@`, `[`, `]`) so they are not parsed as Typst code.
- **[Risk] Ambiguous diagram descriptions** → *Mitigation*: Follow standard network diagram patterns (Client <-> Server sequence diagrams for DORA and DNS lookups, box flowcharts for background vs foreground processes).
