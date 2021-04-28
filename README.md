# Pandoc Notes (MD -> LaTeX PDF) Config

A basic Bash script and pandoc configuration for compiling Markdown to LaTeX
PDFs.

## Requirements

- [Pandoc](https://pandoc.org)
- XeLaTeX (`texlive-full` package used)
- [Hack Nerd Font](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/Hack)

## Usage example

Usually used with an alias such as
`alias compile-notes="~/.../pandoc-notes/compile.sh"` as follows:

```bash
> compile-notes test.md
> ls
test.md  test.pdf
```

