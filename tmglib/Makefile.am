## Process this file with automake to produce Makefile.in

TMGLIB_SCATGEN = 	\
	slatm1.f	slaran.f	\
	slarnd.f

TMGLIB_SMATGEN = 	\
	slatms.f	slatme.f	\
	slatmr.f	slatmt.f	\
	slagge.f	slagsy.f	\
	slakf2.f	slarge.f	\
	slaror.f	slarot.f	\
	slatm2.f	slatm3.f	\
	slatm5.f	slatm6.f	\
	slatm7.f	slahilb.f

TMGLIB_CMATGEN =	\
	clatms.f	clatme.f	\
	clatmr.f	clatmt.f	\
	clagge.f	claghe.f	\
	clagsy.f	clakf2.f	\
	clarge.f	claror.f	\
	clarot.f	clatm1.f	\
	clarnd.f	clatm2.f	\
	clatm3.f	clatm5.f	\
	clatm6.f	clahilb.f

TMGLIB_DZATGEN = 	\
	dlatm1.f	dlaran.f	\
	dlarnd.f

TMGLIB_DMATGEN = 	\
	dlatms.f	dlatme.f	\
	dlatmr.f	dlatmt.f	\
	dlagge.f	dlagsy.f	\
	dlakf2.f	dlarge.f	\
	dlaror.f	dlarot.f	\
	dlatm2.f	dlatm3.f	\
	dlatm5.f	dlatm6.f	\
	dlatm7.f	dlahilb.f

TMGLIB_ZMATGEN =	\
	zlatms.f	zlatme.f	\
	zlatmr.f	zlatmt.f	\
	zlagge.f	zlaghe.f	\
	zlagsy.f	zlakf2.f	\
	zlarge.f	zlaror.f	\
	zlarot.f	zlatm1.f	\
	zlarnd.f	zlatm2.f	\
	zlatm3.f	zlatm5.f	\
	zlatm6.f	zlahilb.f

#page
#### library

TMGLIB_ALLOBJ = \
	$(TMGLIB_SMATGEN) $(TMGLIB_CMATGEN) $(TMGLIB_SCATGEN) \
	$(TMGLIB_DMATGEN) $(TMGLIB_ZMATGEN) $(TMGLIB_DZATGEN)

noinst_LTLIBRARIES	= libtmglib.la
libtmglib_la_LDFLAGS	= -version-info 1:0:0
libtmglib_la_SOURCES	= $(TMGLIB_ALLOBJ)

### end of file
