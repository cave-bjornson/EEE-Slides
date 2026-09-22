# EEE-Slides

Lecture presentations for the **EEDAK25** engineering program.

This repository manages slide decks built with [Typst](https://typst.app/), rendered using the [Touying](https://github.com/touying-typ/touying) presentation framework (`simple` theme), and illustrated with [Merman](https://github.com/tingerrr/merman) (Mermaid diagrams) and [CeTZ](https://github.com/cetz-package/cetz) (vector drawings).

---

## Authoring Workflow

Presentations in this project follow a two-tier authoring model:

1. **Lecture Notes (`<topic>.md`)**: The instructor writes authoritative lecture notes in a Markdown file placed at the project root.
   - **Content Language**: Swedish (preserved verbatim in slide bodies without automated translation or rephrasing).
   - **Formatting & Layout Directives**: Written in English inside HTML comments (`<!-- ... -->`) and metadata lines (`% ...`).
2. **Slide Deck (`slides.typ`)**: Markdown notes and directives are transformed into a clean, standalone Typst slide deck.
3. **PDF Export (`output/<name>.pdf`)**: The presentation compiles directly into a standalone PDF in the gitignored `output/` directory.

---

## Outlines and Basic Syntax

Lecture notes start with document metadata followed by slide definitions and content.

### 1. Document Metadata

At the top of the Markdown notes file, define presentation metadata using `% Key: Value` lines:

```markdown
% Title: Tjänster (Services)
% Subtitle: DNS • DHCP • Fileshares • SSH
% Class: EEDAK25
% Date: 2026-09-15
<!-- TITLE SLIDE: (insert metadata) -->
```

| Field | Description | Example |
| :--- | :--- | :--- |
| `% Title:` | Main presentation title | `% Title: Tjänster (Services)` |
| `% Subtitle:` | Subtitle or key topics covered | `% Subtitle: DNS • DHCP • Fileshares • SSH` |
| `% Class:` | Student group or course code | `% Class: EEDAK25` |
| `% Date:` | Lecture date (`YYYY-MM-DD` or `YYMMDD`) | `% Date: 2026-09-15` |

---

### 2. Slide Structure & Content

Each slide is initiated using an HTML comment directive:

```markdown
<!-- SLIDE: Title is "Tjänster" and below is an Illustration of a tux penguin monitoring a linux Daemon with a magnifying glass -->
```
or with an explicit title label:
```markdown
<!-- SLIDE: Title: Tjänster - Definition -->

- Tjänster eller Services är applikationer som utför en specifik uppgift i bakgrunden utan input från användaren.
- De kan startas och stoppas direkt av användaren men det normala är att använda någon form av övervakare.
```

- Any bullet points, paragraphs, or lists written under a slide directive belong to that slide's body.
- Swedish lecture text is preserved verbatim into the presentation slides.

---

### 3. Layout & Reveal Directives

Use directives to structure slide layouts and progressive reveals:

| Directive | Description | Example |
| :--- | :--- | :--- |
| `<!-- TITLE SLIDE: ... -->` | Generates a title slide utilizing presentation metadata. | `<!-- TITLE SLIDE: (insert metadata) -->` |
| `<!-- SLIDE: Title: <text> -->` | Begins a new slide with the specified heading. | `<!-- SLIDE: Title: DNS Uppslagning -->` |
| `<!-- LEFT -->` | Marks the beginning of the left column in a multi-column slide. | `<!-- LEFT -->\n- Vänster kolumn innehåll` |
| `<!-- RIGHT -->` | Marks the beginning of the right column in a multi-column slide. | `<!-- RIGHT -->\n- Höger kolumn innehåll` |
| `<!-- PAUSE -->` | Inserts a progressive reveal step between bullet points or sections. | `- Punkt 1\n<!-- PAUSE -->\n- Punkt 2` |

---

### 4. Diagrams & Illustrations

#### Mermaid Sequence and Architecture Diagrams (`Merman`)
Directives starting with `<!-- DIAGRAM: ... -->` instruct the engine to generate Mermaid diagrams:

```markdown
<!-- DIAGRAM: Mermaid sequence diagram showing DHCP DORA exchange between Client and Server -->
```

This translates to Typst via the `@preview/merman:0.3.0` package:
```typst
#mermaid(`
sequenceDiagram
    Client->>Server: DHCPDISCOVER
    Server-->>Client: DHCPOFFER
    Client->>Server: DHCPREQUEST
    Server-->>Client: DHCPACK
`)
```

#### CeTZ Vector Drawings
For custom graphical illustrations (such as Linux Tux monitoring daemons or network topology layouts), drawings are rendered using `@preview/cetz:0.5.2`:
- Line drawings with clear, filled colors are preferred over 3D or realistic styles.
- Canvas drawings are embedded directly into `#align(center + horizon)[ #cetz.canvas(...) ]`.

---

## Compiling Slides

### Prerequisites

Ensure the [Typst CLI](https://github.com/typst/typst) is installed on your system.

### Build to PDF

Compiled PDFs must be written into the `output/` directory:

```bash
typst compile slides.typ output/slides.pdf
```

To watch for file changes and recompile automatically during authoring:

```bash
typst watch slides.typ output/slides.pdf
```

> [!NOTE]
> The `output/` directory is tracked via `.gitkeep`, but all compiled `*.pdf` files are ignored by `.gitignore` to prevent binary build artifacts from polluting the Git repository.

---

## Repository Structure

```
├── .gitignore          # Ignores *.pdf and output/* (preserves output/.gitkeep)
├── output/             # Destination for compiled PDF presentations (gitignored)
│   └── .gitkeep
├── services.md         # Source lecture notes (Markdown + directives)
├── slides.typ          # Compiled Typst presentation (Touying + Merman + Cetz)
├── openspec/           # OpenSpec planning, capability specs, and changes
└── README.md           # Project documentation and syntax reference
```
