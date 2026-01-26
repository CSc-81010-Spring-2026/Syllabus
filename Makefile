PDF=csc_81010_sp2026_syllabus
MD=syllabus
HTML=syllabus
open:
	gio open `git remote get-url origin`
html:
	pandoc -M document-css=false --shift-heading-level-by=-1 --toc --columns=1000 -s $(MD).md -o $(HTML).html
preview-html: html
	gio open $(HTML).html
pdf:
	pandoc -V geometry:margin=1in -f gfm $(MD).md -o $(PDF).pdf
preview-pdf: pdf
	gio open $(PDF).pdf
