#!/bin/bash

# Determine output PDF filename from MD filename
md_filename="$1"
pdf_filename="${md_filename%%.*}.pdf"

# Remove existing PDF file if it exists
rm -f $pdf_filename

# Determine script/config location
script_dir=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )

# Compile using pandoc
pandoc "$md_filename" \
       --standalone \
       --pdf-engine=xelatex \
       --include-in-header "${script_dir}/config/header.tex" \
       --include-before-body "${script_dir}/config/before_body.tex" \
       --highlight-style "${script_dir}/config/kate.theme" \
       -V fontsize=11pt \
       -V geometry:margin=0.75in \
       -V geometry:letterpaper \
       -V monofont="Hack Nerd Font" \
       -o "$pdf_filename"

