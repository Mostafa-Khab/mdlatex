# mdlatex (on linux)
- create pdf files using latex + markdown in a organised structure for ease of use

### prerequisites
- pandoc
- pdflatex
- make

### How to use
```
  make convert
  make pdf
```
- if you have prerequisites installed you should find main.pdf in output/ folder
- you may need to modify hierarchy manually after running `make convert`
- add you notes in markdown format in src/ folder, all notes in subfolders will be compiled to pdf
- all the notes in markdown will be translated to .tex files in tex/ folder with same folder structure
  as src/ folder
- `make convert` convert all .md files in src/ to .tex files in tex/

### project structure
```
.
├── Makefile
├── README.md
├── convert.sh
├── hierarchy.tex
├── main.tex
├── output
│   ├── logs
│   │   └── main.log
│   ├── main.aux
│   └── main.pdf
├── src
│   ├── sub1
│   │   ├── file1.md
│   │   └── file2.md
│   └── sub2
│       ├── file1.md
│       └── file2.md
└── tex
    ├── sub1
    │   ├── file1.tex
    │   └── file2.tex
    └── sub2
        ├── file1.tex
        └── file2.tex
```
