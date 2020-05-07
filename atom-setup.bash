#!/bin/bash

atom_pkgs=(
  autocomplete-python
  language-latex
  language-matlab-octave
  markdown-toc
  tidy-markdown
)

for pkg in ${atom_pkgs[@]}
do
  apm install $pkg
done

echo -e "\nAtom setup completed"

