#!/bin/bash

# Create the tex directory if it doesn't exist
mkdir -p tex

hierarchy_file="hierarchy.tex"
echo "" > "$hierarchy_file"

#find src/ -name "*.md" | while read file; do
for file in src/**/*.md; do
    dir=$(dirname "$file")
    
    # Create the corresponding directory in tex/
    target_dir="tex/${dir#src/}"
    mkdir -p "$target_dir"
    
    # Convert the Markdown file to LaTeX and save it in the target directory
    pandoc "$file" -o "$target_dir/$(basename "${file%.md}.tex")"
    
    # Add the directory name as a comment in hierarchy.tex
    echo "% Directory: ${dir#src/}" >> "$hierarchy_file"
    
    # Add the \input{} commands for each generated LaTeX file
    echo "\\input{$target_dir/$(basename "${file%.md}.tex")}" >> "$hierarchy_file"
done
