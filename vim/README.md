Here's the list of the necessary dependencies to properly install my Vim setup:

* Powerline
* Powerline-fonts - Careful with this, in the repos only the symbols are available. The patched fonts should be manually installed or in Arch, installed via AUR.
* fzf
* the_silver_searcher - To work in conjunction with fzf
* nodejs - for CoC
* npm - nodejs' package manager (for CoC)
* Pip dependencies: flake8, pylint, pydocstyle, bandit, black, isort, autopep8, proselint

Language servers:

* C++: 
  - ccls. If the language server is not in the package manager by default, check [this webpage](https://stackoverflow.com/questions/71810868/how-to-build-ccls-on-linux-performed-on-fedora).
  - clangd (preferred). Instll `clang`, `clang-devel` and `llvm-devel`
* Haskell: haskell-language-server 
* Python: jedi-language-server. Install using pip 
