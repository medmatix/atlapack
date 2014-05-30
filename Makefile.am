## Process this file with automake to produce Makefile.in

SUBDIRS			= lapack tmglib lapacke doc
ACLOCAL_AMFLAGS		= -I meta/autotools
AUTOMAKE_OPTIONS	= foreign
dist_doc_DATA		= README COPYING
EXTRA_DIST		= INSTALL

AM_CFLAGS		= -I $(srcdir)/lapacke/src -I $(srcdir)/lapacke/utils

#page
#### tests

# check_PROGRAMS	=
# LDADD		= liblapacke.la
# TESTS		= $(check_PROGRAMS)

# ## --------------------------------------------------------------------
# ## Linear algebra tests.
# ## --------------------------------------------------------------------

# LINDIR	= tests/lin

# ALINTST = \
# 	$(LINDIR)/aladhd.f	$(LINDIR)/alaerh.f	\
# 	$(LINDIR)/alaesm.f	$(LINDIR)/alahd.f	\
# 	$(LINDIR)/alareq.f	$(LINDIR)/alasum.f	\
# 	$(LINDIR)/alasvm.f	$(LINDIR)/chkxer.f	\
# 	$(LINDIR)/icopy.f	$(LINDIR)/ilaenv.f	\
# 	$(LINDIR)/xlaenv.f	$(LINDIR)/xerbla.f

# SCLNTST	= $(LINDIR)/slaord.f

# DZLNTST	= $(LINDIR)/dlaord.f

# SLINTST	= \
# 	$(LINDIR)/schkaa.f	$(LINDIR)/schkeq.f	\
# 	$(LINDIR)/schkgb.f	$(LINDIR)/schkge.f	\
# 	$(LINDIR)/schkgt.f	$(LINDIR)/schklq.f	\
# 	$(LINDIR)/schkpb.f	$(LINDIR)/schkpo.f	\
# 	$(LINDIR)/schkps.f	$(LINDIR)/schkpp.f	\
# 	$(LINDIR)/schkpt.f	$(LINDIR)/schkq3.f	\
# 	$(LINDIR)/schkql.f	$(LINDIR)/schkqp.f	\
# 	$(LINDIR)/schkqr.f	$(LINDIR)/schkrq.f	\
# 	$(LINDIR)/schksp.f	$(LINDIR)/schksy.f	\
# 	$(LINDIR)/schksy_rook.f	$(LINDIR)/schktb.f	\
# 	$(LINDIR)/schktp.f	$(LINDIR)/schktr.f	\
# 	$(LINDIR)/schktz.f	$(LINDIR)/sdrvgt.f	\
# 	$(LINDIR)/sdrvls.f	$(LINDIR)/sdrvpb.f	\
# 	$(LINDIR)/sdrvpp.f	$(LINDIR)/sdrvpt.f	\
# 	$(LINDIR)/sdrvsp.f	$(LINDIR)/sdrvsy_rook.f	\
# 	$(LINDIR)/serrgt.f	$(LINDIR)/serrlq.f	\
# 	$(LINDIR)/serrls.f	$(LINDIR)/serrps.f	\
# 	$(LINDIR)/serrql.f	$(LINDIR)/serrqp.f	\
# 	$(LINDIR)/serrqr.f	$(LINDIR)/serrrq.f	\
# 	$(LINDIR)/serrtr.f	$(LINDIR)/serrtz.f	\
# 	$(LINDIR)/sgbt01.f	$(LINDIR)/sgbt02.f	\
# 	$(LINDIR)/sgbt05.f	$(LINDIR)/sgelqs.f	\
# 	$(LINDIR)/sgeqls.f	$(LINDIR)/sgeqrs.f	\
# 	$(LINDIR)/sgerqs.f	$(LINDIR)/sget01.f	\
# 	$(LINDIR)/sget02.f	$(LINDIR)/sget03.f	\
# 	$(LINDIR)/sget04.f	$(LINDIR)/sget06.f	\
# 	$(LINDIR)/sget07.f	$(LINDIR)/sgtt01.f	\
# 	$(LINDIR)/sgtt02.f	$(LINDIR)/sgtt05.f	\
# 	$(LINDIR)/slaptm.f	$(LINDIR)/slarhs.f	\
# 	$(LINDIR)/slatb4.f	$(LINDIR)/slatb5.f	\
# 	$(LINDIR)/slattb.f	$(LINDIR)/slattp.f	\
# 	$(LINDIR)/slattr.f	$(LINDIR)/slavsp.f	\
# 	$(LINDIR)/slavsy.f	$(LINDIR)/slavsy_rook.f	\
# 	$(LINDIR)/slqt01.f	$(LINDIR)/slqt02.f	\
# 	$(LINDIR)/slqt03.f	$(LINDIR)/spbt01.f	\
# 	$(LINDIR)/spbt02.f	$(LINDIR)/spbt05.f	\
# 	$(LINDIR)/spot01.f	$(LINDIR)/spot02.f	\
# 	$(LINDIR)/spot03.f	$(LINDIR)/spot05.f	\
# 	$(LINDIR)/spst01.f	$(LINDIR)/sppt01.f	\
# 	$(LINDIR)/sppt02.f	$(LINDIR)/sppt03.f	\
# 	$(LINDIR)/sppt05.f	$(LINDIR)/sptt01.f	\
# 	$(LINDIR)/sptt02.f	$(LINDIR)/sptt05.f	\
# 	$(LINDIR)/sqlt01.f	$(LINDIR)/sqlt02.f	\
# 	$(LINDIR)/sqlt03.f	$(LINDIR)/sqpt01.f	\
# 	$(LINDIR)/sqrt01.f	$(LINDIR)/sqrt01p.f	\
# 	$(LINDIR)/sqrt02.f	$(LINDIR)/sqrt03.f	\
# 	$(LINDIR)/sqrt11.f	$(LINDIR)/sqrt12.f	\
# 	$(LINDIR)/sqrt13.f	$(LINDIR)/sqrt14.f	\
# 	$(LINDIR)/sqrt15.f	$(LINDIR)/sqrt16.f	\
# 	$(LINDIR)/sqrt17.f	$(LINDIR)/srqt01.f	\
# 	$(LINDIR)/srqt02.f	$(LINDIR)/srqt03.f	\
# 	$(LINDIR)/srzt01.f	$(LINDIR)/srzt02.f	\
# 	$(LINDIR)/sspt01.f	$(LINDIR)/ssyt01.f	\
# 	$(LINDIR)/ssyt01_rook.f	$(LINDIR)/stbt02.f	\
# 	$(LINDIR)/stbt03.f	$(LINDIR)/stbt05.f	\
# 	$(LINDIR)/stbt06.f	$(LINDIR)/stpt01.f	\
# 	$(LINDIR)/stpt02.f	$(LINDIR)/stpt03.f	\
# 	$(LINDIR)/stpt05.f	$(LINDIR)/stpt06.f	\
# 	$(LINDIR)/strt01.f	$(LINDIR)/strt02.f	\
# 	$(LINDIR)/strt03.f	$(LINDIR)/strt05.f	\
# 	$(LINDIR)/strt06.f	$(LINDIR)/stzt01.f	\
# 	$(LINDIR)/stzt02.f	$(LINDIR)/sgennd.f	\
# 	$(LINDIR)/sqrt04.f	$(LINDIR)/sqrt05.f	\
# 	$(LINDIR)/schkqrt.f	$(LINDIR)/serrqrt.f	\
# 	$(LINDIR)/schkqrtp.f	$(LINDIR)/serrqrtp.f

# ## --------------------------------------------------------------------

# if USEXBLAS
# SLINTST += 	\
# 	$(LINDIR)/serrvxx.f	$(LINDIR)/sdrvgex.f	\
# 	$(LINDIR)/sdrvsyx.f	$(LINDIR)/serrgex.f	\
# 	$(LINDIR)/sdrvgbx.f	$(LINDIR)/sdrvpox.f	\
# 	$(LINDIR)/sebchvxx.f	$(LINDIR)/serrsyx.f	\
# 	$(LINDIR)/serrpox.f

# else
# SLINTST += 	\
# 	$(LINDIR)/serrvx.f	$(LINDIR)/sdrvge.f	\
# 	$(LINDIR)/sdrvsy.f	$(LINDIR)/serrge.f	\
# 	$(LINDIR)/sdrvgb.f	$(LINDIR)/sdrvpo.f	\
# 	$(LINDIR)/serrsy.f	$(LINDIR)/serrpo.f
# endif

# CLINTST = 	\
# 	$(LINDIR)/cchkaa.f	$(LINDIR)/cchkeq.f	\
# 	$(LINDIR)/cchkgb.f	$(LINDIR)/cchkge.f	\
# 	$(LINDIR)/cchkgt.f	$(LINDIR)/cchkhe.f	\
# 	$(LINDIR)/cchkhe_rook.f	$(LINDIR)/cchkhp.f	\
# 	$(LINDIR)/cchklq.f	$(LINDIR)/cchkpb.f	\
# 	$(LINDIR)/cchkpo.f	$(LINDIR)/cchkps.f	\
# 	$(LINDIR)/cchkpp.f	$(LINDIR)/cchkpt.f	\
# 	$(LINDIR)/cchkq3.f	$(LINDIR)/cchkql.f	\
# 	$(LINDIR)/cchkqp.f	$(LINDIR)/cchkqr.f	\
# 	$(LINDIR)/cchkrq.f	$(LINDIR)/cchksp.f	\
# 	$(LINDIR)/cchksy.f	$(LINDIR)/cchksy_rook.f	\
# 	$(LINDIR)/cchktb.f	$(LINDIR)/cchktp.f	\
# 	$(LINDIR)/cchktr.f	$(LINDIR)/cchktz.f	\
# 	$(LINDIR)/cdrvgt.f	$(LINDIR)/cdrvhe_rook.f	\
# 	$(LINDIR)/cdrvhp.f	$(LINDIR)/cdrvls.f	\
# 	$(LINDIR)/cdrvpb.f	$(LINDIR)/cdrvpp.f	\
# 	$(LINDIR)/cdrvpt.f	$(LINDIR)/cdrvsp.f	\
# 	$(LINDIR)/cdrvsy_rook.f	$(LINDIR)/cerrgt.f	\
# 	$(LINDIR)/cerrlq.f	$(LINDIR)/cerrls.f	\
# 	$(LINDIR)/cerrps.f	$(LINDIR)/cerrql.f	\
# 	$(LINDIR)/cerrqp.f	$(LINDIR)/cerrqr.f	\
# 	$(LINDIR)/cerrrq.f	$(LINDIR)/cerrtr.f	\
# 	$(LINDIR)/cerrtz.f	$(LINDIR)/cgbt01.f	\
# 	$(LINDIR)/cgbt02.f	$(LINDIR)/cgbt05.f	\
# 	$(LINDIR)/cgelqs.f	$(LINDIR)/cgeqls.f	\
# 	$(LINDIR)/cgeqrs.f	$(LINDIR)/cgerqs.f	\
# 	$(LINDIR)/cget01.f	$(LINDIR)/cget02.f	\
# 	$(LINDIR)/cget03.f	$(LINDIR)/cget04.f	\
# 	$(LINDIR)/cget07.f	$(LINDIR)/cgtt01.f	\
# 	$(LINDIR)/cgtt02.f	$(LINDIR)/cgtt05.f	\
# 	$(LINDIR)/chet01.f	$(LINDIR)/chet01_rook.f	\
# 	$(LINDIR)/chpt01.f	$(LINDIR)/claipd.f	\
# 	$(LINDIR)/claptm.f	$(LINDIR)/clarhs.f	\
# 	$(LINDIR)/clatb4.f	$(LINDIR)/clatb5.f	\
# 	$(LINDIR)/clatsp.f	$(LINDIR)/clatsy.f	\
# 	$(LINDIR)/clattb.f	$(LINDIR)/clattp.f	\
# 	$(LINDIR)/clattr.f	$(LINDIR)/clavhe.f	\
# 	$(LINDIR)/clavhe_rook.f	$(LINDIR)/clavhp.f	\
# 	$(LINDIR)/clavsp.f	$(LINDIR)/clavsy.f	\
# 	$(LINDIR)/clavsy_rook.f	$(LINDIR)/clqt01.f	\
# 	$(LINDIR)/clqt02.f	$(LINDIR)/clqt03.f	\
# 	$(LINDIR)/cpbt01.f	$(LINDIR)/cpbt02.f	\
# 	$(LINDIR)/cpbt05.f	$(LINDIR)/cpot01.f	\
# 	$(LINDIR)/cpot02.f	$(LINDIR)/cpot03.f	\
# 	$(LINDIR)/cpot05.f	$(LINDIR)/cpst01.f	\
# 	$(LINDIR)/cppt01.f	$(LINDIR)/cppt02.f	\
# 	$(LINDIR)/cppt03.f	$(LINDIR)/cppt05.f	\
# 	$(LINDIR)/cptt01.f	$(LINDIR)/cptt02.f	\
# 	$(LINDIR)/cptt05.f	$(LINDIR)/cqlt01.f	\
# 	$(LINDIR)/cqlt02.f	$(LINDIR)/cqlt03.f	\
# 	$(LINDIR)/cqpt01.f	$(LINDIR)/cqrt01.f	\
# 	$(LINDIR)/cqrt01p.f	$(LINDIR)/cqrt02.f	\
# 	$(LINDIR)/cqrt03.f	$(LINDIR)/cqrt11.f	\
# 	$(LINDIR)/cqrt12.f	$(LINDIR)/cqrt13.f	\
# 	$(LINDIR)/cqrt14.f	$(LINDIR)/cqrt15.f	\
# 	$(LINDIR)/cqrt16.f	$(LINDIR)/cqrt17.f	\
# 	$(LINDIR)/crqt01.f	$(LINDIR)/crqt02.f	\
# 	$(LINDIR)/crqt03.f	$(LINDIR)/crzt01.f	\
# 	$(LINDIR)/crzt02.f	$(LINDIR)/csbmv.f	\
# 	$(LINDIR)/cspt01.f	$(LINDIR)/cspt02.f	\
# 	$(LINDIR)/cspt03.f	$(LINDIR)/csyt01.f	\
# 	$(LINDIR)/csyt01_rook.f	$(LINDIR)/csyt02.f	\
# 	$(LINDIR)/csyt03.f	$(LINDIR)/ctbt02.f	\
# 	$(LINDIR)/ctbt03.f	$(LINDIR)/ctbt05.f	\
# 	$(LINDIR)/ctbt06.f	$(LINDIR)/ctpt01.f	\
# 	$(LINDIR)/ctpt02.f	$(LINDIR)/ctpt03.f	\
# 	$(LINDIR)/ctpt05.f	$(LINDIR)/ctpt06.f	\
# 	$(LINDIR)/ctrt01.f	$(LINDIR)/ctrt02.f	\
# 	$(LINDIR)/ctrt03.f	$(LINDIR)/ctrt05.f	\
# 	$(LINDIR)/ctrt06.f	$(LINDIR)/ctzt01.f	\
# 	$(LINDIR)/ctzt02.f	$(LINDIR)/sget06.f	\
# 	$(LINDIR)/cgennd.f	$(LINDIR)/cqrt04.f	\
# 	$(LINDIR)/cqrt05.f	$(LINDIR)/cchkqrt.f	\
# 	$(LINDIR)/cerrqrt.f	$(LINDIR)/cchkqrtp.f	\
# 	$(LINDIR)/cerrqrtp.f

# if USEXBLAS
# CLINTST += 	\
# 	$(LINDIR)/cerrvxx.f	$(LINDIR)/cdrvgex.f	\
# 	$(LINDIR)/cdrvsyx.f	$(LINDIR)/cdrvgbx.f	\
# 	$(LINDIR)/cerrgex.f	$(LINDIR)/cdrvpox.f	\
# 	$(LINDIR)/cdrvhex.f	$(LINDIR)/cerrpox.f	\
# 	$(LINDIR)/cebchvxx.f	$(LINDIR)/cerrsyx.f	\
# 	$(LINDIR)/cerrhex.f
# else
# CLINTST += 	\
# 	$(LINDIR)/cerrvx.f	$(LINDIR)/cdrvge.f	\
# 	$(LINDIR)/cdrvsy.f	$(LINDIR)/cdrvgb.f	\
# 	$(LINDIR)/cerrge.f	$(LINDIR)/cdrvpo.f	\
# 	$(LINDIR)/cdrvhe.f	$(LINDIR)/cerrpo.f	\
# 	$(LINDIR)/cerrsy.f	$(LINDIR)/cerrhe.f
# endif

# DLINTST = 	\
# 	$(LINDIR)/dchkaa.f	$(LINDIR)/dchkeq.f	\
# 	$(LINDIR)/dchkgb.f	$(LINDIR)/dchkge.f	\
# 	$(LINDIR)/dchkgt.f	$(LINDIR)/dchklq.f	\
# 	$(LINDIR)/dchkpb.f	$(LINDIR)/dchkpo.f	\
# 	$(LINDIR)/dchkps.f	$(LINDIR)/dchkpp.f	\
# 	$(LINDIR)/dchkpt.f	$(LINDIR)/dchkq3.f	\
# 	$(LINDIR)/dchkql.f	$(LINDIR)/dchkqp.f	\
# 	$(LINDIR)/dchkqr.f	$(LINDIR)/dchkrq.f	\
# 	$(LINDIR)/dchksp.f	$(LINDIR)/dchksy.f	\
# 	$(LINDIR)/dchksy_rook.f	$(LINDIR)/dchktb.f	\
# 	$(LINDIR)/dchktp.f	$(LINDIR)/dchktr.f	\
# 	$(LINDIR)/dchktz.f	$(LINDIR)/ddrvgt.f	\
# 	$(LINDIR)/ddrvls.f	$(LINDIR)/ddrvpb.f	\
# 	$(LINDIR)/ddrvpp.f	$(LINDIR)/ddrvpt.f	\
# 	$(LINDIR)/ddrvsp.f	$(LINDIR)/ddrvsy_rook.f	\
# 	$(LINDIR)/derrgt.f	$(LINDIR)/derrlq.f	\
# 	$(LINDIR)/derrls.f	$(LINDIR)/derrps.f	\
# 	$(LINDIR)/derrql.f	$(LINDIR)/derrqp.f	\
# 	$(LINDIR)/derrqr.f	$(LINDIR)/derrrq.f	\
# 	$(LINDIR)/derrtr.f	$(LINDIR)/derrtz.f	\
# 	$(LINDIR)/dgbt01.f	$(LINDIR)/dgbt02.f	\
# 	$(LINDIR)/dgbt05.f	$(LINDIR)/dgelqs.f	\
# 	$(LINDIR)/dgeqls.f	$(LINDIR)/dgeqrs.f	\
# 	$(LINDIR)/dgerqs.f	$(LINDIR)/dget01.f	\
# 	$(LINDIR)/dget02.f	$(LINDIR)/dget03.f	\
# 	$(LINDIR)/dget04.f	$(LINDIR)/dget06.f	\
# 	$(LINDIR)/dget07.f	$(LINDIR)/dgtt01.f	\
# 	$(LINDIR)/dgtt02.f	$(LINDIR)/dgtt05.f	\
# 	$(LINDIR)/dlaptm.f	$(LINDIR)/dlarhs.f	\
# 	$(LINDIR)/dlatb4.f	$(LINDIR)/dlatb5.f	\
# 	$(LINDIR)/dlattb.f	$(LINDIR)/dlattp.f	\
# 	$(LINDIR)/dlattr.f	$(LINDIR)/dlavsp.f	\
# 	$(LINDIR)/dlavsy.f	$(LINDIR)/dlavsy_rook.f	\
# 	$(LINDIR)/dlqt01.f	$(LINDIR)/dlqt02.f	\
# 	$(LINDIR)/dlqt03.f	$(LINDIR)/dpbt01.f	\
# 	$(LINDIR)/dpbt02.f	$(LINDIR)/dpbt05.f	\
# 	$(LINDIR)/dpot01.f	$(LINDIR)/dpot02.f	\
# 	$(LINDIR)/dpot03.f	$(LINDIR)/dpot05.f	\
# 	$(LINDIR)/dpst01.f	$(LINDIR)/dppt01.f	\
# 	$(LINDIR)/dppt02.f	$(LINDIR)/dppt03.f	\
# 	$(LINDIR)/dppt05.f	$(LINDIR)/dptt01.f	\
# 	$(LINDIR)/dptt02.f	$(LINDIR)/dptt05.f	\
# 	$(LINDIR)/dqlt01.f	$(LINDIR)/dqlt02.f	\
# 	$(LINDIR)/dqlt03.f	$(LINDIR)/dqpt01.f	\
# 	$(LINDIR)/dqrt01.f	$(LINDIR)/dqrt01p.f	\
# 	$(LINDIR)/dqrt02.f	$(LINDIR)/dqrt03.f	\
# 	$(LINDIR)/dqrt11.f	$(LINDIR)/dqrt12.f	\
# 	$(LINDIR)/dqrt13.f	$(LINDIR)/dqrt14.f	\
# 	$(LINDIR)/dqrt15.f	$(LINDIR)/dqrt16.f	\
# 	$(LINDIR)/dqrt17.f	$(LINDIR)/drqt01.f	\
# 	$(LINDIR)/drqt02.f	$(LINDIR)/drqt03.f	\
# 	$(LINDIR)/drzt01.f	$(LINDIR)/drzt02.f	\
# 	$(LINDIR)/dspt01.f	$(LINDIR)/dsyt01.f	\
# 	$(LINDIR)/dsyt01_rook.f	$(LINDIR)/dtbt02.f	\
# 	$(LINDIR)/dtbt03.f	$(LINDIR)/dtbt05.f	\
# 	$(LINDIR)/dtbt06.f	$(LINDIR)/dtpt01.f	\
# 	$(LINDIR)/dtpt02.f	$(LINDIR)/dtpt03.f	\
# 	$(LINDIR)/dtpt05.f	$(LINDIR)/dtpt06.f	\
# 	$(LINDIR)/dtrt01.f	$(LINDIR)/dtrt02.f	\
# 	$(LINDIR)/dtrt03.f	$(LINDIR)/dtrt05.f	\
# 	$(LINDIR)/dtrt06.f	$(LINDIR)/dtzt01.f	\
# 	$(LINDIR)/dtzt02.f	$(LINDIR)/dgennd.f	\
# 	$(LINDIR)/dqrt04.f	$(LINDIR)/dqrt05.f	\
# 	$(LINDIR)/dchkqrt.f	$(LINDIR)/derrqrt.f	\
# 	$(LINDIR)/dchkqrtp.f	$(LINDIR)/derrqrtp.f


# if USEXBLAS
# DLINTST += 	\
# 	$(LINDIR)/derrvxx.f	$(LINDIR)/ddrvgex.f	\
# 	$(LINDIR)/ddrvsyx.f	$(LINDIR)/ddrvgbx.f	\
# 	$(LINDIR)/derrgex.f	$(LINDIR)/ddrvpox.f	\
# 	$(LINDIR)/derrpox.f	$(LINDIR)/debchvxx.f	\
# 	$(LINDIR)/derrsyx.f
# else
# DLINTST += 	\
# 	$(LINDIR)/derrvx.f	$(LINDIR)/ddrvge.f	\
# 	$(LINDIR)/ddrvsy.f	$(LINDIR)/ddrvgb.f	\
# 	$(LINDIR)/derrge.f	$(LINDIR)/ddrvpo.f	\
# 	$(LINDIR)/derrpo.f	$(LINDIR)/derrsy.f
# endif

# ZLINTST = 	\
# 	$(LINDIR)/zchkaa.f	$(LINDIR)/zchkeq.f	\
# 	$(LINDIR)/zchkgb.f	$(LINDIR)/zchkge.f	\
# 	$(LINDIR)/zchkgt.f	$(LINDIR)/zchkhe.f	\
# 	$(LINDIR)/zchkhe_rook.f	$(LINDIR)/zchkhp.f	\
# 	$(LINDIR)/zchklq.f	$(LINDIR)/zchkpb.f	\
# 	$(LINDIR)/zchkpo.f	$(LINDIR)/zchkps.f	\
# 	$(LINDIR)/zchkpp.f	$(LINDIR)/zchkpt.f	\
# 	$(LINDIR)/zchkq3.f	$(LINDIR)/zchkql.f	\
# 	$(LINDIR)/zchkqp.f	$(LINDIR)/zchkqr.f	\
# 	$(LINDIR)/zchkrq.f	$(LINDIR)/zchksp.f	\
# 	$(LINDIR)/zchksy.f	$(LINDIR)/zchksy_rook.f	\
# 	$(LINDIR)/zchktb.f	$(LINDIR)/zchktp.f	\
# 	$(LINDIR)/zchktr.f	$(LINDIR)/zchktz.f	\
# 	$(LINDIR)/zdrvgt.f	$(LINDIR)/zdrvhe_rook.f	\
# 	$(LINDIR)/zdrvhp.f	$(LINDIR)/zdrvls.f	\
# 	$(LINDIR)/zdrvpb.f	$(LINDIR)/zdrvpp.f	\
# 	$(LINDIR)/zdrvpt.f	$(LINDIR)/zdrvsp.f	\
# 	$(LINDIR)/zdrvsy_rook.f	$(LINDIR)/zerrgt.f	\
# 	$(LINDIR)/zerrlq.f	$(LINDIR)/zerrls.f	\
# 	$(LINDIR)/zerrps.f	$(LINDIR)/zerrql.f	\
# 	$(LINDIR)/zerrqp.f	$(LINDIR)/zerrqr.f	\
# 	$(LINDIR)/zerrrq.f	$(LINDIR)/zerrtr.f	\
# 	$(LINDIR)/zerrtz.f	$(LINDIR)/zgbt01.f	\
# 	$(LINDIR)/zgbt02.f	$(LINDIR)/zgbt05.f	\
# 	$(LINDIR)/zgelqs.f	$(LINDIR)/zgeqls.f	\
# 	$(LINDIR)/zgeqrs.f	$(LINDIR)/zgerqs.f	\
# 	$(LINDIR)/zget01.f	$(LINDIR)/zget02.f	\
# 	$(LINDIR)/zget03.f	$(LINDIR)/zget04.f	\
# 	$(LINDIR)/zget07.f	$(LINDIR)/zgtt01.f	\
# 	$(LINDIR)/zgtt02.f	$(LINDIR)/zgtt05.f	\
# 	$(LINDIR)/zhet01.f	$(LINDIR)/zhet01_rook.f	\
# 	$(LINDIR)/zhpt01.f	$(LINDIR)/zlaipd.f	\
# 	$(LINDIR)/zlaptm.f	$(LINDIR)/zlarhs.f	\
# 	$(LINDIR)/zlatb4.f	$(LINDIR)/zlatb5.f	\
# 	$(LINDIR)/zlatsp.f	$(LINDIR)/zlatsy.f	\
# 	$(LINDIR)/zlattb.f	$(LINDIR)/zlattp.f	\
# 	$(LINDIR)/zlattr.f	$(LINDIR)/zlavhe.f	\
# 	$(LINDIR)/zlavhe_rook.f	$(LINDIR)/zlavhp.f	\
# 	$(LINDIR)/zlavsp.f	$(LINDIR)/zlavsy.f	\
# 	$(LINDIR)/zlavsy_rook.f	$(LINDIR)/zlqt01.f	\
# 	$(LINDIR)/zlqt02.f	$(LINDIR)/zlqt03.f	\
# 	$(LINDIR)/zpbt01.f	$(LINDIR)/zpbt02.f	\
# 	$(LINDIR)/zpbt05.f	$(LINDIR)/zpot01.f	\
# 	$(LINDIR)/zpot02.f	$(LINDIR)/zpot03.f	\
# 	$(LINDIR)/zpot05.f	$(LINDIR)/zpst01.f	\
# 	$(LINDIR)/zppt01.f	$(LINDIR)/zppt02.f	\
# 	$(LINDIR)/zppt03.f	$(LINDIR)/zppt05.f	\
# 	$(LINDIR)/zptt01.f	$(LINDIR)/zptt02.f	\
# 	$(LINDIR)/zptt05.f	$(LINDIR)/zqlt01.f	\
# 	$(LINDIR)/zqlt02.f	$(LINDIR)/zqlt03.f	\
# 	$(LINDIR)/zqpt01.f	$(LINDIR)/zqrt01.f	\
# 	$(LINDIR)/zqrt01p.f	$(LINDIR)/zqrt02.f	\
# 	$(LINDIR)/zqrt03.f	$(LINDIR)/zqrt11.f	\
# 	$(LINDIR)/zqrt12.f	$(LINDIR)/zqrt13.f	\
# 	$(LINDIR)/zqrt14.f	$(LINDIR)/zqrt15.f	\
# 	$(LINDIR)/zqrt16.f	$(LINDIR)/zqrt17.f	\
# 	$(LINDIR)/zrqt01.f	$(LINDIR)/zrqt02.f	\
# 	$(LINDIR)/zrqt03.f	$(LINDIR)/zrzt01.f	\
# 	$(LINDIR)/zrzt02.f	$(LINDIR)/zsbmv.f	\
# 	$(LINDIR)/zspt01.f	$(LINDIR)/zspt02.f	\
# 	$(LINDIR)/zspt03.f	$(LINDIR)/zsyt01.f	\
# 	$(LINDIR)/zsyt01_rook.f	$(LINDIR)/zsyt02.f	\
# 	$(LINDIR)/zsyt03.f	$(LINDIR)/ztbt02.f	\
# 	$(LINDIR)/ztbt03.f	$(LINDIR)/ztbt05.f	\
# 	$(LINDIR)/ztbt06.f	$(LINDIR)/ztpt01.f	\
# 	$(LINDIR)/ztpt02.f	$(LINDIR)/ztpt03.f	\
# 	$(LINDIR)/ztpt05.f	$(LINDIR)/ztpt06.f	\
# 	$(LINDIR)/ztrt01.f	$(LINDIR)/ztrt02.f	\
# 	$(LINDIR)/ztrt03.f	$(LINDIR)/ztrt05.f	\
# 	$(LINDIR)/ztrt06.f	$(LINDIR)/ztzt01.f	\
# 	$(LINDIR)/ztzt02.f	$(LINDIR)/dget06.f	\
# 	$(LINDIR)/zgennd.f	$(LINDIR)/zqrt04.f	\
# 	$(LINDIR)/zqrt05.f	$(LINDIR)/zchkqrt.f	\
# 	$(LINDIR)/zerrqrt.f	$(LINDIR)/zchkqrtp.f	\
# 	$(LINDIR)/zerrqrtp.f

# if USEXBLAS
# ZLINTST += 	\
# 	$(LINDIR)/zerrvxx.f	$(LINDIR)/zdrvgex.f	\
# 	$(LINDIR)/zdrvsyx.f	$(LINDIR)/zdrvgbx.f	\
# 	$(LINDIR)/zerrgex.f	$(LINDIR)/zdrvpox.f	\
# 	$(LINDIR)/zdrvhex.f	$(LINDIR)/zerrpox.f	\
# 	$(LINDIR)/zebchvxx.f	$(LINDIR)/zerrsyx.f	\
# 	$(LINDIR)/zerrhex.f
# else
# ZLINTST += 	\
# 	$(LINDIR)/zerrvx.f	$(LINDIR)/zdrvge.f	\
# 	$(LINDIR)/zdrvsy.f	$(LINDIR)/zdrvgb.f	\
# 	$(LINDIR)/zerrge.f	$(LINDIR)/zdrvpo.f	\
# 	$(LINDIR)/zdrvhe.f	$(LINDIR)/zerrpo.f	\
# 	$(LINDIR)/zerrsy.f	$(LINDIR)/zerrhe.f
# endif

# DSLINTST = 	\
# 	$(LINDIR)/dchkab.f	$(LINDIR)/ddrvab.f	\
# 	$(LINDIR)/ddrvac.f	$(LINDIR)/derrab.f	\
# 	$(LINDIR)/derrac.f	$(LINDIR)/dget08.f	\
# 	$(LINDIR)/alaerh.f	$(LINDIR)/alahd.f	\
# 	$(LINDIR)/aladhd.f	$(LINDIR)/alareq.f	\
# 	$(LINDIR)/chkxer.f	$(LINDIR)/dlarhs.f	\
# 	$(LINDIR)/dlatb4.f	$(LINDIR)/xerbla.f	\
# 	$(LINDIR)/dget02.f	$(LINDIR)/dpot06.f


# ZCLINTST = 	\
# 	$(LINDIR)/zchkab.f	$(LINDIR)/zdrvab.f	\
# 	$(LINDIR)/zdrvac.f	$(LINDIR)/zerrab.f	\
# 	$(LINDIR)/zerrac.f	$(LINDIR)/zget08.f	\
# 	$(LINDIR)/alaerh.f	$(LINDIR)/alahd.f	\
# 	$(LINDIR)/aladhd.f	$(LINDIR)/alareq.f	\
# 	$(LINDIR)/chkxer.f	$(LINDIR)/zget02.f	\
# 	$(LINDIR)/zlarhs.f	$(LINDIR)/zlatb4.f	\
# 	$(LINDIR)/zsbmv.f	$(LINDIR)/xerbla.f	\
# 	$(LINDIR)/zpot06.f	$(LINDIR)/zlaipd.f


# SLINTSTRFP = 	\
# 	$(LINDIR)/schkrfp.f	$(LINDIR)/sdrvrfp.f	\
# 	$(LINDIR)/sdrvrf1.f	$(LINDIR)/sdrvrf2.f	\
# 	$(LINDIR)/sdrvrf3.f	$(LINDIR)/sdrvrf4.f	\
# 	$(LINDIR)/serrrfp.f	$(LINDIR)/slatb4.f	\
# 	$(LINDIR)/slarhs.f	$(LINDIR)/sget04.f	\
# 	$(LINDIR)/spot01.f	$(LINDIR)/spot03.f	\
# 	$(LINDIR)/spot02.f	$(LINDIR)/chkxer.f	\
# 	$(LINDIR)/xerbla.f	$(LINDIR)/alaerh.f	\
# 	$(LINDIR)/aladhd.f	$(LINDIR)/alahd.f	\
# 	$(LINDIR)/alasvm.f


# DLINTSTRFP = 	\
# 	$(LINDIR)/dchkrfp.f	$(LINDIR)/ddrvrfp.f	\
# 	$(LINDIR)/ddrvrf1.f	$(LINDIR)/ddrvrf2.f	\
# 	$(LINDIR)/ddrvrf3.f	$(LINDIR)/ddrvrf4.f	\
# 	$(LINDIR)/derrrfp.f	$(LINDIR)/dlatb4.f	\
# 	$(LINDIR)/dlarhs.f	$(LINDIR)/dget04.f	\
# 	$(LINDIR)/dpot01.f	$(LINDIR)/dpot03.f	\
# 	$(LINDIR)/dpot02.f	$(LINDIR)/chkxer.f	\
# 	$(LINDIR)/xerbla.f	$(LINDIR)/alaerh.f	\
# 	$(LINDIR)/aladhd.f	$(LINDIR)/alahd.f	\
# 	$(LINDIR)/alasvm.f

# CLINTSTRFP = 	\
# 	$(LINDIR)/cchkrfp.f	$(LINDIR)/cdrvrfp.f	\
# 	$(LINDIR)/cdrvrf1.f	$(LINDIR)/cdrvrf2.f	\
# 	$(LINDIR)/cdrvrf3.f	$(LINDIR)/cdrvrf4.f	\
# 	$(LINDIR)/cerrrfp.f	$(LINDIR)/claipd.f	\
# 	$(LINDIR)/clatb4.f	$(LINDIR)/clarhs.f	\
# 	$(LINDIR)/csbmv.f	$(LINDIR)/cget04.f	\
# 	$(LINDIR)/cpot01.f	$(LINDIR)/cpot03.f	\
# 	$(LINDIR)/cpot02.f	$(LINDIR)/chkxer.f	\
# 	$(LINDIR)/xerbla.f	$(LINDIR)/alaerh.f	\
# 	$(LINDIR)/aladhd.f	$(LINDIR)/alahd.f	\
# 	$(LINDIR)/alasvm.f

# ZLINTSTRFP = 	\
# 	$(LINDIR)/zchkrfp.f	$(LINDIR)/zdrvrfp.f	\
# 	$(LINDIR)/zdrvrf1.f	$(LINDIR)/zdrvrf2.f	\
# 	$(LINDIR)/zdrvrf3.f	$(LINDIR)/zdrvrf4.f	\
# 	$(LINDIR)/zerrrfp.f	$(LINDIR)/zlatb4.f	\
# 	$(LINDIR)/zlaipd.f	$(LINDIR)/zlarhs.f	\
# 	$(LINDIR)/zsbmv.f	$(LINDIR)/zget04.f	\
# 	$(LINDIR)/zpot01.f	$(LINDIR)/zpot03.f	\
# 	$(LINDIR)/zpot02.f	$(LINDIR)/chkxer.f	\
# 	$(LINDIR)/xerbla.f	$(LINDIR)/alaerh.f	\
# 	$(LINDIR)/aladhd.f	$(LINDIR)/alahd.f	\
# 	$(LINDIR)/alasvm.f

# all:  single double complex complex16 proto-single proto-double proto-complex proto-complex16

# single: ../xlintsts
# double: ../xlintstd
# complex: ../xlintstc
# complex16: ../xlintstz

# proto-single: ../xlintstrfs
# proto-double: ../xlintstds ../xlintstrfd
# proto-complex: ../xlintstrfc
# proto-complex16: ../xlintstzc ../xlintstrfz

# xlintsts : $(ALINTST) $(SLINTST) $(SCLNTST) ../../$(LAPACKLIB)
# 	$(LOADER) $(LOADOPTS)  $(ALINTST) $(SCLNTST) $(SLINTST) \
#         ../../$(TMGLIB) ../../$(LAPACKLIB) $(XBLASLIB)  $(BLASLIB) -o $@

# xlintstc : $(ALINTST) $(CLINTST) $(SCLNTST) ../../$(LAPACKLIB)
# 	$(LOADER) $(LOADOPTS)  $(ALINTST) $(SCLNTST) $(CLINTST) \
#         ../../$(TMGLIB) ../../$(LAPACKLIB) $(XBLASLIB)  $(BLASLIB) -o $@

# xlintstd : $(ALINTST) $(DLINTST) $(DZLNTST) ../../$(LAPACKLIB)
# 	$(LOADER) $(LOADOPTS) $^ \
#         ../../$(TMGLIB) ../../$(LAPACKLIB) $(XBLASLIB) $(BLASLIB) -o $@

# xlintstz : $(ALINTST) $(ZLINTST) $(DZLNTST) ../../$(LAPACKLIB)
# 	$(LOADER) $(LOADOPTS)  $(ALINTST) $(DZLNTST) $(ZLINTST) \
#         ../../$(TMGLIB) ../../$(LAPACKLIB) $(XBLASLIB)  $(BLASLIB) -o $@

# xlintstds : $(DSLINTST) ../../$(LAPACKLIB)
# 	$(LOADER) $(LOADOPTS)  $(DSLINTST) \
#         ../../$(TMGLIB) ../../$(LAPACKLIB) $(BLASLIB) -o $@

# xlintstzc : $(ZCLINTST) ../../$(LAPACKLIB)
# 	$(LOADER) $(LOADOPTS)  $(ZCLINTST) \
#         ../../$(TMGLIB) ../../$(LAPACKLIB) $(BLASLIB) -o $@

# xlintstrfs : $(SLINTSTRFP) ../../$(LAPACKLIB)
# 	$(LOADER) $(LOADOPTS)  $(SLINTSTRFP) \
#         ../../$(TMGLIB) ../../$(LAPACKLIB) $(BLASLIB) -o $@

# xlintstrfd : $(DLINTSTRFP) ../../$(LAPACKLIB)
# 	$(LOADER) $(LOADOPTS)  $(DLINTSTRFP) \
#         ../../$(TMGLIB) ../../$(LAPACKLIB) $(BLASLIB) -o $@

# xlintstrfc : $(CLINTSTRFP) ../../$(LAPACKLIB)
# 	$(LOADER) $(LOADOPTS)  $(CLINTSTRFP) \
#         ../../$(TMGLIB) ../../$(LAPACKLIB) $(BLASLIB) -o $@

# xlintstrfz : $(ZLINTSTRFP) ../../$(LAPACKLIB)
# 	$(LOADER) $(LOADOPTS)  $(ZLINTSTRFP) \
#         ../../$(TMGLIB) ../../$(LAPACKLIB) $(BLASLIB) -o $@

# ../xlintsts: xlintsts
# 	mv xlintsts $@

# ../xlintstc: xlintstc
# 	mv xlintstc $@

# ../xlintstz: xlintstz
# 	mv xlintstz $@

# ../xlintstd: xlintstd
# 	mv xlintstd $@

# ../xlintstds: xlintstds
# 	mv xlintstds $@

# ../xlintstzc: xlintstzc
# 	mv xlintstzc $@

# ../xlintstrfs: xlintstrfs
# 	mv xlintstrfs $@

# ../xlintstrfc: xlintstrfc
# 	mv xlintstrfc $@

# ../xlintstrfd: xlintstrfd
# 	mv xlintstrfd $@

# ../xlintstrfz: xlintstrfz
# 	mv xlintstrfz $@

# $(ALINTST): $(FRC)
# $(SCLNTST): $(FRC)
# $(DZLNTST): $(FRC)
# $(SLINTST): $(FRC)
# $(CLINTST): $(FRC)
# $(DLINTST): $(FRC)
# $(ZLINTST): $(FRC)

# FRC:
# 	@FRC=$(FRC)

# clean:
# 	rm -f *.f

# schkaa.f: schkaa.f
# 	$(FORTRAN) $(DRVOPTS) -c $< -o $@
# dchkaa.f: dchkaa.f
# 	$(FORTRAN) $(DRVOPTS) -c $< -o $@
# cchkaa.f: cchkaa.f
# 	$(FORTRAN) $(DRVOPTS) -c $< -o $@
# zchkaa.f: zchkaa.f
# 	$(FORTRAN) $(DRVOPTS) -c $< -o $@

# .f.f:
# 	$(FORTRAN) $(OPTS) -c $< -o $@

### end of file
