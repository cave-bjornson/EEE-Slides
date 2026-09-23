## 1. Input Ingestion and Verification

- [x] 1.1 Ingest the lecture Markdown file from the project root and verify that all Swedish text sections and English `<!-- ... -->` directives are identified.
- [x] 1.2 Parse and validate all embedded English directives (`<!-- SLIDE: ... -->`, `<!-- LEFT -->`, `<!-- RIGHT -->`, `<!-- DIAGRAM: ... -->`, `<!-- PAUSE -->`), verifying each directive has a clear mapping.
- [x] 1.3 Parse metadata/metainstructions in beginning of file beginning with %. properties/instructions are in english followed by : and then comes the values in any language.

## 2. Presentation Setup & Slide Structure

- [x] 2.1 Scaffold `slides.typ` with the Touying package import, `simple` theme initialization, and presentation metadata, verifying syntax validity.
- [x] 2.2 Map slide boundaries and titles into Touying slide headings, verifying that all Swedish text is transferred verbatim without modification or translation.
- [x] 2.3 Implement `#slide-cols` helper for `<!-- LEFT -->`/`<!-- RIGHT -->` two-column layouts and ensure `#pause` is available for `<!-- PAUSE -->` progressive reveals in any source markdown.

## 3. Diagram Generation with Merman

- [x] 3.1 Configure the Merman package import (`@preview/merman:0.3.0`) and define `#slide-diagram` container helper in `slides.typ` for use with any `<!-- DIAGRAM: -->` directive.
- [x] 3.2 Define and document the `#slide-diagram` pattern for sequence flows so any `<!-- DIAGRAM: sequence ... -->` directive can be translated into valid Mermaid sequence diagram syntax using the established helper.
- [x] 3.3 Define and document the `#slide-diagram` pattern for flowcharts so any `<!-- DIAGRAM: flow ... -->` directive can be translated into valid Mermaid flowchart syntax using the established helper.

## 4. Visualize with Cetz package

- [x] 4.1 Configure the CETZ package import (`@preview/cetz:0.5.2`).
- [x] 4.2 Translate English directives to produce drawings with Cetz code.
- [x] 4.3 Without other directives, keep the drawings clear and simple. Prefer line drawings with filled in colors instead of more 3D or realistic style.

## 5. Final Verification and Polish

- [x] 4.1 Verify that the current slides match the requested structure, all Swedish text is preserved verbatim, the document compiles without errors, and all directive helpers are in place for future content.
- [x] 4.2 Inspect `slides.typ` to verify proper escaping of Typst special characters and overall document readiness.
