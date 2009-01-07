clean:
	find . -name "*~" -print -exec /bin/rm \{\} \;

tarball: clean
	tar cvf - contact_nocc | gzip -9 -c > contact_nocc-`git describe`.tar.gz
