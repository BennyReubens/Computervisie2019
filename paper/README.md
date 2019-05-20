# Latex-Templates

This is an unofficial LaTeX template for typesetting documents in the [Official UGent style](https://styleguide.ugent.be/).

## Installation

### User install using TEXMFHOME (recommended)

Just download the zip and extract it to a directory where TeX searches for input files. In MiKTeX for instance you can use your own texmf folder, e.g. `%TEXMFHOME%/tex/latex/dnd`. Don't have a TEXMFHOME yet? If you're using MiKTeX [this page](https://miktex.org/kb/texmf-roots) explains everything you need to know.

### Seperate git clone

You could also just clone the entire repository. However you'd have to do this every time, and create a lot of duplicate files in the process. This is why recommand using TEXMFHOME.

## Getting started

This template was written and tested for [XeLaTeX](https://www.overleaf.com/learn/latex/XeLaTeX) and [biber](https://ctan.org/pkg/biber). While Luatex and bibtex might also work, I still recommend using XeLaTeX and biber.

You should also have [the official UGent font](https://styleguide.ugent.be/basisprincipes/typografie.html) installed on you're computer. If you don't want to however, you can change the font easily. How to this is explained in the paragraph _Changing Fonts_.

The Korean Global Campus uses the *Seoul NamSan* font. So if you need a Korean font, you should download the normal and the condensed version on the [English website](http://english.seoul.go.kr/get-to-know-us/seoul-views/seoul-symbols/5-fonts/).

## Bibliographies

As default citation style the template uses the *IEEE* style.

```latex
\usepackage[style=ieee,citestyle=ieee]{biblatex}
```

You can change this behaviour by simply replacing ieee by your preferred style. ([Here are some other styles](https://www.overleaf.com/learn/latex/Biblatex_bibliography_styles)) More styles can often be found on [CTAN](https://ctan.org/).

### Chicago style citation

If you want to follow the [Chicago manual of style](https://www.chicagomanualofstyle.org/home.html), you should use the **biblatex-chicago** package. It replaces the biblatex package and hence you can only use one of the two. So don't forget to comment out either one. Biblatex-chicago has many different features, all of these you can find in the [package documentation](http://mirrors.ctan.org/macros/latex/contrib/biblatex-contrib/biblatex-chicago/doc/biblatex-chicago.pdf).

Important to point out here is that the official UGent font doesn't support italic script. So if you want some text in you're citations to be in italic you should change the font to *Arial*. More on that in the paragraph _Changing Fonts_.

## Changing Fonts

If you don't want to or can't install the official font you can change it by editing the correct lines in the .cls file of the template.

```latex
\setmainfont{UGent Panno Text} -> \setmainfont{Arial}
\setmonofont{UGent Panno Text} -> \setmonofont{Arial}
```
