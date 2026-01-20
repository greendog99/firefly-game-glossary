#!/bin/bash

export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
export GS=/opt/homebrew/bin/gs
themes=(letter a4)

for theme in "${themes[@]}"; do
  asciidoctor-pdf -v -a optimize -a pdf-fontsdir="fonts;GEM_FONTS_DIR" --theme theme-$theme.yml firefly-glossary.adoc -o firefly-glossary-$theme.pdf
  #asciidoctor-pdf -v -a pdf-fontsdir="fonts;GEM_FONTS_DIR" --theme theme-$theme.yml firefly-glossary.adoc -o firefly-glossary-$theme.pdf
done
