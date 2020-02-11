#!/bin/bash

mkdir -p output

pandoc -f markdown -t docx resume.md -o output/resume.docx
pandoc -f markdown -t html resume.md -o output/index.html
pandoc -f markdown resume.md -o output/resume.pdf
pandoc -f markdown -t odt resume.md -o output/resume.odt

sed -i '1s/^/<a href="resume.docx">DOCX<\/a> <a href="resume.pdf">PDF<\/a> <a href="resume.odt">ODT<\/a> <a href="https:\/\/github.com\/bsharitt\/resume">Source<\/a>/' output/index.html

rm -rf /home/bsharitt/public_html/resume
cp -r output /home/bsharitt/public_html/resume