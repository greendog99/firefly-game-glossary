#!/bin/bash

export GS=/opt/homebrew/bin/gs
themes=(letter)

for theme in "${themes[@]}"; do
  asciidoctor-pdf -v -a optimize -a pdf-fontsdir="fonts;GEM_FONTS_DIR" --theme theme-$theme.yml firefly-glossary.adoc -o firefly-glossary-$theme.pdf
done
