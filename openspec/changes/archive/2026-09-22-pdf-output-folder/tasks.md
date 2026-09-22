# Tasks

## 1. Directory and Git Configuration

- [x] 1.1 Create the `output/` directory and `output/.gitkeep` file, verifying the directory and placeholder file exist.
- [x] 1.2 Create the root `.gitignore` file with rules ignoring `output/*`, whitelisting `!output/.gitkeep`, and ignoring `*.pdf`, verifying that `git check-ignore output/test.pdf` confirms the rule is active.

## 2. Verification

- [x] 2.1 Test Git tracking behavior by verifying `output/.gitkeep` appears in `git status` as tracked/staged, while any PDF inside `output/` remains ignored.
- [x] 2.2 Verify Typst compilation targeting `output/slides.pdf` succeeds and the generated PDF remains uncommitted and ignored by Git.
