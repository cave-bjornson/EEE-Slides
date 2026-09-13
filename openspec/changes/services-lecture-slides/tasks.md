## 1. Input Ingestion and Verification

- [ ] 1.1 Ingest the lecture Markdown file from the project root and verify that all Swedish text sections and English `<!-- ... -->` directives are identified.
- [ ] 1.2 Parse and validate all embedded English directives (`<!-- SLIDE: ... -->`, `<!-- LEFT -->`, `<!-- RIGHT -->`, `<!-- DIAGRAM: ... -->`, `<!-- PAUSE -->`), verifying each directive has a clear mapping.
- [ ] 1.3 Parse metadata/metainstructions in beginning of file beginning with %. properties/instructions are in english followed by : and then comes the values in any language.

## 2. Presentation Setup & Slide Structure

- [ ] 2.1 Scaffold `slides.typ` with the Touying package import, `simple` theme initialization, and presentation metadata, verifying syntax validity.
- [ ] 2.2 Map slide boundaries and titles into Touying slide headings, verifying that all Swedish text is transferred verbatim without modification or translation.
- [ ] 2.3 Implement multi-column layouts and progressive reveals based on `<!-- LEFT -->`, `<!-- RIGHT -->`, and `<!-- PAUSE -->` directives.

## 3. Diagram Generation with Merman

- [ ] 3.1 Configure the Merman package import (`@preview/merman`) and slide diagram containers in `slides.typ`.
- [ ] 3.2 Translate English diagram directives for sequence flows (e.g. DHCP DORA exchange, DNS recursive lookup) into valid Mermaid sequence diagram syntax and verify diagram syntax.
- [ ] 3.3 Translate English diagram directives for process/service flows (e.g. user applications vs background daemons) into valid Mermaid flowchart syntax and verify diagram syntax.

## 4. Final Verification and Polish

- [ ] 4.1 Verify that every slide matches the requested structure, all Swedish text is preserved verbatim, and all requested diagrams are properly formatted.
- [ ] 4.2 Inspect the final `slides.typ` to verify proper escaping of Typst special characters and overall document readiness.
