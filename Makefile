html:
	xsltproc -o output/resume.html transform-to-html.xslt resume.xml

fo:
	xsltproc -o output/resume.fo stylesheets/transform-to-xsl-fo.xslt resume.xml

pdf:
	fop -fo output/resume.fo -pdf output/resume-cormick-browne.pdf

all:
	make fo && make pdf && open output/resume-cormick-browne.pdf

