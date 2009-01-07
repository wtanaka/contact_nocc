clean:
	find . -name "*~" -print -exec /bin/rm \{\} \;

realclean: clean
	rm -f contact_nocc-*.tar.gz

tarball: clean
	tar cvf - contact_nocc | gzip -9 -c > contact_nocc-`git describe`.tar.gz
