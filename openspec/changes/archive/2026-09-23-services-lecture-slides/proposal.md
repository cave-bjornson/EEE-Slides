## Why

High school students need an intuitive, engaging introduction to networking and operating system background services (daemons, DHCP, DNS). Creating these slides requires a clear separation of concerns: the instructor writes authoritative lecture content in Swedish in a project-root Markdown file, along with English formatting and diagram directives embedded in HTML comments. This proposal defines the workflow to transform those Markdown notes into a polished Typst presentation using Touying and Merman.

## What Changes

- Support ingesting a Markdown file located in the project root containing Swedish lecture text and embedded English HTML directives (`<!-- ... -->`).
- Preserve Swedish lecture content verbatim (no agent translation, rephrasing, or modifications).
- Interpret English directives in comments for slide structure, column layouts, progressive reveals, and diagram requests.
- Generate a Typst presentation deck configured with:
  - Touying slide framework utilizing the `simple` theme.
  - Merman package for rendering Mermaid sequence diagrams (e.g. DHCP DORA, DNS resolution) and flowcharts.
- Target high-school pedagogical concepts:
  - Background services and daemons (process lifecycle, running without a GUI, boot services).
  - DHCP (DORA flow, IP address assignment, default gateway).
  - DNS (name-to-IP resolution hierarchy, caching, local resolver).
  - Practical inspection tools and end-to-end request flow.

## Capabilities

### New Capabilities
- `services-slides`: Specifications for transforming project-root Markdown lecture notes (verbatim Swedish text with English HTML directives) into a Typst slide deck using Touying (`simple` theme) and Merman diagrams.

### Modified Capabilities
<!-- None -->

## Impact

- Input: Markdown file in the project root with Swedish text and English HTML comment directives.
- Output: Typst presentation file (`slides.typ` or `presentation.typ`).
- Tooling dependencies: Typst, Touying package (`@preview/touying`), and Merman package (`@preview/merman`).
