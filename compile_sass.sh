#!/bin/bash

# Compile each SCSS file in assets/scss/layouts/ to the corresponding CSS file in assets/css/layouts/
for file in assets/scss/layouts/*.scss; do
  base_name=$(basename "$file" .scss)
  css_file="assets/css/layouts/${base_name/_/}.css" # Menghapus "_" dari nama berkas
  sass "$file" "$css_file"
done
