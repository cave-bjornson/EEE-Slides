# pdf-output Specification

## Purpose

Defines directory conventions and Git exclusion rules for compiled presentation PDF files, ensuring generated build artifacts remain isolated and excluded from version control.

## Requirements

### Requirement: Dedicated Output Directory
The project SHALL designate and maintain an `output/` directory at the project root for compiled PDF presentations and related build artifacts. The directory SHALL include a `.gitkeep` file so that the directory structure is preserved in Git upon fresh repository checkouts.

#### Scenario: Clean checkout contains output directory
- **WHEN** the repository is cloned or freshly checked out
- **THEN** the `output/` directory is present containing `.gitkeep` tracked by Git

### Requirement: Git Exclusion for PDF Outputs
The repository `.gitignore` configuration SHALL exclude compiled PDF files (`*.pdf`) and build outputs inside the `output/` directory while preserving `output/.gitkeep`.

#### Scenario: Generated PDF is ignored by Git
- **WHEN** a PDF file is generated in `output/` or at the repository root
- **THEN** `git status` does not track the generated PDF file and treats it as ignored

#### Scenario: Gitkeep file remains tracked
- **WHEN** `output/.gitkeep` is placed inside the `output/` directory
- **THEN** `git status` allows `output/.gitkeep` to be tracked and not ignored by `.gitignore`

### Requirement: Standard Typst Compilation Target
Slide compilation instructions and conventions SHALL target the `output/` directory for generated PDF documents.

#### Scenario: Slide deck compilation target
- **WHEN** a user or script invokes the Typst compiler on a slide presentation
- **THEN** the resulting PDF output is written to `output/<deck-name>.pdf`
