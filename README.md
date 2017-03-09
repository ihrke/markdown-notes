# markdown-notes

Note-taking in markdown via LateX.

- See [markdown-talk](https://github.com/ihrke/markdown-talk) for template for a beamer-based presentation.
- See [markdown-paper](https://github.com/ihrke/markdown-paper) for template for a scientific paper.

The source is written in [markdown](https://daringfireball.net/projects/markdown/) and translated to latex using [pandoc](http://pandoc.org/) and customized templates located in the `templates` folder. References are stored in `references.bib` in [bibtex](http://www.bibtex.org/) format.

The `Makefile` details how the translation works. If you are on linux, simply calling `make` in the parent directory will compile the report to a pdf-format if all dependencies are installed. Edit the variables in the Makefile to choose a template (located in `./templates`).

## Usage

1. Install the dependencies

    ~~~{bash}
    sudo apt-get install pandoc pandoc-citeproc
    pip install pandoc-fignos
    ~~~
2. Clone this repository

    ~~~{bash}
    git clone
    ~~~
3. Edit `Makefile` to choose a template
4. Write notes in `notes.md` (or add more `.md` files and put them into the `Makefile`), refs in `references.bib`, compile with `make`

NOTE: `notes.md` contains example code for tables, figures, equations, references and so on.

## Recommended Editor/Tools

I think it works very nicely to write markdown-based papers in the [atom](https://atom.io/) editor. The following packages are useful:

- [autocomplete-bibtex](https://github.com/apcshields/autocomplete-bibtex)

    Allows to get a drop-down list of references when writing `@citation`. However, it is currently necessary to put a global `.bib` file into the config file `config.cson` (see [documentation](https://atom.io/docs/latest/customizing-atom#advanced-configuration)):

    ~~~{yaml}
    'autocomplete-bibtex':
      'references': [
        '/path/to/references.bib'
        '/path/to/references.json'
      ]
    ~~~
- [markdown-preview](https://github.com/burodepeper/language-markdown) for nice syntax highlighting
- [pdf-view](https://github.com/izuzak/atom-pdf-view) for viewing the PDF in Atom directly

## Dependencies

- [pandoc](http://pandoc.org/)
- [pandoc-fignos](https://github.com/tomduck/pandoc-fignos)
- [pandoc-citeproc](https://github.com/jgm/pandoc-citeproc)
- a [latex](https://www.latex-project.org/)-distribution (e.g., [texlive](https://www.tug.org/texlive/)) including [bibtex](http://www.bibtex.org/)

---

Matthias Mittner <matthias.mittner@uit.no>
