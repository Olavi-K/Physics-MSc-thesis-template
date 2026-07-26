This is the MSc thesis template for physics students at the University of Helsinki. The thesis template currently supports four Master's Programmes: TCM, ParAs, ATM, and MATRES. For more information on how to write your thesis, go to [https://studies.helsinki.fi/instructions/article/thesis-and-maturity-test-masters-and-licentiate-programmes](https://studies.helsinki.fi/instructions/article/thesis-and-maturity-test-masters-and-licentiate-programmes).

For feedback and/or questions about the template, contact [olavi.kiuru@helsinki.fi](mailto:olavi.kiuru@helsinki.fi).

## Building locally with texlive and rubber
If you want to be able to edit and build your thesis locally, instead of with overleaf, do the following.

0. Install the parts of texlive that this template uses, along with rubber, a latex build tool.
This is for archlinux.
The instructions for other distros will be similar.
    ```
    > sudo pacman -S texlive-latexextra rubber texlive-bibtexextra biber texlive-langeuropean
    ```
1. Build the project with `rubber`.
    ```
    > rubber --pdf HY-Physics-main.tex
    ```
    This produces `HY-Physics-main.pdf`.

To clean, run
```
> rubber --clean HY-Physics-main.tex
```
