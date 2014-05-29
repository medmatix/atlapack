## Process this file with automake to produce Makefile.in

ACLOCAL_AMFLAGS		= -I meta/autotools
AUTOMAKE_OPTIONS	= foreign
dist_doc_DATA		= README COPYING
EXTRA_DIST		= INSTALL

lib_LTLIBRARIES		= liblapack.la libtmglib.la liblapacke.la

AM_CFLAGS		= -I $(srcdir)/lapacke/src -I $(srcdir)/lapacke/utils

#page
#### LAPACK

### Timer for the SECOND and DSECND routines
#
# Default: SECOND and DSECND will  use a call to the EXTERNAL FUNCTION
# ETIME.
#
#TIMER    = EXT_ETIME
#
# For  RS6K :  SECOND  and DSECND  will  use a  call  to the  EXTERNAL
# FUNCTION ETIME_
#
# TIMER    = EXT_ETIME_
#
# For  gfortran compiler: SECOND  and DSECND  will use  a call  to the
# INTERNAL FUNCTION ETIME.
TIMER    = INT_ETIME
# If your  Fortran compiler does  not provide etime (like  Nag Fortran
# Compiler, etc...)  SECOND and DSECND will use a call to the INTERNAL
# FUNCTION CPU_TIME
#
#TIMER    = INT_CPU_TIME
#
#If neither  of this  works...you can use  the NONE value...   In that
#case, SECOND and DSECND will always return 0
#
#TIMER     = NONE

## --------------------------------------------------------------------
## Sources.
## --------------------------------------------------------------------

EXTRA_DIST += \
	lapack/machine-dependent/LAPACK_version.f	\
	lapack/machine-dependent/dlamch.f		\
	lapack/machine-dependent/dlamchf77.f		\
	lapack/machine-dependent/dsecnd_EXT_ETIME.f	\
	lapack/machine-dependent/dsecnd_EXT_ETIME_.f	\
	lapack/machine-dependent/dsecnd_INT_CPU_TIME.f	\
	lapack/machine-dependent/dsecnd_INT_ETIME.f	\
	lapack/machine-dependent/dsecnd_NONE.f		\
	lapack/machine-dependent/ilaver.f		\
	lapack/machine-dependent/lsame.f		\
	lapack/machine-dependent/second_EXT_ETIME.f	\
	lapack/machine-dependent/second_EXT_ETIME_.f	\
	lapack/machine-dependent/second_INT_CPU_TIME.f	\
	lapack/machine-dependent/second_INT_ETIME.f	\
	lapack/machine-dependent/second_NONE.f		\
	lapack/machine-dependent/slamch.f		\
	lapack/machine-dependent/slamchf77.f

# The functions LSAME, SECOND, DSECND,  SLAMCH, and DLAMCH may have to
# be   installed  before   compiling  the   library.   Refer   to  the
# installation guide, LAPACK Working Note 41, for instructions.

# Auxiliary routines called from all precisions
LAPACK_ALLAUX = \
	lapack/ilaenv.f		lapack/ieeeck.f			lapack/lsamen.f		\
	lapack/xerbla.f		lapack/xerbla_array.f		lapack/iparmq.f		\
	lapack/ilaprec.f	lapack/ilatrans.f		lapack/ilauplo.f	\
	lapack/iladiag.f	lapack/chla_transtype.f					\
	lapack/machine-dependent/ilaver.f						\
	lapack/machine-dependent/lsame.f						\
	lapack/machine-dependent/slamch.f

# Auxiliary routines called from both REAL and COMPLEX.
LAPACK_SCLAUX = \
	lapack/sbdsdc.f		lapack/sbdsqr.f	lapack/sdisna.f	\
	lapack/slabad.f		lapack/slacpy.f	lapack/sladiv.f	\
	lapack/slae2.f		lapack/slaebz.f	lapack/slaed0.f	\
	lapack/slaed1.f		lapack/slaed2.f	lapack/slaed3.f	\
	lapack/slaed4.f		lapack/slaed5.f	lapack/slaed6.f	\
	lapack/slaed7.f		lapack/slaed8.f	lapack/slaed9.f	\
	lapack/slaeda.f		lapack/slaev2.f	lapack/slagtf.f	\
	lapack/slagts.f		lapack/slamrg.f	lapack/slanst.f	\
	lapack/slapy2.f		lapack/slapy3.f	lapack/slarnv.f	\
	lapack/slarra.f		lapack/slarrb.f	lapack/slarrc.f	\
	lapack/slarrd.f		lapack/slarre.f	lapack/slarrf.f	\
	lapack/slarrj.f		lapack/slarrk.f	lapack/slarrr.f	\
	lapack/slaneg.f		lapack/slartg.f	lapack/slaruv.f	\
	lapack/slas2.f		lapack/slascl.f	lapack/slasd0.f	\
	lapack/slasd1.f		lapack/slasd2.f	lapack/slasd3.f	\
	lapack/slasd4.f		lapack/slasd5.f	lapack/slasd6.f	\
	lapack/slasd7.f		lapack/slasd8.f	lapack/slasda.f	\
	lapack/slasdq.f		lapack/slasdt.f	lapack/slaset.f	\
	lapack/slasq1.f		lapack/slasq2.f	lapack/slasq3.f	\
	lapack/slasq4.f		lapack/slasq5.f	lapack/slasq6.f	\
	lapack/slasr.f		lapack/slasrt.f	lapack/slassq.f	\
	lapack/slasv2.f		lapack/spttrf.f	lapack/sstebz.f	\
	lapack/sstedc.f		lapack/ssteqr.f	lapack/ssterf.f	\
	lapack/slaisnan.f	lapack/sisnan.f	lapack/slartgp.f \
	lapack/slartgs.f					\
	lapack/machine-dependent/second_$(TIMER).f

# Auxiliary routines called from both DOUBLE and COMPLEX*16.
LAPACK_DZLAUX = \
	lapack/dbdsdc.f		lapack/dbdsqr.f	lapack/ddisna.f	\
	lapack/dlabad.f		lapack/dlacpy.f	lapack/dladiv.f	\
	lapack/dlae2.f		lapack/dlaebz.f	lapack/dlaed0.f	\
	lapack/dlaed1.f		lapack/dlaed2.f	lapack/dlaed3.f	\
	lapack/dlaed4.f		lapack/dlaed5.f	lapack/dlaed6.f	\
	lapack/dlaed7.f		lapack/dlaed8.f	lapack/dlaed9.f	\
	lapack/dlaeda.f		lapack/dlaev2.f	lapack/dlagtf.f	\
	lapack/dlagts.f		lapack/dlamrg.f	lapack/dlanst.f	\
	lapack/dlapy2.f		lapack/dlapy3.f	lapack/dlarnv.f	\
	lapack/dlarra.f		lapack/dlarrb.f	lapack/dlarrc.f	\
	lapack/dlarrd.f		lapack/dlarre.f	lapack/dlarrf.f	\
	lapack/dlarrj.f		lapack/dlarrk.f	lapack/dlarrr.f	\
	lapack/dlaneg.f		lapack/dlartg.f	lapack/dlaruv.f	\
	lapack/dlas2.f		lapack/dlascl.f	lapack/dlasd0.f	\
	lapack/dlasd1.f		lapack/dlasd2.f	lapack/dlasd3.f	\
	lapack/dlasd4.f		lapack/dlasd5.f	lapack/dlasd6.f	\
	lapack/dlasd7.f		lapack/dlasd8.f	lapack/dlasda.f	\
	lapack/dlasdq.f		lapack/dlasdt.f	lapack/dlaset.f	\
	lapack/dlasq1.f		lapack/dlasq2.f	lapack/dlasq3.f	\
	lapack/dlasq4.f		lapack/dlasq5.f	lapack/dlasq6.f	\
	lapack/dlasr.f		lapack/dlasrt.f	lapack/dlassq.f	\
	lapack/dlasv2.f		lapack/dpttrf.f	lapack/dstebz.f	\
	lapack/dstedc.f		lapack/dsteqr.f	lapack/dsterf.f	\
	lapack/dlaisnan.f	lapack/disnan.f	lapack/dlartgp.f \
	lapack/dlartgs.f					\
	lapack/machine-dependent/dlamch.f			\
	lapack/machine-dependent/dsecnd_$(TIMER).f

# Single precision real LAPACK routines
LAPACK_SLASRC = \
	lapack/sgbbrd.f		lapack/sgbcon.f		lapack/sgbequ.f		\
	lapack/sgbrfs.f		lapack/sgbsv.f		lapack/sgbsvx.f		\
	lapack/sgbtf2.f		lapack/sgbtrf.f		lapack/sgbtrs.f		\
	lapack/sgebak.f		lapack/sgebal.f		lapack/sgebd2.f		\
	lapack/sgebrd.f		lapack/sgecon.f		lapack/sgeequ.f		\
	lapack/sgees.f		lapack/sgeesx.f		lapack/sgeev.f		\
	lapack/sgeevx.f		lapack/sgegs.f		lapack/sgegv.f		\
	lapack/sgehd2.f		lapack/sgehrd.f		lapack/sgelq2.f		\
	lapack/sgelqf.f		lapack/sgels.f		lapack/sgelsd.f		\
	lapack/sgelss.f		lapack/sgelsx.f		lapack/sgelsy.f		\
	lapack/sgeql2.f		lapack/sgeqlf.f		lapack/sgeqp3.f		\
	lapack/sgeqpf.f		lapack/sgeqr2.f		lapack/sgeqr2p.f	\
	lapack/sgeqrf.f		lapack/sgeqrfp.f	lapack/sgerfs.f		\
	lapack/sgerq2.f		lapack/sgerqf.f		lapack/sgesc2.f		\
	lapack/sgesdd.f		lapack/sgesv.f		lapack/sgesvd.f		\
	lapack/sgesvx.f		lapack/sgetc2.f		lapack/sgetf2.f		\
	lapack/sgetri.f		lapack/sggbak.f		lapack/sggbal.f		\
	lapack/sgges.f		lapack/sggesx.f		lapack/sggev.f		\
	lapack/sggevx.f		lapack/sggglm.f		lapack/sgghrd.f		\
	lapack/sgglse.f		lapack/sggqrf.f		lapack/sggrqf.f		\
	lapack/sggsvd.f		lapack/sggsvp.f		lapack/sgtcon.f		\
	lapack/sgtrfs.f		lapack/sgtsv.f		lapack/sgtsvx.f		\
	lapack/sgttrf.f		lapack/sgttrs.f		lapack/sgtts2.f		\
	lapack/shgeqz.f		lapack/shsein.f		lapack/shseqr.f		\
	lapack/slabrd.f		lapack/slacon.f		lapack/slacn2.f		\
	lapack/slaein.f		lapack/slaexc.f		lapack/slag2.f		\
	lapack/slags2.f		lapack/slagtm.f		lapack/slagv2.f		\
	lapack/slahqr.f		lapack/slahrd.f		lapack/slahr2.f		\
	lapack/slaic1.f		lapack/slaln2.f		lapack/slals0.f		\
	lapack/slalsa.f		lapack/slalsd.f		lapack/slangb.f		\
	lapack/slange.f		lapack/slangt.f		lapack/slanhs.f		\
	lapack/slansb.f		lapack/slansp.f		lapack/slansy.f		\
	lapack/slantb.f		lapack/slantp.f		lapack/slantr.f		\
	lapack/slanv2.f		lapack/slapll.f		lapack/slapmt.f		\
	lapack/slaqgb.f		lapack/slaqge.f		lapack/slaqp2.f		\
	lapack/slaqps.f		lapack/slaqsb.f		lapack/slaqsp.f		\
	lapack/slaqsy.f		lapack/slaqr0.f		lapack/slaqr1.f		\
	lapack/slaqr2.f		lapack/slaqr3.f		lapack/slaqr4.f		\
	lapack/slaqr5.f		lapack/slaqtr.f		lapack/slar1v.f		\
	lapack/slar2v.f		lapack/ilaslr.f		lapack/ilaslc.f		\
	lapack/slarf.f		lapack/slarfb.f		lapack/slarfg.f		\
	lapack/slarfgp.f	lapack/slarft.f		lapack/slarfx.f		\
	lapack/slargv.f		lapack/slarrv.f		lapack/slartv.f		\
	lapack/slarz.f		lapack/slarzb.f		lapack/slarzt.f		\
	lapack/slaswp.f		lapack/slasy2.f		lapack/slasyf.f		\
	lapack/slasyf_rook.f	lapack/slatbs.f		lapack/slatdf.f		\
	lapack/slatps.f		lapack/slatrd.f		lapack/slatrs.f		\
	lapack/slatrz.f		lapack/slatzm.f		lapack/slauu2.f		\
	lapack/slauum.f		lapack/sopgtr.f		lapack/sopmtr.f		\
	lapack/sorg2l.f		lapack/sorg2r.f		lapack/sorgbr.f		\
	lapack/sorghr.f		lapack/sorgl2.f		lapack/sorglq.f		\
	lapack/sorgql.f		lapack/sorgqr.f		lapack/sorgr2.f		\
	lapack/sorgrq.f		lapack/sorgtr.f		lapack/sorm2l.f		\
	lapack/sorm2r.f		lapack/sormbr.f		lapack/sormhr.f		\
	lapack/sorml2.f		lapack/sormlq.f		lapack/sormql.f		\
	lapack/sormqr.f		lapack/sormr2.f		lapack/sormr3.f		\
	lapack/sormrq.f		lapack/sormrz.f		lapack/sormtr.f		\
	lapack/spbcon.f		lapack/spbequ.f		lapack/spbrfs.f		\
	lapack/spbstf.f		lapack/spbsv.f	 	lapack/spbsvx.f		\
	lapack/spbtf2.f		lapack/spbtrf.f		lapack/spbtrs.f		\
	lapack/spocon.f		lapack/spoequ.f		lapack/sporfs.f		\
	lapack/sposv.f		lapack/sposvx.f		lapack/spotf2.f		\
	lapack/spotri.f		lapack/spstrf.f		lapack/spstf2.f		\
	lapack/sppcon.f		lapack/sppequ.f		lapack/spprfs.f		\
	lapack/sppsv.f		lapack/sppsvx.f		lapack/spptrf.f		\
	lapack/spptri.f		lapack/spptrs.f		lapack/sptcon.f		\
	lapack/spteqr.f		lapack/sptrfs.f		lapack/sptsv.f		\
	lapack/sptsvx.f		lapack/spttrs.f		lapack/sptts2.f		\
	lapack/srscl.f		lapack/ssbev.f	 	lapack/ssbevd.f		\
	lapack/ssbevx.f		lapack/ssbgst.f		lapack/ssbgv.f		\
	lapack/ssbgvd.f		lapack/ssbgvx.f		lapack/ssbtrd.f		\
	lapack/sspcon.f		lapack/sspev.f	 	lapack/sspevd.f		\
	lapack/sspevx.f		lapack/sspgst.f		lapack/sspgv.f	 	\
	lapack/sspgvd.f		lapack/sspgvx.f		lapack/ssprfs.f		\
	lapack/sspsv.f		lapack/sspsvx.f		lapack/ssptrd.f		\
	lapack/ssptrf.f		lapack/ssptri.f		lapack/ssptrs.f		\
	lapack/sstegr.f		lapack/sstein.f		lapack/sstev.f	 	\
	lapack/sstevd.f		lapack/sstevr.f		lapack/sstevx.f		\
	lapack/ssycon.f		lapack/ssyev.f		lapack/ssyevd.f		\
	lapack/ssyevr.f		lapack/ssyevx.f		lapack/ssygs2.f		\
	lapack/ssygst.f		lapack/ssygv.f		lapack/ssygvd.f		\
	lapack/ssygvx.f		lapack/ssyrfs.f		lapack/ssysv.f	 	\
	lapack/ssysvx.f		lapack/ssytd2.f		lapack/ssytf2.f		\
	lapack/ssytrd.f		lapack/ssytrf.f		lapack/ssytri.f		\
	lapack/ssytri2.f	lapack/ssytri2x.f	lapack/ssyswapr.f	\
	lapack/ssytrs.f		lapack/ssytrs2.f	lapack/ssyconv.f	\
	lapack/ssytf2_rook.f	lapack/ssytrf_rook.f	lapack/ssytrs_rook.f	\
	lapack/ssytri_rook.f	lapack/ssycon_rook.f	lapack/ssysv_rook.f	\
	lapack/stbcon.f		lapack/stbrfs.f		lapack/stbtrs.f		\
	lapack/stgevc.f		lapack/stgex2.f		lapack/stgexc.f		\
	lapack/stgsen.f		lapack/stgsja.f		lapack/stgsna.f		\
	lapack/stgsy2.f		lapack/stgsyl.f		lapack/stpcon.f		\
	lapack/stprfs.f		lapack/stptri.f		lapack/stptrs.f		\
	lapack/strcon.f		lapack/strevc.f		lapack/strexc.f		\
	lapack/strrfs.f		lapack/strsen.f		lapack/strsna.f		\
	lapack/strsyl.f		lapack/strti2.f		lapack/strtri.f		\
	lapack/strtrs.f		lapack/stzrqf.f		lapack/stzrzf.f		\
	lapack/sstemr.f		lapack/slansf.f		lapack/spftrf.f		\
	lapack/spftri.f		lapack/spftrs.f		lapack/ssfrk.f		\
	lapack/stfsm.f		lapack/stftri.f		lapack/stfttp.f		\
	lapack/stfttr.f		lapack/stpttf.f		lapack/stpttr.f		\
	lapack/strttf.f		lapack/strttp.f		lapack/sgejsv.f		\
	lapack/sgesvj.f		lapack/sgsvj0.f		lapack/sgsvj1.f		\
	lapack/sgeequb.f	lapack/ssyequb.f	lapack/spoequb.f	\
	lapack/sgbequb.f	lapack/sbbcsd.f		lapack/slapmr.f		\
	lapack/sorbdb.f		lapack/sorbdb1.f	lapack/sorbdb2.f	\
	lapack/sorbdb3.f	lapack/sorbdb4.f	lapack/sorbdb5.f	\
	lapack/sorbdb6.f	lapack/sorcsd.f		lapack/sorcsd2by1.f	\
	lapack/sgeqrt.f		lapack/sgeqrt2.f	lapack/sgeqrt3.f	\
	lapack/sgemqrt.f	lapack/stpqrt.f		lapack/stpqrt2.f	\
	lapack/stpmqrt.f	lapack/stprfb.f

# Double-single  mixed  precision real  routines  called from  single,
# single-extra and  double precision  real LAPACK routines  (i.e. from
# SLASRC, SXLASRC, DLASRC).
LAPACK_DSLASRC = \
	lapack/spotrs.f		lapack/sgetrs.f		lapack/spotrf.f	\
	lapack/sgetrf.f

# Single precision real LAPACK routines using extra precision.
if USEXBLAS
LAPACK_SXLASRC = \
	lapack/sgesvxx.f	lapack/sgerfsx.f	lapack/sla_gerfsx_extended.f	\
	lapack/sla_geamv.f	lapack/sla_gercond.f	lapack/sla_gerpvgrw.f		\
	lapack/ssysvxx.f	lapack/ssyrfsx.f	lapack/sla_syrfsx_extended.f	\
	lapack/sla_syamv.f	lapack/sla_syrcond.f	lapack/sla_syrpvgrw.f		\
	lapack/sposvxx.f	lapack/sporfsx.f	lapack/sla_porfsx_extended.f	\
	lapack/sla_porcond.f	lapack/sla_porpvgrw.f	lapack/sgbsvxx.f		\
	lapack/sgbrfsx.f	lapack/sla_gbrfsx_extended.f				\
	lapack/sla_gbamv.f	lapack/sla_gbrcond.f	lapack/sla_gbrpvgrw.f		\
	lapack/sla_lin_berr.f	lapack/slarscl2.f	lapack/slascl2.f		\
	lapack/sla_wwaddw.f
endif

# Single precision complex LAPACK routines.
LAPACK_CLASRC = \
	lapack/cbdsqr.f		lapack/cgbbrd.f		\
	lapack/cgbcon.f		lapack/cgbequ.f		\
	lapack/cgbrfs.f		lapack/cgbsv.f		\
	lapack/cgbsvx.f		lapack/cgbtf2.f		\
	lapack/cgbtrf.f		lapack/cgbtrs.f		\
	lapack/cgebak.f		lapack/cgebal.f		\
	lapack/cgebd2.f		lapack/cgebrd.f		\
	lapack/cgecon.f		lapack/cgeequ.f		\
	lapack/cgees.f		lapack/cgeesx.f		\
	lapack/cgeev.f		lapack/cgeevx.f		\
	lapack/cgegs.f		lapack/cgegv.f		\
	lapack/cgehd2.f		lapack/cgehrd.f		\
	lapack/cgelq2.f		lapack/cgelqf.f		\
	lapack/cgels.f		lapack/cgelsd.f		\
	lapack/cgelss.f		lapack/cgelsx.f		\
	lapack/cgelsy.f		lapack/cgeql2.f		\
	lapack/cgeqlf.f		lapack/cgeqp3.f		\
	lapack/cgeqpf.f		lapack/cgeqr2.f		\
	lapack/cgeqr2p.f	lapack/cgeqrf.f		\
	lapack/cgeqrfp.f	lapack/cgerfs.f		\
	lapack/cgerq2.f		lapack/cgerqf.f		\
	lapack/cgesc2.f		lapack/cgesdd.f		\
	lapack/cgesv.f		lapack/cgesvd.f		\
	lapack/cgesvx.f		lapack/cgetc2.f		\
	lapack/cgetf2.f		lapack/cgetri.f		\
	lapack/cggbak.f		lapack/cggbal.f		\
	lapack/cgges.f		lapack/cggesx.f		\
	lapack/cggev.f		lapack/cggevx.f		\
	lapack/cggglm.f		lapack/cgghrd.f		\
	lapack/cgglse.f		lapack/cggqrf.f		\
	lapack/cggrqf.f		lapack/cggsvd.f		\
	lapack/cggsvp.f		lapack/cgtcon.f		\
	lapack/cgtrfs.f		lapack/cgtsv.f		\
	lapack/cgtsvx.f		lapack/cgttrf.f		\
	lapack/cgttrs.f		lapack/cgtts2.f		\
	lapack/chbev.f		lapack/chbevd.f		\
	lapack/chbevx.f		lapack/chbgst.f		\
	lapack/chbgv.f		lapack/chbgvd.f		\
	lapack/chbgvx.f		lapack/chbtrd.f		\
	lapack/checon.f		lapack/cheev.f		\
	lapack/cheevd.f		lapack/cheevr.f		\
	lapack/cheevx.f		lapack/chegs2.f		\
	lapack/chegst.f		lapack/chegv.f		\
	lapack/chegvd.f		lapack/chegvx.f		\
	lapack/cherfs.f		lapack/chesv.f		\
	lapack/chesvx.f		lapack/chetd2.f		\
	lapack/chetf2.f		lapack/chetrd.f		\
	lapack/chetrf.f		lapack/chetri.f		\
	lapack/chetri2.f	lapack/chetri2x.f	\
	lapack/cheswapr.f	lapack/chetrs.f		\
	lapack/chetrs2.f	lapack/chetf2_rook.f	\
	lapack/chetrf_rook.f	lapack/chetri_rook.f	\
	lapack/chetrs_rook.f	lapack/checon_rook.f	\
	lapack/chesv_rook.f	lapack/chgeqz.f		\
	lapack/chpcon.f		lapack/chpev.f		\
	lapack/chpevd.f		lapack/chpevx.f		\
	lapack/chpgst.f		lapack/chpgv.f		\
	lapack/chpgvd.f		lapack/chpgvx.f		\
	lapack/chprfs.f		lapack/chpsv.f		\
	lapack/chpsvx.f		lapack/chptrd.f		\
	lapack/chptrf.f		lapack/chptri.f		\
	lapack/chptrs.f		lapack/chsein.f		\
	lapack/chseqr.f		lapack/clabrd.f		\
	lapack/clacgv.f		lapack/clacon.f		\
	lapack/clacn2.f		lapack/clacp2.f		\
	lapack/clacpy.f		lapack/clacrm.f		\
	lapack/clacrt.f		lapack/cladiv.f		\
	lapack/claed0.f		lapack/claed7.f		\
	lapack/claed8.f		lapack/claein.f		\
	lapack/claesy.f		lapack/claev2.f		\
	lapack/clags2.f		lapack/clagtm.f		\
	lapack/clahef.f		lapack/clahef_rook.f	\
	lapack/clahqr.f		lapack/clahrd.f		\
	lapack/clahr2.f		lapack/claic1.f		\
	lapack/clals0.f		lapack/clalsa.f		\
	lapack/clalsd.f		lapack/clangb.f		\
	lapack/clange.f		lapack/clangt.f		\
	lapack/clanhb.f		lapack/clanhe.f		\
	lapack/clanhp.f		lapack/clanhs.f		\
	lapack/clanht.f		lapack/clansb.f		\
	lapack/clansp.f		lapack/clansy.f		\
	lapack/clantb.f		lapack/clantp.f		\
	lapack/clantr.f		lapack/clapll.f		\
	lapack/clapmt.f		lapack/clarcm.f		\
	lapack/claqgb.f		lapack/claqge.f		\
	lapack/claqhb.f		lapack/claqhe.f		\
	lapack/claqhp.f		lapack/claqp2.f		\
	lapack/claqps.f		lapack/claqsb.f		\
	lapack/claqr0.f		lapack/claqr1.f		\
	lapack/claqr2.f		lapack/claqr3.f		\
	lapack/claqr4.f		lapack/claqr5.f		\
	lapack/claqsp.f		lapack/claqsy.f		\
	lapack/clar1v.f		lapack/clar2v.f		\
	lapack/ilaclr.f		lapack/ilaclc.f		\
	lapack/clarf.f		lapack/clarfb.f		\
	lapack/clarfg.f		lapack/clarft.f		\
	lapack/clarfgp.f	lapack/clarfx.f		\
	lapack/clargv.f		lapack/clarnv.f		\
	lapack/clarrv.f		lapack/clartg.f		\
	lapack/clartv.f		lapack/clarz.f		\
	lapack/clarzb.f		lapack/clarzt.f		\
	lapack/clascl.f		lapack/claset.f		\
	lapack/clasr.f		lapack/classq.f		\
	lapack/claswp.f		lapack/clasyf.f		\
	lapack/clasyf_rook.f	lapack/clatbs.f		\
	lapack/clatdf.f		lapack/clatps.f		\
	lapack/clatrd.f		lapack/clatrs.f		\
	lapack/clatrz.f		lapack/clatzm.f		\
	lapack/clauu2.f		lapack/clauum.f		\
	lapack/cpbcon.f		lapack/cpbequ.f		\
	lapack/cpbrfs.f		lapack/cpbstf.f		\
	lapack/cpbsv.f		lapack/cpbsvx.f		\
	lapack/cpbtf2.f		lapack/cpbtrf.f		\
	lapack/cpbtrs.f		lapack/cpocon.f		\
	lapack/cpoequ.f		lapack/cporfs.f		\
	lapack/cposv.f		lapack/cposvx.f		\
	lapack/cpotf2.f		lapack/cpotri.f		\
	lapack/cpstrf.f		lapack/cpstf2.f		\
	lapack/cppcon.f		lapack/cppequ.f		\
	lapack/cpprfs.f		lapack/cppsv.f		\
	lapack/cppsvx.f		lapack/cpptrf.f		\
	lapack/cpptri.f		lapack/cpptrs.f		\
	lapack/cptcon.f		lapack/cpteqr.f		\
	lapack/cptrfs.f		lapack/cptsv.f		\
	lapack/cptsvx.f		lapack/cpttrf.f		\
	lapack/cpttrs.f		lapack/cptts2.f		\
	lapack/crot.f		lapack/cspcon.f		\
	lapack/cspmv.f		lapack/cspr.f		\
	lapack/csprfs.f		lapack/cspsv.f		\
	lapack/cspsvx.f		lapack/csptrf.f		\
	lapack/csptri.f		lapack/csptrs.f		\
	lapack/csrscl.f		lapack/cstedc.f		\
	lapack/cstegr.f		lapack/cstein.f		\
	lapack/csteqr.f		lapack/csycon.f		\
	lapack/csymv.f		lapack/csyr.f		\
	lapack/csyrfs.f		lapack/csysv.f		\
	lapack/csysvx.f		lapack/csytf2.f		\
	lapack/csytrf.f		lapack/csytri.f		\
	lapack/csytri2.f	lapack/csytri2x.f	\
	lapack/csyswapr.f	lapack/csytrs.f		\
	lapack/csytrs2.f	lapack/csyconv.f	\
	lapack/csytf2_rook.f	lapack/csytrf_rook.f	\
	lapack/csytrs_rook.f	lapack/csytri_rook.f	\
	lapack/csycon_rook.f	lapack/csysv_rook.f	\
	lapack/ctbcon.f		lapack/ctbrfs.f		\
	lapack/ctbtrs.f		lapack/ctgevc.f		\
	lapack/ctgex2.f		lapack/ctgexc.f		\
	lapack/ctgsen.f		lapack/ctgsja.f		\
	lapack/ctgsna.f		lapack/ctgsy2.f		\
	lapack/ctgsyl.f		lapack/ctpcon.f		\
	lapack/ctprfs.f		lapack/ctptri.f		\
	lapack/ctptrs.f		lapack/ctrcon.f		\
	lapack/ctrevc.f		lapack/ctrexc.f		\
	lapack/ctrrfs.f		lapack/ctrsen.f		\
	lapack/ctrsna.f		lapack/ctrsyl.f		\
	lapack/ctrti2.f		lapack/ctrtri.f		\
	lapack/ctrtrs.f		lapack/ctzrqf.f		\
	lapack/ctzrzf.f		lapack/cung2l.f		\
	lapack/cung2r.f		lapack/cungbr.f		\
	lapack/cunghr.f		lapack/cungl2.f		\
	lapack/cunglq.f		lapack/cungql.f		\
	lapack/cungqr.f		lapack/cungr2.f		\
	lapack/cungrq.f		lapack/cungtr.f		\
	lapack/cunm2l.f		lapack/cunm2r.f		\
	lapack/cunmbr.f		lapack/cunmhr.f		\
	lapack/cunml2.f		lapack/cunmlq.f		\
	lapack/cunmql.f		lapack/cunmqr.f		\
	lapack/cunmr2.f		lapack/cunmr3.f		\
	lapack/cunmrq.f		lapack/cunmrz.f		\
	lapack/cunmtr.f		lapack/cupgtr.f		\
	lapack/cupmtr.f		lapack/icmax1.f		\
	lapack/scsum1.f		lapack/cstemr.f		\
	lapack/chfrk.f		lapack/ctfttp.f		\
	lapack/clanhf.f		lapack/cpftrf.f		\
	lapack/cpftri.f		lapack/cpftrs.f		\
	lapack/ctfsm.f		lapack/ctftri.f		\
	lapack/ctfttr.f		lapack/ctpttf.f		\
	lapack/ctpttr.f		lapack/ctrttf.f		\
	lapack/ctrttp.f		lapack/cgeequb.f	\
	lapack/cgbequb.f	lapack/csyequb.f	\
	lapack/cpoequb.f	lapack/cheequb.f	\
	lapack/cbbcsd.f		lapack/clapmr.f		\
	lapack/cunbdb.f		lapack/cunbdb1.f	\
	lapack/cunbdb2.f	lapack/cunbdb3.f	\
	lapack/cunbdb4.f	lapack/cunbdb5.f	\
	lapack/cunbdb6.f	lapack/cuncsd.f		\
	lapack/cuncsd2by1.f	lapack/cgeqrt.f		\
	lapack/cgeqrt2.f	lapack/cgeqrt3.f	\
	lapack/cgemqrt.f	lapack/ctpqrt.f		\
	lapack/ctpqrt2.f	lapack/ctpmqrt.f	\
	lapack/ctprfb.f

# Single precision complex LAPACK routines using extra precision.
if USEXBLAS
LAPACK_CXLASRC = \
	\
	lapack/cgesvxx.f		lapack/cgerfsx.f		\
	lapack/cla_gerfsx_extended.f	lapack/cla_geamv.f		\
	lapack/cla_gercond_c.f		lapack/cla_gercond_x.f		\
	lapack/cla_gerpvgrw.f		lapack/csysvxx.f		\
	lapack/csyrfsx.f		lapack/cla_syrfsx_extended.f	\
	lapack/cla_syamv.f		lapack/cla_syrcond_c.f		\
	lapack/cla_syrcond_x.f		lapack/cla_syrpvgrw.f		\
	lapack/cposvxx.f		lapack/cporfsx.f		\
	lapack/cla_porfsx_extended.f	lapack/cla_porcond_c.f		\
	lapack/cla_porcond_x.f		lapack/cla_porpvgrw.f		\
	lapack/cgbsvxx.f		lapack/cgbrfsx.f		\
	lapack/cla_gbrfsx_extended.f	lapack/cla_gbamv.f		\
	lapack/cla_gbrcond_c.f		lapack/cla_gbrcond_x.f		\
	lapack/cla_gbrpvgrw.f		lapack/chesvxx.f		\
	lapack/cherfsx.f		lapack/cla_herfsx_extended.f	\
	lapack/cla_heamv.f		lapack/cla_hercond_c.f		\
	lapack/cla_hercond_x.f		lapack/cla_herpvgrw.f		\
	lapack/cla_lin_berr.f		lapack/clarscl2.f		\
	lapack/clascl2.f		lapack/cla_wwaddw.f
endif

# Double-single mixed  precision complex routines  called from single,
# single-extra and double precision complex LAPACK routines (i.e. from
# CLASRC, CXLASRC, ZLASRC).
LAPACK_ZCLASRC = \
	lapack/cpotrs.f		lapack/cgetrs.f		\
	lapack/cpotrf.f		lapack/cgetrf.f

# Double precision real LAPACK routines.
LAPACK_DLASRC = 	\
	lapack/dgbbrd.f		lapack/dgbcon.f		\
	lapack/dgbequ.f		lapack/dgbrfs.f		\
	lapack/dgbsv.f		lapack/dgbsvx.f		\
	lapack/dgbtf2.f		lapack/dgbtrf.f		\
	lapack/dgbtrs.f		lapack/dgebak.f		\
	lapack/dgebal.f		lapack/dgebd2.f		\
	lapack/dgebrd.f		lapack/dgecon.f		\
	lapack/dgeequ.f		lapack/dgees.f		\
	lapack/dgeesx.f		lapack/dgeev.f		\
	lapack/dgeevx.f		lapack/dgegs.f		\
	lapack/dgegv.f		lapack/dgehd2.f		\
	lapack/dgehrd.f		lapack/dgelq2.f		\
	lapack/dgelqf.f		lapack/dgels.f		\
	lapack/dgelsd.f		lapack/dgelss.f		\
	lapack/dgelsx.f		lapack/dgelsy.f		\
	lapack/dgeql2.f		lapack/dgeqlf.f		\
	lapack/dgeqp3.f		lapack/dgeqpf.f		\
	lapack/dgeqr2.f		lapack/dgeqr2p.f	\
	lapack/dgeqrf.f		lapack/dgeqrfp.f	\
	lapack/dgerfs.f		lapack/dgerq2.f		\
	lapack/dgerqf.f		lapack/dgesc2.f		\
	lapack/dgesdd.f		lapack/dgesv.f		\
	lapack/dgesvd.f		lapack/dgesvx.f		\
	lapack/dgetc2.f		lapack/dgetf2.f		\
	lapack/dgetrf.f		lapack/dgetri.f		\
	lapack/dgetrs.f		lapack/dggbak.f		\
	lapack/dggbal.f		lapack/dgges.f		\
	lapack/dggesx.f		lapack/dggev.f		\
	lapack/dggevx.f		lapack/dggglm.f		\
	lapack/dgghrd.f		lapack/dgglse.f		\
	lapack/dggqrf.f		lapack/dggrqf.f		\
	lapack/dggsvd.f		lapack/dggsvp.f		\
	lapack/dgtcon.f		lapack/dgtrfs.f		\
	lapack/dgtsv.f		lapack/dgtsvx.f		\
	lapack/dgttrf.f		lapack/dgttrs.f		\
	lapack/dgtts2.f		lapack/dhgeqz.f		\
	lapack/dhsein.f		lapack/dhseqr.f		\
	lapack/dlabrd.f		lapack/dlacon.f		\
	lapack/dlacn2.f		lapack/dlaein.f		\
	lapack/dlaexc.f		lapack/dlag2.f		\
	lapack/dlags2.f		lapack/dlagtm.f		\
	lapack/dlagv2.f		lapack/dlahqr.f		\
	lapack/dlahrd.f		lapack/dlahr2.f		\
	lapack/dlaic1.f		lapack/dlaln2.f		\
	lapack/dlals0.f		lapack/dlalsa.f		\
	lapack/dlalsd.f		lapack/dlangb.f		\
	lapack/dlange.f		lapack/dlangt.f		\
	lapack/dlanhs.f		lapack/dlansb.f		\
	lapack/dlansp.f		lapack/dlansy.f		\
	lapack/dlantb.f		lapack/dlantp.f		\
	lapack/dlantr.f		lapack/dlanv2.f		\
	lapack/dlapll.f		lapack/dlapmt.f		\
	lapack/dlaqgb.f		lapack/dlaqge.f		\
	lapack/dlaqp2.f		lapack/dlaqps.f		\
	lapack/dlaqsb.f		lapack/dlaqsp.f		\
	lapack/dlaqsy.f		lapack/dlaqr0.f		\
	lapack/dlaqr1.f		lapack/dlaqr2.f		\
	lapack/dlaqr3.f		lapack/dlaqr4.f		\
	lapack/dlaqr5.f		lapack/dlaqtr.f		\
	lapack/dlar1v.f		lapack/dlar2v.f		\
	lapack/iladlr.f		lapack/iladlc.f		\
	lapack/dlarf.f		lapack/dlarfb.f		\
	lapack/dlarfg.f		lapack/dlarfgp.f		\
	lapack/dlarft.f		lapack/dlarfx.f		\
	lapack/dlargv.f		lapack/dlarrv.f		\
	lapack/dlartv.f		lapack/dlarz.f		\
	lapack/dlarzb.f		lapack/dlarzt.f		\
	lapack/dlaswp.f		lapack/dlasy2.f		\
	lapack/dlasyf.f		lapack/dlasyf_rook.f	\
	lapack/dlatbs.f		lapack/dlatdf.f		\
	lapack/dlatps.f		lapack/dlatrd.f		\
	lapack/dlatrs.f		lapack/dlatrz.f		\
	lapack/dlatzm.f		lapack/dlauu2.f		\
	lapack/dlauum.f		lapack/dopgtr.f		\
	lapack/dopmtr.f		lapack/dorg2l.f		\
	lapack/dorg2r.f		lapack/dorgbr.f		\
	lapack/dorghr.f		lapack/dorgl2.f		\
	lapack/dorglq.f		lapack/dorgql.f		\
	lapack/dorgqr.f		lapack/dorgr2.f		\
	lapack/dorgrq.f		lapack/dorgtr.f		\
	lapack/dorm2l.f		lapack/dorm2r.f		\
	lapack/dormbr.f		lapack/dormhr.f		\
	lapack/dorml2.f		lapack/dormlq.f		\
	lapack/dormql.f		lapack/dormqr.f		\
	lapack/dormr2.f		lapack/dormr3.f		\
	lapack/dormrq.f		lapack/dormrz.f		\
	lapack/dormtr.f		lapack/dpbcon.f		\
	lapack/dpbequ.f		lapack/dpbrfs.f		\
	lapack/dpbstf.f		lapack/dpbsv.f		\
	lapack/dpbsvx.f		lapack/dpbtf2.f		\
	lapack/dpbtrf.f		lapack/dpbtrs.f		\
	lapack/dpocon.f		lapack/dpoequ.f		\
	lapack/dporfs.f		lapack/dposv.f		\
	lapack/dposvx.f		lapack/dpotf2.f		\
	lapack/dpotrf.f		lapack/dpotri.f		\
	lapack/dpotrs.f		lapack/dpstrf.f		\
	lapack/dpstf2.f		lapack/dppcon.f		\
	lapack/dppequ.f		lapack/dpprfs.f		\
	lapack/dppsv.f		lapack/dppsvx.f		\
	lapack/dpptrf.f		lapack/dpptri.f		\
	lapack/dpptrs.f		lapack/dptcon.f		\
	lapack/dpteqr.f		lapack/dptrfs.f		\
	lapack/dptsv.f		lapack/dptsvx.f		\
	lapack/dpttrs.f		lapack/dptts2.f		\
	lapack/drscl.f		lapack/dsbev.f		\
	lapack/dsbevd.f		lapack/dsbevx.f		\
	lapack/dsbgst.f		lapack/dsbgv.f		\
	lapack/dsbgvd.f		lapack/dsbgvx.f		\
	lapack/dsbtrd.f		lapack/dspcon.f		\
	lapack/dspev.f		lapack/dspevd.f		\
	lapack/dspevx.f		lapack/dspgst.f		\
	lapack/dspgv.f		lapack/dspgvd.f		\
	lapack/dspgvx.f		lapack/dsprfs.f		\
	lapack/dspsv.f		lapack/dspsvx.f		\
	lapack/dsptrd.f		lapack/dsptrf.f		\
	lapack/dsptri.f		lapack/dsptrs.f		\
	lapack/dstegr.f		lapack/dstein.f		\
	lapack/dstev.f		lapack/dstevd.f		\
	lapack/dstevr.f		lapack/dstevx.f		\
	lapack/dsycon.f		lapack/dsyev.f		\
	lapack/dsyevd.f		lapack/dsyevr.f		\
	lapack/dsyevx.f		lapack/dsygs2.f		\
	lapack/dsygst.f		lapack/dsygv.f		\
	lapack/dsygvd.f		lapack/dsygvx.f		\
	lapack/dsyrfs.f		lapack/dsysv.f		\
	lapack/dsysvx.f		lapack/dsytd2.f		\
	lapack/dsytf2.f		lapack/dsytrd.f		\
	lapack/dsytrf.f		lapack/dsytri.f		\
	lapack/dsytri2.f	lapack/dsytri2x.f	\
	lapack/dsyswapr.f	lapack/dsytrs.f		\
	lapack/dsytrs2.f	lapack/dsyconv.f	\
	lapack/dsytf2_rook.f	lapack/dsytrf_rook.f	\
	lapack/dsytrs_rook.f	lapack/dsytri_rook.f	\
	lapack/dsycon_rook.f	lapack/dsysv_rook.f	\
	lapack/dtbcon.f		lapack/dtbrfs.f		\
	lapack/dtbtrs.f		lapack/dtgevc.f		\
	lapack/dtgex2.f		lapack/dtgexc.f		\
	lapack/dtgsen.f		lapack/dtgsja.f		\
	lapack/dtgsna.f		lapack/dtgsy2.f		\
	lapack/dtgsyl.f		lapack/dtpcon.f		\
	lapack/dtprfs.f		lapack/dtptri.f		\
	lapack/dtptrs.f		lapack/dtrcon.f		\
	lapack/dtrevc.f		lapack/dtrexc.f		\
	lapack/dtrrfs.f		lapack/dtrsen.f		\
	lapack/dtrsna.f		lapack/dtrsyl.f		\
	lapack/dtrti2.f		lapack/dtrtri.f		\
	lapack/dtrtrs.f		lapack/dtzrqf.f		\
	lapack/dtzrzf.f		lapack/dstemr.f		\
	lapack/dsgesv.f		lapack/dsposv.f		\
	lapack/dlag2s.f		lapack/slag2d.f		\
	lapack/dlat2s.f		lapack/dlansf.f		\
	lapack/dpftrf.f		lapack/dpftri.f		\
	lapack/dpftrs.f		lapack/dsfrk.f		\
	lapack/dtfsm.f		lapack/dtftri.f		\
	lapack/dtfttp.f		lapack/dtfttr.f		\
	lapack/dtpttf.f		lapack/dtpttr.f		\
	lapack/dtrttf.f		lapack/dtrttp.f		\
	lapack/dgejsv.f		lapack/dgesvj.f		\
	lapack/dgsvj0.f		lapack/dgsvj1.f		\
	lapack/dgeequb.f	lapack/dsyequb.f	\
	lapack/dpoequb.f	lapack/dgbequb.f	\
	lapack/dbbcsd.f		lapack/dlapmr.f		\
	lapack/dorbdb.f		lapack/dorbdb1.f	\
	lapack/dorbdb2.f	lapack/dorbdb3.f	\
	lapack/dorbdb4.f	lapack/dorbdb5.f	\
	lapack/dorbdb6.f	lapack/dorcsd.f		\
	lapack/dorcsd2by1.f	lapack/dgeqrt.f		\
	lapack/dgeqrt2.f	lapack/dgeqrt3.f	\
	lapack/dgemqrt.f	lapack/dtpqrt.f		\
	lapack/dtpqrt2.f	lapack/dtpmqrt.f	\
	lapack/dtprfb.f


# Double precision real LAPACK routines using extra precision.
if USEXBLAS
LAPACK_DXLASRC = \
	\
	lapack/dgesvxx.f		lapack/dgerfsx.f		\
	lapack/dla_gerfsx_extended.f	lapack/dla_geamv.f		\
	lapack/dla_gercond.f		lapack/dla_gerpvgrw.f		\
	lapack/dsysvxx.f		lapack/dsyrfsx.f		\
	lapack/dla_syrfsx_extended.f	lapack/dla_syamv.f		\
	lapack/dla_syrcond.f		lapack/dla_syrpvgrw.f		\
	lapack/dposvxx.f		lapack/dporfsx.f		\
	lapack/dla_porfsx_extended.f	lapack/dla_porcond.f		\
	lapack/dla_porpvgrw.f		lapack/dgbsvxx.f		\
	lapack/dgbrfsx.f		lapack/dla_gbrfsx_extended.f	\
	lapack/dla_gbamv.f		lapack/dla_gbrcond.f		\
	lapack/dla_gbrpvgrw.f		lapack/dla_lin_berr.f		\
	lapack/dlarscl2.f		lapack/dlascl2.f		\
	lapack/dla_wwaddw.f
endif

# Double precision complex LAPACK routines.
LAPACK_ZLASRC = 	\
	lapack/zbdsqr.f		lapack/zgbbrd.f		\
	lapack/zgbcon.f		lapack/zgbequ.f		\
	lapack/zgbrfs.f		lapack/zgbsv.f		\
	lapack/zgbsvx.f		lapack/zgbtf2.f		\
	lapack/zgbtrf.f		lapack/zgbtrs.f		\
	lapack/zgebak.f		lapack/zgebal.f		\
	lapack/zgebd2.f		lapack/zgebrd.f		\
	lapack/zgecon.f		lapack/zgeequ.f		\
	lapack/zgees.f		lapack/zgeesx.f		\
	lapack/zgeev.f		lapack/zgeevx.f		\
	lapack/zgegs.f		lapack/zgegv.f		\
	lapack/zgehd2.f		lapack/zgehrd.f		\
	lapack/zgelq2.f		lapack/zgelqf.f		\
	lapack/zgels.f		lapack/zgelsd.f		\
	lapack/zgelss.f		lapack/zgelsx.f		\
	lapack/zgelsy.f		lapack/zgeql2.f		\
	lapack/zgeqlf.f		lapack/zgeqp3.f		\
	lapack/zgeqpf.f		lapack/zgeqr2.f		\
	lapack/zgeqr2p.f	lapack/zgeqrf.f		\
	lapack/zgeqrfp.f	lapack/zgerfs.f		\
	lapack/zgerq2.f		lapack/zgerqf.f		\
	lapack/zgesc2.f		lapack/zgesdd.f		\
	lapack/zgesv.f		lapack/zgesvd.f		\
	lapack/zgesvx.f		lapack/zgetc2.f		\
	lapack/zgetf2.f		lapack/zgetrf.f		\
	lapack/zgetri.f		lapack/zgetrs.f		\
	lapack/zggbak.f		lapack/zggbal.f		\
	lapack/zgges.f		lapack/zggesx.f		\
	lapack/zggev.f		lapack/zggevx.f		\
	lapack/zggglm.f		lapack/zgghrd.f		\
	lapack/zgglse.f		lapack/zggqrf.f		\
	lapack/zggrqf.f		lapack/zggsvd.f		\
	lapack/zggsvp.f		lapack/zgtcon.f		\
	lapack/zgtrfs.f		lapack/zgtsv.f		\
	lapack/zgtsvx.f		lapack/zgttrf.f		\
	lapack/zgttrs.f		lapack/zgtts2.f		\
	lapack/zhbev.f		lapack/zhbevd.f		\
	lapack/zhbevx.f		lapack/zhbgst.f		\
	lapack/zhbgv.f		lapack/zhbgvd.f		\
	lapack/zhbgvx.f		lapack/zhbtrd.f		\
	lapack/zhecon.f		lapack/zheev.f		\
	lapack/zheevd.f		lapack/zheevr.f		\
	lapack/zheevx.f		lapack/zhegs2.f		\
	lapack/zhegst.f		lapack/zhegv.f		\
	lapack/zhegvd.f		lapack/zhegvx.f		\
	lapack/zherfs.f		lapack/zhesv.f		\
	lapack/zhesvx.f		lapack/zhetd2.f		\
	lapack/zhetf2.f		lapack/zhetrd.f		\
	lapack/zhetrf.f		lapack/zhetri.f		\
	lapack/zhetri2.f	lapack/zhetri2x.f	\
	lapack/zheswapr.f	lapack/zhetrs.f		\
	lapack/zhetrs2.f	lapack/zhetf2_rook.f	\
	lapack/zhetrf_rook.f	lapack/zhetri_rook.f	\
	lapack/zhetrs_rook.f	lapack/zhecon_rook.f	\
	lapack/zhesv_rook.f	lapack/zhgeqz.f		\
	lapack/zhpcon.f		lapack/zhpev.f		\
	lapack/zhpevd.f		lapack/zhpevx.f		\
	lapack/zhpgst.f		lapack/zhpgv.f		\
	lapack/zhpgvd.f		lapack/zhpgvx.f		\
	lapack/zhprfs.f		lapack/zhpsv.f		\
	lapack/zhpsvx.f		lapack/zhptrd.f		\
	lapack/zhptrf.f		lapack/zhptri.f		\
	lapack/zhptrs.f		lapack/zhsein.f		\
	lapack/zhseqr.f		lapack/zlabrd.f		\
	lapack/zlacgv.f		lapack/zlacon.f		\
	lapack/zlacn2.f		lapack/zlacp2.f		\
	lapack/zlacpy.f		lapack/zlacrm.f		\
	lapack/zlacrt.f		lapack/zladiv.f		\
	lapack/zlaed0.f		lapack/zlaed7.f		\
	lapack/zlaed8.f		lapack/zlaein.f		\
	lapack/zlaesy.f		lapack/zlaev2.f		\
	lapack/zlags2.f		lapack/zlagtm.f		\
	lapack/zlahef.f		lapack/zlahef_rook.f	\
	lapack/zlahqr.f		lapack/zlahrd.f		\
	lapack/zlahr2.f		lapack/zlaic1.f		\
	lapack/zlals0.f		lapack/zlalsa.f		\
	lapack/zlalsd.f		lapack/zlangb.f		\
	lapack/zlange.f		lapack/zlangt.f		\
	lapack/zlanhb.f		lapack/zlanhe.f		\
	lapack/zlanhp.f		lapack/zlanhs.f		\
	lapack/zlanht.f		lapack/zlansb.f		\
	lapack/zlansp.f		lapack/zlansy.f		\
	lapack/zlantb.f		lapack/zlantp.f		\
	lapack/zlantr.f		lapack/zlapll.f		\
	lapack/zlapmt.f		lapack/zlaqgb.f		\
	lapack/zlaqge.f		lapack/zlaqhb.f		\
	lapack/zlaqhe.f		lapack/zlaqhp.f		\
	lapack/zlaqp2.f		lapack/zlaqps.f		\
	lapack/zlaqsb.f		lapack/zlaqr0.f		\
	lapack/zlaqr1.f		lapack/zlaqr2.f		\
	lapack/zlaqr3.f		lapack/zlaqr4.f		\
	lapack/zlaqr5.f		lapack/zlaqsp.f		\
	lapack/zlaqsy.f		lapack/zlar1v.f		\
	lapack/zlar2v.f		lapack/ilazlr.f		\
	lapack/ilazlc.f		lapack/zlarcm.f		\
	lapack/zlarf.f		lapack/zlarfb.f		\
	lapack/zlarfg.f		lapack/zlarft.f		\
	lapack/zlarfgp.f	lapack/zlarfx.f		\
	lapack/zlargv.f		lapack/zlarnv.f		\
	lapack/zlarrv.f		lapack/zlartg.f		\
	lapack/zlartv.f		lapack/zlarz.f		\
	lapack/zlarzb.f		lapack/zlarzt.f		\
	lapack/zlascl.f		lapack/zlaset.f		\
	lapack/zlasr.f		lapack/zlassq.f		\
	lapack/zlaswp.f		lapack/zlasyf.f		\
	lapack/zlasyf_rook.f	lapack/zlatbs.f		\
	lapack/zlatdf.f		lapack/zlatps.f		\
	lapack/zlatrd.f		lapack/zlatrs.f		\
	lapack/zlatrz.f		lapack/zlatzm.f		\
	lapack/zlauu2.f		lapack/zlauum.f		\
	lapack/zpbcon.f		lapack/zpbequ.f		\
	lapack/zpbrfs.f		lapack/zpbstf.f		\
	lapack/zpbsv.f		lapack/zpbsvx.f		\
	lapack/zpbtf2.f		lapack/zpbtrf.f		\
	lapack/zpbtrs.f		lapack/zpocon.f		\
	lapack/zpoequ.f		lapack/zporfs.f		\
	lapack/zposv.f		lapack/zposvx.f		\
	lapack/zpotf2.f		lapack/zpotrf.f		\
	lapack/zpotri.f		lapack/zpotrs.f		\
	lapack/zpstrf.f		lapack/zpstf2.f		\
	lapack/zppcon.f		lapack/zppequ.f		\
	lapack/zpprfs.f		lapack/zppsv.f		\
	lapack/zppsvx.f		lapack/zpptrf.f		\
	lapack/zpptri.f		lapack/zpptrs.f		\
	lapack/zptcon.f		lapack/zpteqr.f		\
	lapack/zptrfs.f		lapack/zptsv.f		\
	lapack/zptsvx.f		lapack/zpttrf.f		\
	lapack/zpttrs.f		lapack/zptts2.f		\
	lapack/zrot.f		lapack/zspcon.f		\
	lapack/zspmv.f		lapack/zspr.f		\
	lapack/zsprfs.f		lapack/zspsv.f		\
	lapack/zspsvx.f		lapack/zsptrf.f		\
	lapack/zsptri.f		lapack/zsptrs.f		\
	lapack/zdrscl.f		lapack/zstedc.f		\
	lapack/zstegr.f		lapack/zstein.f		\
	lapack/zsteqr.f		lapack/zsycon.f		\
	lapack/zsymv.f		lapack/zsyr.f		\
	lapack/zsyrfs.f		lapack/zsysv.f		\
	lapack/zsysvx.f		lapack/zsytf2.f		\
	lapack/zsytrf.f		lapack/zsytri.f		\
	lapack/zsytri2.f	lapack/zsytri2x.f	\
	lapack/zsyswapr.f	lapack/zsytrs.f		\
	lapack/zsytrs2.f	lapack/zsyconv.f	\
	lapack/zsytf2_rook.f	lapack/zsytrf_rook.f	\
	lapack/zsytrs_rook.f	lapack/zsytri_rook.f	\
	lapack/zsycon_rook.f	lapack/zsysv_rook.f	\
	lapack/ztbcon.f		lapack/ztbrfs.f		\
	lapack/ztbtrs.f		lapack/ztgevc.f		\
	lapack/ztgex2.f		lapack/ztgexc.f		\
	lapack/ztgsen.f		lapack/ztgsja.f		\
	lapack/ztgsna.f		lapack/ztgsy2.f		\
	lapack/ztgsyl.f		lapack/ztpcon.f		\
	lapack/ztprfs.f		lapack/ztptri.f		\
	lapack/ztptrs.f		lapack/ztrcon.f		\
	lapack/ztrevc.f		lapack/ztrexc.f		\
	lapack/ztrrfs.f		lapack/ztrsen.f		\
	lapack/ztrsna.f		lapack/ztrsyl.f		\
	lapack/ztrti2.f		lapack/ztrtri.f		\
	lapack/ztrtrs.f		lapack/ztzrqf.f		\
	lapack/ztzrzf.f		lapack/zung2l.f		\
	lapack/zung2r.f		lapack/zungbr.f		\
	lapack/zunghr.f		lapack/zungl2.f		\
	lapack/zunglq.f		lapack/zungql.f		\
	lapack/zungqr.f		lapack/zungr2.f		\
	lapack/zungrq.f		lapack/zungtr.f		\
	lapack/zunm2l.f		lapack/zunm2r.f		\
	lapack/zunmbr.f		lapack/zunmhr.f		\
	lapack/zunml2.f		lapack/zunmlq.f		\
	lapack/zunmql.f		lapack/zunmqr.f		\
	lapack/zunmr2.f		lapack/zunmr3.f		\
	lapack/zunmrq.f		lapack/zunmrz.f		\
	lapack/zunmtr.f		lapack/zupgtr.f		\
	lapack/zupmtr.f		lapack/izmax1.f		\
	lapack/dzsum1.f		lapack/zstemr.f		\
	lapack/zcgesv.f		lapack/zcposv.f		\
	lapack/zlag2c.f		lapack/clag2z.f		\
	lapack/zlat2c.f		lapack/zhfrk.f		\
	lapack/ztfttp.f		lapack/zlanhf.f		\
	lapack/zpftrf.f		lapack/zpftri.f		\
	lapack/zpftrs.f		lapack/ztfsm.f		\
	lapack/ztftri.f		lapack/ztfttr.f		\
	lapack/ztpttf.f		lapack/ztpttr.f		\
	lapack/ztrttf.f		lapack/ztrttp.f		\
	lapack/zgeequb.f	lapack/zgbequb.f	\
	lapack/zsyequb.f	lapack/zpoequb.f	\
	lapack/zheequb.f	lapack/zbbcsd.f		\
	lapack/zlapmr.f		lapack/zunbdb.f		\
	lapack/zunbdb1.f	lapack/zunbdb2.f	\
	lapack/zunbdb3.f	lapack/zunbdb4.f	\
	lapack/zunbdb5.f	lapack/zunbdb6.f	\
	lapack/zuncsd.f		lapack/zuncsd2by1.f	\
	lapack/zgeqrt.f		lapack/zgeqrt2.f	\
	lapack/zgeqrt3.f	lapack/zgemqrt.f	\
	lapack/ztpqrt.f		lapack/ztpqrt2.f	\
	lapack/ztpmqrt.f	lapack/ztprfb.f

# Double precision complex LAPACK routines using extra precision.
if USEXBLAS
LAPACK_ZXLASRC = 	\
	lapack/zgesvxx.f		lapack/zgerfsx.f		\
	lapack/zla_gerfsx_extended.f	lapack/zla_geamv.f		\
	lapack/zla_gercond_c.f		lapack/zla_gercond_x.f		\
	lapack/zla_gerpvgrw.f		lapack/zsysvxx.f		\
	lapack/zsyrfsx.f		lapack/zla_syrfsx_extended.f	\
	lapack/zla_syamv.f		lapack/zla_syrcond_c.f		\
	lapack/zla_syrcond_x.f		lapack/zla_syrpvgrw.f		\
	lapack/zposvxx.f		lapack/zporfsx.f		\
	lapack/zla_porfsx_extended.f	lapack/zla_porcond_c.f		\
	lapack/zla_porcond_x.f		lapack/zla_porpvgrw.f		\
	lapack/zgbsvxx.f		lapack/zgbrfsx.f		\
	lapack/zla_gbrfsx_extended.f	lapack/zla_gbamv.f		\
	lapack/zla_gbrcond_c.f		lapack/zla_gbrcond_x.f		\
	lapack/zla_gbrpvgrw.f		lapack/zhesvxx.f		\
	lapack/zherfsx.f		lapack/zla_herfsx_extended.f	\
	lapack/zla_heamv.f		lapack/zla_hercond_c.f		\
	lapack/zla_hercond_x.f		lapack/zla_herpvgrw.f		\
	lapack/zla_lin_berr.f		lapack/zlarscl2.f		\
	lapack/zlascl2.f		lapack/zla_wwaddw.f
endif

## --------------------------------------------------------------------
## Library.
## --------------------------------------------------------------------

LAPACK_ALLOBJ	= \
	$(LAPACK_SLASRC) $(LAPACK_DLASRC) $(LAPACK_DSLASRC)	\
	$(LAPACK_CLASRC) $(LAPACK_ZLASRC) $(LAPACK_ZCLASRC)	\
	$(LAPACK_SCLAUX) $(LAPACK_DZLAUX) $(LAPACK_ALLAUX)
LAPACK_ALLXOBJ = \
	$(LAPACK_SXLASRC) $(LAPACK_DXLASRC)			\
	$(LAPACK_CXLASRC) $(LAPACK_ZXLASRC)

liblapack_la_LDFLAGS	= -version-info 1:0:0

if USEXBLAS
liblapack_la_SOURCES	= $(LAPACK_ALLOBJ) $(LAPACK_ALLXOBJ)
else
liblapack_la_SOURCES	= $(LAPACK_ALLOBJ)
endif

#page
#### TMGLIB

TMGLIB_SCATGEN = 	\
	tmglib/slatm1.f	tmglib/slaran.f	\
	tmglib/slarnd.f

TMGLIB_SMATGEN = 	\
	tmglib/slatms.f	tmglib/slatme.f	\
	tmglib/slatmr.f	tmglib/slatmt.f	\
	tmglib/slagge.f	tmglib/slagsy.f	\
	tmglib/slakf2.f	tmglib/slarge.f	\
	tmglib/slaror.f	tmglib/slarot.f	\
	tmglib/slatm2.f	tmglib/slatm3.f	\
	tmglib/slatm5.f	tmglib/slatm6.f	\
	tmglib/slatm7.f	tmglib/slahilb.f

TMGLIB_CMATGEN =	\
	tmglib/clatms.f	tmglib/clatme.f	\
	tmglib/clatmr.f	tmglib/clatmt.f	\
	tmglib/clagge.f	tmglib/claghe.f	\
	tmglib/clagsy.f	tmglib/clakf2.f	\
	tmglib/clarge.f	tmglib/claror.f	\
	tmglib/clarot.f	tmglib/clatm1.f	\
	tmglib/clarnd.f	tmglib/clatm2.f	\
	tmglib/clatm3.f	tmglib/clatm5.f	\
	tmglib/clatm6.f	tmglib/clahilb.f

TMGLIB_DZATGEN = 	\
	tmglib/dlatm1.f	tmglib/dlaran.f	\
	tmglib/dlarnd.f

TMGLIB_DMATGEN = 	\
	tmglib/dlatms.f	tmglib/dlatme.f	\
	tmglib/dlatmr.f	tmglib/dlatmt.f	\
	tmglib/dlagge.f	tmglib/dlagsy.f	\
	tmglib/dlakf2.f	tmglib/dlarge.f	\
	tmglib/dlaror.f	tmglib/dlarot.f	\
	tmglib/dlatm2.f	tmglib/dlatm3.f	\
	tmglib/dlatm5.f	tmglib/dlatm6.f	\
	tmglib/dlatm7.f	tmglib/dlahilb.f

TMGLIB_ZMATGEN =	\
	tmglib/zlatms.f	tmglib/zlatme.f	\
	tmglib/zlatmr.f	tmglib/zlatmt.f	\
	tmglib/zlagge.f	tmglib/zlaghe.f	\
	tmglib/zlagsy.f	tmglib/zlakf2.f	\
	tmglib/zlarge.f	tmglib/zlaror.f	\
	tmglib/zlarot.f	tmglib/zlatm1.f	\
	tmglib/zlarnd.f	tmglib/zlatm2.f	\
	tmglib/zlatm3.f	tmglib/zlatm5.f	\
	tmglib/zlatm6.f	tmglib/zlahilb.f

## --------------------------------------------------------------------

TMGLIB_ALLOBJ = \
	$(TMGLIB_SMATGEN) $(TMGLIB_CMATGEN) $(TMGLIB_SCATGEN) \
	$(TMGLIB_DMATGEN) $(TMGLIB_ZMATGEN) $(TMGLIB_DZATGEN)

libtmglib_la_LDFLAGS	= -version-info 1:0:0
libtmglib_la_SOURCES	= $(TMGLIB_ALLOBJ)

#page
#### LAPACKE

include_HEADERS	= \
	lapacke/src/lapacke_config.h	\
	lapacke/src/lapacke.h		\
	lapacke/src/lapacke_mangling.h	\
	lapacke/src/lapacke_utils.h

LAPACKE_SRC_SOURCES	= \
	lapacke/src/lapacke_cbbcsd.c \
	lapacke/src/lapacke_cbbcsd_work.c \
	lapacke/src/lapacke_cbdsqr.c \
	lapacke/src/lapacke_cbdsqr_work.c \
	lapacke/src/lapacke_cgbbrd.c \
	lapacke/src/lapacke_cgbbrd_work.c \
	lapacke/src/lapacke_cgbcon.c \
	lapacke/src/lapacke_cgbcon_work.c \
	lapacke/src/lapacke_cgbequ.c \
	lapacke/src/lapacke_cgbequ_work.c \
	lapacke/src/lapacke_cgbequb.c \
	lapacke/src/lapacke_cgbequb_work.c \
	lapacke/src/lapacke_cgbrfs.c \
	lapacke/src/lapacke_cgbrfs_work.c \
	lapacke/src/lapacke_cgbsv.c \
	lapacke/src/lapacke_cgbsv_work.c \
	lapacke/src/lapacke_cgbsvx.c \
	lapacke/src/lapacke_cgbsvx_work.c \
	lapacke/src/lapacke_cgbtrf.c \
	lapacke/src/lapacke_cgbtrf_work.c \
	lapacke/src/lapacke_cgbtrs.c \
	lapacke/src/lapacke_cgbtrs_work.c \
	lapacke/src/lapacke_cgebak.c \
	lapacke/src/lapacke_cgebak_work.c \
	lapacke/src/lapacke_cgebal.c \
	lapacke/src/lapacke_cgebal_work.c \
	lapacke/src/lapacke_cgebrd.c \
	lapacke/src/lapacke_cgebrd_work.c \
	lapacke/src/lapacke_cgecon.c \
	lapacke/src/lapacke_cgecon_work.c \
	lapacke/src/lapacke_cgeequ.c \
	lapacke/src/lapacke_cgeequ_work.c \
	lapacke/src/lapacke_cgeequb.c \
	lapacke/src/lapacke_cgeequb_work.c \
	lapacke/src/lapacke_cgees.c \
	lapacke/src/lapacke_cgees_work.c \
	lapacke/src/lapacke_cgeesx.c \
	lapacke/src/lapacke_cgeesx_work.c \
	lapacke/src/lapacke_cgeev.c \
	lapacke/src/lapacke_cgeev_work.c \
	lapacke/src/lapacke_cgeevx.c \
	lapacke/src/lapacke_cgeevx_work.c \
	lapacke/src/lapacke_cgehrd.c \
	lapacke/src/lapacke_cgehrd_work.c \
	lapacke/src/lapacke_cgelq2.c \
	lapacke/src/lapacke_cgelq2_work.c \
	lapacke/src/lapacke_cgelqf.c \
	lapacke/src/lapacke_cgelqf_work.c \
	lapacke/src/lapacke_cgels.c \
	lapacke/src/lapacke_cgels_work.c \
	lapacke/src/lapacke_cgelsd.c \
	lapacke/src/lapacke_cgelsd_work.c \
	lapacke/src/lapacke_cgelss.c \
	lapacke/src/lapacke_cgelss_work.c \
	lapacke/src/lapacke_cgelsy.c \
	lapacke/src/lapacke_cgelsy_work.c \
	lapacke/src/lapacke_cgemqrt.c \
	lapacke/src/lapacke_cgemqrt_work.c \
	lapacke/src/lapacke_cgeqlf.c \
	lapacke/src/lapacke_cgeqlf_work.c \
	lapacke/src/lapacke_cgeqp3.c \
	lapacke/src/lapacke_cgeqp3_work.c \
	lapacke/src/lapacke_cgeqpf.c \
	lapacke/src/lapacke_cgeqpf_work.c \
	lapacke/src/lapacke_cgeqr2.c \
	lapacke/src/lapacke_cgeqr2_work.c \
	lapacke/src/lapacke_cgeqrf.c \
	lapacke/src/lapacke_cgeqrf_work.c \
	lapacke/src/lapacke_cgeqrfp.c \
	lapacke/src/lapacke_cgeqrfp_work.c \
	lapacke/src/lapacke_cgeqrt.c \
	lapacke/src/lapacke_cgeqrt2.c \
	lapacke/src/lapacke_cgeqrt2_work.c \
	lapacke/src/lapacke_cgeqrt3.c \
	lapacke/src/lapacke_cgeqrt3_work.c \
	lapacke/src/lapacke_cgeqrt_work.c \
	lapacke/src/lapacke_cgerfs.c \
	lapacke/src/lapacke_cgerfs_work.c \
	lapacke/src/lapacke_cgerqf.c \
	lapacke/src/lapacke_cgerqf_work.c \
	lapacke/src/lapacke_cgesdd.c \
	lapacke/src/lapacke_cgesdd_work.c \
	lapacke/src/lapacke_cgesv.c \
	lapacke/src/lapacke_cgesv_work.c \
	lapacke/src/lapacke_cgesvd.c \
	lapacke/src/lapacke_cgesvd_work.c \
	lapacke/src/lapacke_cgesvx.c \
	lapacke/src/lapacke_cgesvx_work.c \
	lapacke/src/lapacke_cgetf2.c \
	lapacke/src/lapacke_cgetf2_work.c \
	lapacke/src/lapacke_cgetrf.c \
	lapacke/src/lapacke_cgetrf_work.c \
	lapacke/src/lapacke_cgetri.c \
	lapacke/src/lapacke_cgetri_work.c \
	lapacke/src/lapacke_cgetrs.c \
	lapacke/src/lapacke_cgetrs_work.c \
	lapacke/src/lapacke_cggbak.c \
	lapacke/src/lapacke_cggbak_work.c \
	lapacke/src/lapacke_cggbal.c \
	lapacke/src/lapacke_cggbal_work.c \
	lapacke/src/lapacke_cgges.c \
	lapacke/src/lapacke_cgges_work.c \
	lapacke/src/lapacke_cggesx.c \
	lapacke/src/lapacke_cggesx_work.c \
	lapacke/src/lapacke_cggev.c \
	lapacke/src/lapacke_cggev_work.c \
	lapacke/src/lapacke_cggevx.c \
	lapacke/src/lapacke_cggevx_work.c \
	lapacke/src/lapacke_cggglm.c \
	lapacke/src/lapacke_cggglm_work.c \
	lapacke/src/lapacke_cgghrd.c \
	lapacke/src/lapacke_cgghrd_work.c \
	lapacke/src/lapacke_cgglse.c \
	lapacke/src/lapacke_cgglse_work.c \
	lapacke/src/lapacke_cggqrf.c \
	lapacke/src/lapacke_cggqrf_work.c \
	lapacke/src/lapacke_cggrqf.c \
	lapacke/src/lapacke_cggrqf_work.c \
	lapacke/src/lapacke_cggsvd.c \
	lapacke/src/lapacke_cggsvd_work.c \
	lapacke/src/lapacke_cggsvp.c \
	lapacke/src/lapacke_cggsvp_work.c \
	lapacke/src/lapacke_cgtcon.c \
	lapacke/src/lapacke_cgtcon_work.c \
	lapacke/src/lapacke_cgtrfs.c \
	lapacke/src/lapacke_cgtrfs_work.c \
	lapacke/src/lapacke_cgtsv.c \
	lapacke/src/lapacke_cgtsv_work.c \
	lapacke/src/lapacke_cgtsvx.c \
	lapacke/src/lapacke_cgtsvx_work.c \
	lapacke/src/lapacke_cgttrf.c \
	lapacke/src/lapacke_cgttrf_work.c \
	lapacke/src/lapacke_cgttrs.c \
	lapacke/src/lapacke_cgttrs_work.c \
	lapacke/src/lapacke_chbev.c \
	lapacke/src/lapacke_chbev_work.c \
	lapacke/src/lapacke_chbevd.c \
	lapacke/src/lapacke_chbevd_work.c \
	lapacke/src/lapacke_chbevx.c \
	lapacke/src/lapacke_chbevx_work.c \
	lapacke/src/lapacke_chbgst.c \
	lapacke/src/lapacke_chbgst_work.c \
	lapacke/src/lapacke_chbgv.c \
	lapacke/src/lapacke_chbgv_work.c \
	lapacke/src/lapacke_chbgvd.c \
	lapacke/src/lapacke_chbgvd_work.c \
	lapacke/src/lapacke_chbgvx.c \
	lapacke/src/lapacke_chbgvx_work.c \
	lapacke/src/lapacke_chbtrd.c \
	lapacke/src/lapacke_chbtrd_work.c \
	lapacke/src/lapacke_checon.c \
	lapacke/src/lapacke_checon_work.c \
	lapacke/src/lapacke_cheequb.c \
	lapacke/src/lapacke_cheequb_work.c \
	lapacke/src/lapacke_cheev.c \
	lapacke/src/lapacke_cheev_work.c \
	lapacke/src/lapacke_cheevd.c \
	lapacke/src/lapacke_cheevd_work.c \
	lapacke/src/lapacke_cheevr.c \
	lapacke/src/lapacke_cheevr_work.c \
	lapacke/src/lapacke_cheevx.c \
	lapacke/src/lapacke_cheevx_work.c \
	lapacke/src/lapacke_chegst.c \
	lapacke/src/lapacke_chegst_work.c \
	lapacke/src/lapacke_chegv.c \
	lapacke/src/lapacke_chegv_work.c \
	lapacke/src/lapacke_chegvd.c \
	lapacke/src/lapacke_chegvd_work.c \
	lapacke/src/lapacke_chegvx.c \
	lapacke/src/lapacke_chegvx_work.c \
	lapacke/src/lapacke_cherfs.c \
	lapacke/src/lapacke_cherfs_work.c \
	lapacke/src/lapacke_chesv.c \
	lapacke/src/lapacke_chesv_work.c \
	lapacke/src/lapacke_chesvx.c \
	lapacke/src/lapacke_chesvx_work.c \
	lapacke/src/lapacke_cheswapr.c \
	lapacke/src/lapacke_cheswapr_work.c \
	lapacke/src/lapacke_chetrd.c \
	lapacke/src/lapacke_chetrd_work.c \
	lapacke/src/lapacke_chetrf.c \
	lapacke/src/lapacke_chetrf_work.c \
	lapacke/src/lapacke_chetri.c \
	lapacke/src/lapacke_chetri2.c \
	lapacke/src/lapacke_chetri2_work.c \
	lapacke/src/lapacke_chetri2x.c \
	lapacke/src/lapacke_chetri2x_work.c \
	lapacke/src/lapacke_chetri_work.c \
	lapacke/src/lapacke_chetrs.c \
	lapacke/src/lapacke_chetrs2.c \
	lapacke/src/lapacke_chetrs2_work.c \
	lapacke/src/lapacke_chetrs_work.c \
	lapacke/src/lapacke_chfrk.c \
	lapacke/src/lapacke_chfrk_work.c \
	lapacke/src/lapacke_chgeqz.c \
	lapacke/src/lapacke_chgeqz_work.c \
	lapacke/src/lapacke_chpcon.c \
	lapacke/src/lapacke_chpcon_work.c \
	lapacke/src/lapacke_chpev.c \
	lapacke/src/lapacke_chpev_work.c \
	lapacke/src/lapacke_chpevd.c \
	lapacke/src/lapacke_chpevd_work.c \
	lapacke/src/lapacke_chpevx.c \
	lapacke/src/lapacke_chpevx_work.c \
	lapacke/src/lapacke_chpgst.c \
	lapacke/src/lapacke_chpgst_work.c \
	lapacke/src/lapacke_chpgv.c \
	lapacke/src/lapacke_chpgv_work.c \
	lapacke/src/lapacke_chpgvd.c \
	lapacke/src/lapacke_chpgvd_work.c \
	lapacke/src/lapacke_chpgvx.c \
	lapacke/src/lapacke_chpgvx_work.c \
	lapacke/src/lapacke_chprfs.c \
	lapacke/src/lapacke_chprfs_work.c \
	lapacke/src/lapacke_chpsv.c \
	lapacke/src/lapacke_chpsv_work.c \
	lapacke/src/lapacke_chpsvx.c \
	lapacke/src/lapacke_chpsvx_work.c \
	lapacke/src/lapacke_chptrd.c \
	lapacke/src/lapacke_chptrd_work.c \
	lapacke/src/lapacke_chptrf.c \
	lapacke/src/lapacke_chptrf_work.c \
	lapacke/src/lapacke_chptri.c \
	lapacke/src/lapacke_chptri_work.c \
	lapacke/src/lapacke_chptrs.c \
	lapacke/src/lapacke_chptrs_work.c \
	lapacke/src/lapacke_chsein.c \
	lapacke/src/lapacke_chsein_work.c \
	lapacke/src/lapacke_chseqr.c \
	lapacke/src/lapacke_chseqr_work.c \
	lapacke/src/lapacke_clacgv.c \
	lapacke/src/lapacke_clacgv_work.c \
	lapacke/src/lapacke_clacn2.c \
	lapacke/src/lapacke_clacn2_work.c \
	lapacke/src/lapacke_clacp2.c \
	lapacke/src/lapacke_clacp2_work.c \
	lapacke/src/lapacke_clacpy.c \
	lapacke/src/lapacke_clacpy_work.c \
	lapacke/src/lapacke_clag2z.c \
	lapacke/src/lapacke_clag2z_work.c \
	lapacke/src/lapacke_clange.c \
	lapacke/src/lapacke_clange_work.c \
	lapacke/src/lapacke_clanhe.c \
	lapacke/src/lapacke_clanhe_work.c \
	lapacke/src/lapacke_clansy.c \
	lapacke/src/lapacke_clansy_work.c \
	lapacke/src/lapacke_clantr.c \
	lapacke/src/lapacke_clantr_work.c \
	lapacke/src/lapacke_clapmr.c \
	lapacke/src/lapacke_clapmr_work.c \
	lapacke/src/lapacke_clarfb.c \
	lapacke/src/lapacke_clarfb_work.c \
	lapacke/src/lapacke_clarfg.c \
	lapacke/src/lapacke_clarfg_work.c \
	lapacke/src/lapacke_clarft.c \
	lapacke/src/lapacke_clarft_work.c \
	lapacke/src/lapacke_clarfx.c \
	lapacke/src/lapacke_clarfx_work.c \
	lapacke/src/lapacke_clarnv.c \
	lapacke/src/lapacke_clarnv_work.c \
	lapacke/src/lapacke_claset.c \
	lapacke/src/lapacke_claset_work.c \
	lapacke/src/lapacke_claswp.c \
	lapacke/src/lapacke_claswp_work.c \
	lapacke/src/lapacke_clauum.c \
	lapacke/src/lapacke_clauum_work.c \
	lapacke/src/lapacke_cpbcon.c \
	lapacke/src/lapacke_cpbcon_work.c \
	lapacke/src/lapacke_cpbequ.c \
	lapacke/src/lapacke_cpbequ_work.c \
	lapacke/src/lapacke_cpbrfs.c \
	lapacke/src/lapacke_cpbrfs_work.c \
	lapacke/src/lapacke_cpbstf.c \
	lapacke/src/lapacke_cpbstf_work.c \
	lapacke/src/lapacke_cpbsv.c \
	lapacke/src/lapacke_cpbsv_work.c \
	lapacke/src/lapacke_cpbsvx.c \
	lapacke/src/lapacke_cpbsvx_work.c \
	lapacke/src/lapacke_cpbtrf.c \
	lapacke/src/lapacke_cpbtrf_work.c \
	lapacke/src/lapacke_cpbtrs.c \
	lapacke/src/lapacke_cpbtrs_work.c \
	lapacke/src/lapacke_cpftrf.c \
	lapacke/src/lapacke_cpftrf_work.c \
	lapacke/src/lapacke_cpftri.c \
	lapacke/src/lapacke_cpftri_work.c \
	lapacke/src/lapacke_cpftrs.c \
	lapacke/src/lapacke_cpftrs_work.c \
	lapacke/src/lapacke_cpocon.c \
	lapacke/src/lapacke_cpocon_work.c \
	lapacke/src/lapacke_cpoequ.c \
	lapacke/src/lapacke_cpoequ_work.c \
	lapacke/src/lapacke_cpoequb.c \
	lapacke/src/lapacke_cpoequb_work.c \
	lapacke/src/lapacke_cporfs.c \
	lapacke/src/lapacke_cporfs_work.c \
	lapacke/src/lapacke_cposv.c \
	lapacke/src/lapacke_cposv_work.c \
	lapacke/src/lapacke_cposvx.c \
	lapacke/src/lapacke_cposvx_work.c \
	lapacke/src/lapacke_cpotrf.c \
	lapacke/src/lapacke_cpotrf_work.c \
	lapacke/src/lapacke_cpotri.c \
	lapacke/src/lapacke_cpotri_work.c \
	lapacke/src/lapacke_cpotrs.c \
	lapacke/src/lapacke_cpotrs_work.c \
	lapacke/src/lapacke_cppcon.c \
	lapacke/src/lapacke_cppcon_work.c \
	lapacke/src/lapacke_cppequ.c \
	lapacke/src/lapacke_cppequ_work.c \
	lapacke/src/lapacke_cpprfs.c \
	lapacke/src/lapacke_cpprfs_work.c \
	lapacke/src/lapacke_cppsv.c \
	lapacke/src/lapacke_cppsv_work.c \
	lapacke/src/lapacke_cppsvx.c \
	lapacke/src/lapacke_cppsvx_work.c \
	lapacke/src/lapacke_cpptrf.c \
	lapacke/src/lapacke_cpptrf_work.c \
	lapacke/src/lapacke_cpptri.c \
	lapacke/src/lapacke_cpptri_work.c \
	lapacke/src/lapacke_cpptrs.c \
	lapacke/src/lapacke_cpptrs_work.c \
	lapacke/src/lapacke_cpstrf.c \
	lapacke/src/lapacke_cpstrf_work.c \
	lapacke/src/lapacke_cptcon.c \
	lapacke/src/lapacke_cptcon_work.c \
	lapacke/src/lapacke_cpteqr.c \
	lapacke/src/lapacke_cpteqr_work.c \
	lapacke/src/lapacke_cptrfs.c \
	lapacke/src/lapacke_cptrfs_work.c \
	lapacke/src/lapacke_cptsv.c \
	lapacke/src/lapacke_cptsv_work.c \
	lapacke/src/lapacke_cptsvx.c \
	lapacke/src/lapacke_cptsvx_work.c \
	lapacke/src/lapacke_cpttrf.c \
	lapacke/src/lapacke_cpttrf_work.c \
	lapacke/src/lapacke_cpttrs.c \
	lapacke/src/lapacke_cpttrs_work.c \
	lapacke/src/lapacke_cspcon.c \
	lapacke/src/lapacke_cspcon_work.c \
	lapacke/src/lapacke_csprfs.c \
	lapacke/src/lapacke_csprfs_work.c \
	lapacke/src/lapacke_cspsv.c \
	lapacke/src/lapacke_cspsv_work.c \
	lapacke/src/lapacke_cspsvx.c \
	lapacke/src/lapacke_cspsvx_work.c \
	lapacke/src/lapacke_csptrf.c \
	lapacke/src/lapacke_csptrf_work.c \
	lapacke/src/lapacke_csptri.c \
	lapacke/src/lapacke_csptri_work.c \
	lapacke/src/lapacke_csptrs.c \
	lapacke/src/lapacke_csptrs_work.c \
	lapacke/src/lapacke_cstedc.c \
	lapacke/src/lapacke_cstedc_work.c \
	lapacke/src/lapacke_cstegr.c \
	lapacke/src/lapacke_cstegr_work.c \
	lapacke/src/lapacke_cstein.c \
	lapacke/src/lapacke_cstein_work.c \
	lapacke/src/lapacke_cstemr.c \
	lapacke/src/lapacke_cstemr_work.c \
	lapacke/src/lapacke_csteqr.c \
	lapacke/src/lapacke_csteqr_work.c \
	lapacke/src/lapacke_csycon.c \
	lapacke/src/lapacke_csycon_work.c \
	lapacke/src/lapacke_csyconv.c \
	lapacke/src/lapacke_csyconv_work.c \
	lapacke/src/lapacke_csyequb.c \
	lapacke/src/lapacke_csyequb_work.c \
	lapacke/src/lapacke_csyrfs.c \
	lapacke/src/lapacke_csyrfs_work.c \
	lapacke/src/lapacke_csysv.c \
	lapacke/src/lapacke_csysv_rook.c \
	lapacke/src/lapacke_csysv_rook_work.c \
	lapacke/src/lapacke_csysv_work.c \
	lapacke/src/lapacke_csysvx.c \
	lapacke/src/lapacke_csysvx_work.c \
	lapacke/src/lapacke_csyswapr.c \
	lapacke/src/lapacke_csyswapr_work.c \
	lapacke/src/lapacke_csytrf.c \
	lapacke/src/lapacke_csytrf_work.c \
	lapacke/src/lapacke_csytri.c \
	lapacke/src/lapacke_csytri2.c \
	lapacke/src/lapacke_csytri2_work.c \
	lapacke/src/lapacke_csytri2x.c \
	lapacke/src/lapacke_csytri2x_work.c \
	lapacke/src/lapacke_csytri_work.c \
	lapacke/src/lapacke_csytrs.c \
	lapacke/src/lapacke_csytrs2.c \
	lapacke/src/lapacke_csytrs2_work.c \
	lapacke/src/lapacke_csytrs_work.c \
	lapacke/src/lapacke_ctbcon.c \
	lapacke/src/lapacke_ctbcon_work.c \
	lapacke/src/lapacke_ctbrfs.c \
	lapacke/src/lapacke_ctbrfs_work.c \
	lapacke/src/lapacke_ctbtrs.c \
	lapacke/src/lapacke_ctbtrs_work.c \
	lapacke/src/lapacke_ctfsm.c \
	lapacke/src/lapacke_ctfsm_work.c \
	lapacke/src/lapacke_ctftri.c \
	lapacke/src/lapacke_ctftri_work.c \
	lapacke/src/lapacke_ctfttp.c \
	lapacke/src/lapacke_ctfttp_work.c \
	lapacke/src/lapacke_ctfttr.c \
	lapacke/src/lapacke_ctfttr_work.c \
	lapacke/src/lapacke_ctgevc.c \
	lapacke/src/lapacke_ctgevc_work.c \
	lapacke/src/lapacke_ctgexc.c \
	lapacke/src/lapacke_ctgexc_work.c \
	lapacke/src/lapacke_ctgsen.c \
	lapacke/src/lapacke_ctgsen_work.c \
	lapacke/src/lapacke_ctgsja.c \
	lapacke/src/lapacke_ctgsja_work.c \
	lapacke/src/lapacke_ctgsna.c \
	lapacke/src/lapacke_ctgsna_work.c \
	lapacke/src/lapacke_ctgsyl.c \
	lapacke/src/lapacke_ctgsyl_work.c \
	lapacke/src/lapacke_ctpcon.c \
	lapacke/src/lapacke_ctpcon_work.c \
	lapacke/src/lapacke_ctpmqrt.c \
	lapacke/src/lapacke_ctpmqrt_work.c \
	lapacke/src/lapacke_ctpqrt.c \
	lapacke/src/lapacke_ctpqrt2.c \
	lapacke/src/lapacke_ctpqrt2_work.c \
	lapacke/src/lapacke_ctpqrt_work.c \
	lapacke/src/lapacke_ctprfb.c \
	lapacke/src/lapacke_ctprfb_work.c \
	lapacke/src/lapacke_ctprfs.c \
	lapacke/src/lapacke_ctprfs_work.c \
	lapacke/src/lapacke_ctptri.c \
	lapacke/src/lapacke_ctptri_work.c \
	lapacke/src/lapacke_ctptrs.c \
	lapacke/src/lapacke_ctptrs_work.c \
	lapacke/src/lapacke_ctpttf.c \
	lapacke/src/lapacke_ctpttf_work.c \
	lapacke/src/lapacke_ctpttr.c \
	lapacke/src/lapacke_ctpttr_work.c \
	lapacke/src/lapacke_ctrcon.c \
	lapacke/src/lapacke_ctrcon_work.c \
	lapacke/src/lapacke_ctrevc.c \
	lapacke/src/lapacke_ctrevc_work.c \
	lapacke/src/lapacke_ctrexc.c \
	lapacke/src/lapacke_ctrexc_work.c \
	lapacke/src/lapacke_ctrrfs.c \
	lapacke/src/lapacke_ctrrfs_work.c \
	lapacke/src/lapacke_ctrsen.c \
	lapacke/src/lapacke_ctrsen_work.c \
	lapacke/src/lapacke_ctrsna.c \
	lapacke/src/lapacke_ctrsna_work.c \
	lapacke/src/lapacke_ctrsyl.c \
	lapacke/src/lapacke_ctrsyl_work.c \
	lapacke/src/lapacke_ctrtri.c \
	lapacke/src/lapacke_ctrtri_work.c \
	lapacke/src/lapacke_ctrtrs.c \
	lapacke/src/lapacke_ctrtrs_work.c \
	lapacke/src/lapacke_ctrttf.c \
	lapacke/src/lapacke_ctrttf_work.c \
	lapacke/src/lapacke_ctrttp.c \
	lapacke/src/lapacke_ctrttp_work.c \
	lapacke/src/lapacke_ctzrzf.c \
	lapacke/src/lapacke_ctzrzf_work.c \
	lapacke/src/lapacke_cunbdb.c \
	lapacke/src/lapacke_cunbdb_work.c \
	lapacke/src/lapacke_cuncsd.c \
	lapacke/src/lapacke_cuncsd_work.c \
	lapacke/src/lapacke_cungbr.c \
	lapacke/src/lapacke_cungbr_work.c \
	lapacke/src/lapacke_cunghr.c \
	lapacke/src/lapacke_cunghr_work.c \
	lapacke/src/lapacke_cunglq.c \
	lapacke/src/lapacke_cunglq_work.c \
	lapacke/src/lapacke_cungql.c \
	lapacke/src/lapacke_cungql_work.c \
	lapacke/src/lapacke_cungqr.c \
	lapacke/src/lapacke_cungqr_work.c \
	lapacke/src/lapacke_cungrq.c \
	lapacke/src/lapacke_cungrq_work.c \
	lapacke/src/lapacke_cungtr.c \
	lapacke/src/lapacke_cungtr_work.c \
	lapacke/src/lapacke_cunmbr.c \
	lapacke/src/lapacke_cunmbr_work.c \
	lapacke/src/lapacke_cunmhr.c \
	lapacke/src/lapacke_cunmhr_work.c \
	lapacke/src/lapacke_cunmlq.c \
	lapacke/src/lapacke_cunmlq_work.c \
	lapacke/src/lapacke_cunmql.c \
	lapacke/src/lapacke_cunmql_work.c \
	lapacke/src/lapacke_cunmqr.c \
	lapacke/src/lapacke_cunmqr_work.c \
	lapacke/src/lapacke_cunmrq.c \
	lapacke/src/lapacke_cunmrq_work.c \
	lapacke/src/lapacke_cunmrz.c \
	lapacke/src/lapacke_cunmrz_work.c \
	lapacke/src/lapacke_cunmtr.c \
	lapacke/src/lapacke_cunmtr_work.c \
	lapacke/src/lapacke_cupgtr.c \
	lapacke/src/lapacke_cupgtr_work.c \
	lapacke/src/lapacke_cupmtr.c \
	lapacke/src/lapacke_cupmtr_work.c \
	lapacke/src/lapacke_dbbcsd.c \
	lapacke/src/lapacke_dbbcsd_work.c \
	lapacke/src/lapacke_dbdsdc.c \
	lapacke/src/lapacke_dbdsdc_work.c \
	lapacke/src/lapacke_dbdsqr.c \
	lapacke/src/lapacke_dbdsqr_work.c \
	lapacke/src/lapacke_ddisna.c \
	lapacke/src/lapacke_ddisna_work.c \
	lapacke/src/lapacke_dgbbrd.c \
	lapacke/src/lapacke_dgbbrd_work.c \
	lapacke/src/lapacke_dgbcon.c \
	lapacke/src/lapacke_dgbcon_work.c \
	lapacke/src/lapacke_dgbequ.c \
	lapacke/src/lapacke_dgbequ_work.c \
	lapacke/src/lapacke_dgbequb.c \
	lapacke/src/lapacke_dgbequb_work.c \
	lapacke/src/lapacke_dgbrfs.c \
	lapacke/src/lapacke_dgbrfs_work.c \
	lapacke/src/lapacke_dgbsv.c \
	lapacke/src/lapacke_dgbsv_work.c \
	lapacke/src/lapacke_dgbsvx.c \
	lapacke/src/lapacke_dgbsvx_work.c \
	lapacke/src/lapacke_dgbtrf.c \
	lapacke/src/lapacke_dgbtrf_work.c \
	lapacke/src/lapacke_dgbtrs.c \
	lapacke/src/lapacke_dgbtrs_work.c \
	lapacke/src/lapacke_dgebak.c \
	lapacke/src/lapacke_dgebak_work.c \
	lapacke/src/lapacke_dgebal.c \
	lapacke/src/lapacke_dgebal_work.c \
	lapacke/src/lapacke_dgebrd.c \
	lapacke/src/lapacke_dgebrd_work.c \
	lapacke/src/lapacke_dgecon.c \
	lapacke/src/lapacke_dgecon_work.c \
	lapacke/src/lapacke_dgeequ.c \
	lapacke/src/lapacke_dgeequ_work.c \
	lapacke/src/lapacke_dgeequb.c \
	lapacke/src/lapacke_dgeequb_work.c \
	lapacke/src/lapacke_dgees.c \
	lapacke/src/lapacke_dgees_work.c \
	lapacke/src/lapacke_dgeesx.c \
	lapacke/src/lapacke_dgeesx_work.c \
	lapacke/src/lapacke_dgeev.c \
	lapacke/src/lapacke_dgeev_work.c \
	lapacke/src/lapacke_dgeevx.c \
	lapacke/src/lapacke_dgeevx_work.c \
	lapacke/src/lapacke_dgehrd.c \
	lapacke/src/lapacke_dgehrd_work.c \
	lapacke/src/lapacke_dgejsv.c \
	lapacke/src/lapacke_dgejsv_work.c \
	lapacke/src/lapacke_dgelq2.c \
	lapacke/src/lapacke_dgelq2_work.c \
	lapacke/src/lapacke_dgelqf.c \
	lapacke/src/lapacke_dgelqf_work.c \
	lapacke/src/lapacke_dgels.c \
	lapacke/src/lapacke_dgels_work.c \
	lapacke/src/lapacke_dgelsd.c \
	lapacke/src/lapacke_dgelsd_work.c \
	lapacke/src/lapacke_dgelss.c \
	lapacke/src/lapacke_dgelss_work.c \
	lapacke/src/lapacke_dgelsy.c \
	lapacke/src/lapacke_dgelsy_work.c \
	lapacke/src/lapacke_dgemqrt.c \
	lapacke/src/lapacke_dgemqrt_work.c \
	lapacke/src/lapacke_dgeqlf.c \
	lapacke/src/lapacke_dgeqlf_work.c \
	lapacke/src/lapacke_dgeqp3.c \
	lapacke/src/lapacke_dgeqp3_work.c \
	lapacke/src/lapacke_dgeqpf.c \
	lapacke/src/lapacke_dgeqpf_work.c \
	lapacke/src/lapacke_dgeqr2.c \
	lapacke/src/lapacke_dgeqr2_work.c \
	lapacke/src/lapacke_dgeqrf.c \
	lapacke/src/lapacke_dgeqrf_work.c \
	lapacke/src/lapacke_dgeqrfp.c \
	lapacke/src/lapacke_dgeqrfp_work.c \
	lapacke/src/lapacke_dgeqrt.c \
	lapacke/src/lapacke_dgeqrt2.c \
	lapacke/src/lapacke_dgeqrt2_work.c \
	lapacke/src/lapacke_dgeqrt3.c \
	lapacke/src/lapacke_dgeqrt3_work.c \
	lapacke/src/lapacke_dgeqrt_work.c \
	lapacke/src/lapacke_dgerfs.c \
	lapacke/src/lapacke_dgerfs_work.c \
	lapacke/src/lapacke_dgerqf.c \
	lapacke/src/lapacke_dgerqf_work.c \
	lapacke/src/lapacke_dgesdd.c \
	lapacke/src/lapacke_dgesdd_work.c \
	lapacke/src/lapacke_dgesv.c \
	lapacke/src/lapacke_dgesv_work.c \
	lapacke/src/lapacke_dgesvd.c \
	lapacke/src/lapacke_dgesvd_work.c \
	lapacke/src/lapacke_dgesvj.c \
	lapacke/src/lapacke_dgesvj_work.c \
	lapacke/src/lapacke_dgesvx.c \
	lapacke/src/lapacke_dgesvx_work.c \
	lapacke/src/lapacke_dgetf2.c \
	lapacke/src/lapacke_dgetf2_work.c \
	lapacke/src/lapacke_dgetrf.c \
	lapacke/src/lapacke_dgetrf_work.c \
	lapacke/src/lapacke_dgetri.c \
	lapacke/src/lapacke_dgetri_work.c \
	lapacke/src/lapacke_dgetrs.c \
	lapacke/src/lapacke_dgetrs_work.c \
	lapacke/src/lapacke_dggbak.c \
	lapacke/src/lapacke_dggbak_work.c \
	lapacke/src/lapacke_dggbal.c \
	lapacke/src/lapacke_dggbal_work.c \
	lapacke/src/lapacke_dgges.c \
	lapacke/src/lapacke_dgges_work.c \
	lapacke/src/lapacke_dggesx.c \
	lapacke/src/lapacke_dggesx_work.c \
	lapacke/src/lapacke_dggev.c \
	lapacke/src/lapacke_dggev_work.c \
	lapacke/src/lapacke_dggevx.c \
	lapacke/src/lapacke_dggevx_work.c \
	lapacke/src/lapacke_dggglm.c \
	lapacke/src/lapacke_dggglm_work.c \
	lapacke/src/lapacke_dgghrd.c \
	lapacke/src/lapacke_dgghrd_work.c \
	lapacke/src/lapacke_dgglse.c \
	lapacke/src/lapacke_dgglse_work.c \
	lapacke/src/lapacke_dggqrf.c \
	lapacke/src/lapacke_dggqrf_work.c \
	lapacke/src/lapacke_dggrqf.c \
	lapacke/src/lapacke_dggrqf_work.c \
	lapacke/src/lapacke_dggsvd.c \
	lapacke/src/lapacke_dggsvd_work.c \
	lapacke/src/lapacke_dggsvp.c \
	lapacke/src/lapacke_dggsvp_work.c \
	lapacke/src/lapacke_dgtcon.c \
	lapacke/src/lapacke_dgtcon_work.c \
	lapacke/src/lapacke_dgtrfs.c \
	lapacke/src/lapacke_dgtrfs_work.c \
	lapacke/src/lapacke_dgtsv.c \
	lapacke/src/lapacke_dgtsv_work.c \
	lapacke/src/lapacke_dgtsvx.c \
	lapacke/src/lapacke_dgtsvx_work.c \
	lapacke/src/lapacke_dgttrf.c \
	lapacke/src/lapacke_dgttrf_work.c \
	lapacke/src/lapacke_dgttrs.c \
	lapacke/src/lapacke_dgttrs_work.c \
	lapacke/src/lapacke_dhgeqz.c \
	lapacke/src/lapacke_dhgeqz_work.c \
	lapacke/src/lapacke_dhsein.c \
	lapacke/src/lapacke_dhsein_work.c \
	lapacke/src/lapacke_dhseqr.c \
	lapacke/src/lapacke_dhseqr_work.c \
	lapacke/src/lapacke_dlacn2.c \
	lapacke/src/lapacke_dlacn2_work.c \
	lapacke/src/lapacke_dlacpy.c \
	lapacke/src/lapacke_dlacpy_work.c \
	lapacke/src/lapacke_dlag2s.c \
	lapacke/src/lapacke_dlag2s_work.c \
	lapacke/src/lapacke_dlamch.c \
	lapacke/src/lapacke_dlamch_work.c \
	lapacke/src/lapacke_dlange.c \
	lapacke/src/lapacke_dlange_work.c \
	lapacke/src/lapacke_dlansy.c \
	lapacke/src/lapacke_dlansy_work.c \
	lapacke/src/lapacke_dlantr.c \
	lapacke/src/lapacke_dlantr_work.c \
	lapacke/src/lapacke_dlapmr.c \
	lapacke/src/lapacke_dlapmr_work.c \
	lapacke/src/lapacke_dlapy2.c \
	lapacke/src/lapacke_dlapy2_work.c \
	lapacke/src/lapacke_dlapy3.c \
	lapacke/src/lapacke_dlapy3_work.c \
	lapacke/src/lapacke_dlarfb.c \
	lapacke/src/lapacke_dlarfb_work.c \
	lapacke/src/lapacke_dlarfg.c \
	lapacke/src/lapacke_dlarfg_work.c \
	lapacke/src/lapacke_dlarft.c \
	lapacke/src/lapacke_dlarft_work.c \
	lapacke/src/lapacke_dlarfx.c \
	lapacke/src/lapacke_dlarfx_work.c \
	lapacke/src/lapacke_dlarnv.c \
	lapacke/src/lapacke_dlarnv_work.c \
	lapacke/src/lapacke_dlartgp.c \
	lapacke/src/lapacke_dlartgp_work.c \
	lapacke/src/lapacke_dlartgs.c \
	lapacke/src/lapacke_dlartgs_work.c \
	lapacke/src/lapacke_dlaset.c \
	lapacke/src/lapacke_dlaset_work.c \
	lapacke/src/lapacke_dlasrt.c \
	lapacke/src/lapacke_dlasrt_work.c \
	lapacke/src/lapacke_dlaswp.c \
	lapacke/src/lapacke_dlaswp_work.c \
	lapacke/src/lapacke_dlauum.c \
	lapacke/src/lapacke_dlauum_work.c \
	lapacke/src/lapacke_dopgtr.c \
	lapacke/src/lapacke_dopgtr_work.c \
	lapacke/src/lapacke_dopmtr.c \
	lapacke/src/lapacke_dopmtr_work.c \
	lapacke/src/lapacke_dorbdb.c \
	lapacke/src/lapacke_dorbdb_work.c \
	lapacke/src/lapacke_dorcsd.c \
	lapacke/src/lapacke_dorcsd_work.c \
	lapacke/src/lapacke_dorgbr.c \
	lapacke/src/lapacke_dorgbr_work.c \
	lapacke/src/lapacke_dorghr.c \
	lapacke/src/lapacke_dorghr_work.c \
	lapacke/src/lapacke_dorglq.c \
	lapacke/src/lapacke_dorglq_work.c \
	lapacke/src/lapacke_dorgql.c \
	lapacke/src/lapacke_dorgql_work.c \
	lapacke/src/lapacke_dorgqr.c \
	lapacke/src/lapacke_dorgqr_work.c \
	lapacke/src/lapacke_dorgrq.c \
	lapacke/src/lapacke_dorgrq_work.c \
	lapacke/src/lapacke_dorgtr.c \
	lapacke/src/lapacke_dorgtr_work.c \
	lapacke/src/lapacke_dormbr.c \
	lapacke/src/lapacke_dormbr_work.c \
	lapacke/src/lapacke_dormhr.c \
	lapacke/src/lapacke_dormhr_work.c \
	lapacke/src/lapacke_dormlq.c \
	lapacke/src/lapacke_dormlq_work.c \
	lapacke/src/lapacke_dormql.c \
	lapacke/src/lapacke_dormql_work.c \
	lapacke/src/lapacke_dormqr.c \
	lapacke/src/lapacke_dormqr_work.c \
	lapacke/src/lapacke_dormrq.c \
	lapacke/src/lapacke_dormrq_work.c \
	lapacke/src/lapacke_dormrz.c \
	lapacke/src/lapacke_dormrz_work.c \
	lapacke/src/lapacke_dormtr.c \
	lapacke/src/lapacke_dormtr_work.c \
	lapacke/src/lapacke_dpbcon.c \
	lapacke/src/lapacke_dpbcon_work.c \
	lapacke/src/lapacke_dpbequ.c \
	lapacke/src/lapacke_dpbequ_work.c \
	lapacke/src/lapacke_dpbrfs.c \
	lapacke/src/lapacke_dpbrfs_work.c \
	lapacke/src/lapacke_dpbstf.c \
	lapacke/src/lapacke_dpbstf_work.c \
	lapacke/src/lapacke_dpbsv.c \
	lapacke/src/lapacke_dpbsv_work.c \
	lapacke/src/lapacke_dpbsvx.c \
	lapacke/src/lapacke_dpbsvx_work.c \
	lapacke/src/lapacke_dpbtrf.c \
	lapacke/src/lapacke_dpbtrf_work.c \
	lapacke/src/lapacke_dpbtrs.c \
	lapacke/src/lapacke_dpbtrs_work.c \
	lapacke/src/lapacke_dpftrf.c \
	lapacke/src/lapacke_dpftrf_work.c \
	lapacke/src/lapacke_dpftri.c \
	lapacke/src/lapacke_dpftri_work.c \
	lapacke/src/lapacke_dpftrs.c \
	lapacke/src/lapacke_dpftrs_work.c \
	lapacke/src/lapacke_dpocon.c \
	lapacke/src/lapacke_dpocon_work.c \
	lapacke/src/lapacke_dpoequ.c \
	lapacke/src/lapacke_dpoequ_work.c \
	lapacke/src/lapacke_dpoequb.c \
	lapacke/src/lapacke_dpoequb_work.c \
	lapacke/src/lapacke_dporfs.c \
	lapacke/src/lapacke_dporfs_work.c \
	lapacke/src/lapacke_dposv.c \
	lapacke/src/lapacke_dposv_work.c \
	lapacke/src/lapacke_dposvx.c \
	lapacke/src/lapacke_dposvx_work.c \
	lapacke/src/lapacke_dpotrf.c \
	lapacke/src/lapacke_dpotrf_work.c \
	lapacke/src/lapacke_dpotri.c \
	lapacke/src/lapacke_dpotri_work.c \
	lapacke/src/lapacke_dpotrs.c \
	lapacke/src/lapacke_dpotrs_work.c \
	lapacke/src/lapacke_dppcon.c \
	lapacke/src/lapacke_dppcon_work.c \
	lapacke/src/lapacke_dppequ.c \
	lapacke/src/lapacke_dppequ_work.c \
	lapacke/src/lapacke_dpprfs.c \
	lapacke/src/lapacke_dpprfs_work.c \
	lapacke/src/lapacke_dppsv.c \
	lapacke/src/lapacke_dppsv_work.c \
	lapacke/src/lapacke_dppsvx.c \
	lapacke/src/lapacke_dppsvx_work.c \
	lapacke/src/lapacke_dpptrf.c \
	lapacke/src/lapacke_dpptrf_work.c \
	lapacke/src/lapacke_dpptri.c \
	lapacke/src/lapacke_dpptri_work.c \
	lapacke/src/lapacke_dpptrs.c \
	lapacke/src/lapacke_dpptrs_work.c \
	lapacke/src/lapacke_dpstrf.c \
	lapacke/src/lapacke_dpstrf_work.c \
	lapacke/src/lapacke_dptcon.c \
	lapacke/src/lapacke_dptcon_work.c \
	lapacke/src/lapacke_dpteqr.c \
	lapacke/src/lapacke_dpteqr_work.c \
	lapacke/src/lapacke_dptrfs.c \
	lapacke/src/lapacke_dptrfs_work.c \
	lapacke/src/lapacke_dptsv.c \
	lapacke/src/lapacke_dptsv_work.c \
	lapacke/src/lapacke_dptsvx.c \
	lapacke/src/lapacke_dptsvx_work.c \
	lapacke/src/lapacke_dpttrf.c \
	lapacke/src/lapacke_dpttrf_work.c \
	lapacke/src/lapacke_dpttrs.c \
	lapacke/src/lapacke_dpttrs_work.c \
	lapacke/src/lapacke_dsbev.c \
	lapacke/src/lapacke_dsbev_work.c \
	lapacke/src/lapacke_dsbevd.c \
	lapacke/src/lapacke_dsbevd_work.c \
	lapacke/src/lapacke_dsbevx.c \
	lapacke/src/lapacke_dsbevx_work.c \
	lapacke/src/lapacke_dsbgst.c \
	lapacke/src/lapacke_dsbgst_work.c \
	lapacke/src/lapacke_dsbgv.c \
	lapacke/src/lapacke_dsbgv_work.c \
	lapacke/src/lapacke_dsbgvd.c \
	lapacke/src/lapacke_dsbgvd_work.c \
	lapacke/src/lapacke_dsbgvx.c \
	lapacke/src/lapacke_dsbgvx_work.c \
	lapacke/src/lapacke_dsbtrd.c \
	lapacke/src/lapacke_dsbtrd_work.c \
	lapacke/src/lapacke_dsfrk.c \
	lapacke/src/lapacke_dsfrk_work.c \
	lapacke/src/lapacke_dsgesv.c \
	lapacke/src/lapacke_dsgesv_work.c \
	lapacke/src/lapacke_dspcon.c \
	lapacke/src/lapacke_dspcon_work.c \
	lapacke/src/lapacke_dspev.c \
	lapacke/src/lapacke_dspev_work.c \
	lapacke/src/lapacke_dspevd.c \
	lapacke/src/lapacke_dspevd_work.c \
	lapacke/src/lapacke_dspevx.c \
	lapacke/src/lapacke_dspevx_work.c \
	lapacke/src/lapacke_dspgst.c \
	lapacke/src/lapacke_dspgst_work.c \
	lapacke/src/lapacke_dspgv.c \
	lapacke/src/lapacke_dspgv_work.c \
	lapacke/src/lapacke_dspgvd.c \
	lapacke/src/lapacke_dspgvd_work.c \
	lapacke/src/lapacke_dspgvx.c \
	lapacke/src/lapacke_dspgvx_work.c \
	lapacke/src/lapacke_dsposv.c \
	lapacke/src/lapacke_dsposv_work.c \
	lapacke/src/lapacke_dsprfs.c \
	lapacke/src/lapacke_dsprfs_work.c \
	lapacke/src/lapacke_dspsv.c \
	lapacke/src/lapacke_dspsv_work.c \
	lapacke/src/lapacke_dspsvx.c \
	lapacke/src/lapacke_dspsvx_work.c \
	lapacke/src/lapacke_dsptrd.c \
	lapacke/src/lapacke_dsptrd_work.c \
	lapacke/src/lapacke_dsptrf.c \
	lapacke/src/lapacke_dsptrf_work.c \
	lapacke/src/lapacke_dsptri.c \
	lapacke/src/lapacke_dsptri_work.c \
	lapacke/src/lapacke_dsptrs.c \
	lapacke/src/lapacke_dsptrs_work.c \
	lapacke/src/lapacke_dstebz.c \
	lapacke/src/lapacke_dstebz_work.c \
	lapacke/src/lapacke_dstedc.c \
	lapacke/src/lapacke_dstedc_work.c \
	lapacke/src/lapacke_dstegr.c \
	lapacke/src/lapacke_dstegr_work.c \
	lapacke/src/lapacke_dstein.c \
	lapacke/src/lapacke_dstein_work.c \
	lapacke/src/lapacke_dstemr.c \
	lapacke/src/lapacke_dstemr_work.c \
	lapacke/src/lapacke_dsteqr.c \
	lapacke/src/lapacke_dsteqr_work.c \
	lapacke/src/lapacke_dsterf.c \
	lapacke/src/lapacke_dsterf_work.c \
	lapacke/src/lapacke_dstev.c \
	lapacke/src/lapacke_dstev_work.c \
	lapacke/src/lapacke_dstevd.c \
	lapacke/src/lapacke_dstevd_work.c \
	lapacke/src/lapacke_dstevr.c \
	lapacke/src/lapacke_dstevr_work.c \
	lapacke/src/lapacke_dstevx.c \
	lapacke/src/lapacke_dstevx_work.c \
	lapacke/src/lapacke_dsycon.c \
	lapacke/src/lapacke_dsycon_work.c \
	lapacke/src/lapacke_dsyconv.c \
	lapacke/src/lapacke_dsyconv_work.c \
	lapacke/src/lapacke_dsyequb.c \
	lapacke/src/lapacke_dsyequb_work.c \
	lapacke/src/lapacke_dsyev.c \
	lapacke/src/lapacke_dsyev_work.c \
	lapacke/src/lapacke_dsyevd.c \
	lapacke/src/lapacke_dsyevd_work.c \
	lapacke/src/lapacke_dsyevr.c \
	lapacke/src/lapacke_dsyevr_work.c \
	lapacke/src/lapacke_dsyevx.c \
	lapacke/src/lapacke_dsyevx_work.c \
	lapacke/src/lapacke_dsygst.c \
	lapacke/src/lapacke_dsygst_work.c \
	lapacke/src/lapacke_dsygv.c \
	lapacke/src/lapacke_dsygv_work.c \
	lapacke/src/lapacke_dsygvd.c \
	lapacke/src/lapacke_dsygvd_work.c \
	lapacke/src/lapacke_dsygvx.c \
	lapacke/src/lapacke_dsygvx_work.c \
	lapacke/src/lapacke_dsyrfs.c \
	lapacke/src/lapacke_dsyrfs_work.c \
	lapacke/src/lapacke_dsysv.c \
	lapacke/src/lapacke_dsysv_rook.c \
	lapacke/src/lapacke_dsysv_rook_work.c \
	lapacke/src/lapacke_dsysv_work.c \
	lapacke/src/lapacke_dsysvx.c \
	lapacke/src/lapacke_dsysvx_work.c \
	lapacke/src/lapacke_dsyswapr.c \
	lapacke/src/lapacke_dsyswapr_work.c \
	lapacke/src/lapacke_dsytrd.c \
	lapacke/src/lapacke_dsytrd_work.c \
	lapacke/src/lapacke_dsytrf.c \
	lapacke/src/lapacke_dsytrf_work.c \
	lapacke/src/lapacke_dsytri.c \
	lapacke/src/lapacke_dsytri2.c \
	lapacke/src/lapacke_dsytri2_work.c \
	lapacke/src/lapacke_dsytri2x.c \
	lapacke/src/lapacke_dsytri2x_work.c \
	lapacke/src/lapacke_dsytri_work.c \
	lapacke/src/lapacke_dsytrs.c \
	lapacke/src/lapacke_dsytrs2.c \
	lapacke/src/lapacke_dsytrs2_work.c \
	lapacke/src/lapacke_dsytrs_work.c \
	lapacke/src/lapacke_dtbcon.c \
	lapacke/src/lapacke_dtbcon_work.c \
	lapacke/src/lapacke_dtbrfs.c \
	lapacke/src/lapacke_dtbrfs_work.c \
	lapacke/src/lapacke_dtbtrs.c \
	lapacke/src/lapacke_dtbtrs_work.c \
	lapacke/src/lapacke_dtfsm.c \
	lapacke/src/lapacke_dtfsm_work.c \
	lapacke/src/lapacke_dtftri.c \
	lapacke/src/lapacke_dtftri_work.c \
	lapacke/src/lapacke_dtfttp.c \
	lapacke/src/lapacke_dtfttp_work.c \
	lapacke/src/lapacke_dtfttr.c \
	lapacke/src/lapacke_dtfttr_work.c \
	lapacke/src/lapacke_dtgevc.c \
	lapacke/src/lapacke_dtgevc_work.c \
	lapacke/src/lapacke_dtgexc.c \
	lapacke/src/lapacke_dtgexc_work.c \
	lapacke/src/lapacke_dtgsen.c \
	lapacke/src/lapacke_dtgsen_work.c \
	lapacke/src/lapacke_dtgsja.c \
	lapacke/src/lapacke_dtgsja_work.c \
	lapacke/src/lapacke_dtgsna.c \
	lapacke/src/lapacke_dtgsna_work.c \
	lapacke/src/lapacke_dtgsyl.c \
	lapacke/src/lapacke_dtgsyl_work.c \
	lapacke/src/lapacke_dtpcon.c \
	lapacke/src/lapacke_dtpcon_work.c \
	lapacke/src/lapacke_dtpmqrt.c \
	lapacke/src/lapacke_dtpmqrt_work.c \
	lapacke/src/lapacke_dtpqrt.c \
	lapacke/src/lapacke_dtpqrt2.c \
	lapacke/src/lapacke_dtpqrt2_work.c \
	lapacke/src/lapacke_dtpqrt_work.c \
	lapacke/src/lapacke_dtprfb.c \
	lapacke/src/lapacke_dtprfb_work.c \
	lapacke/src/lapacke_dtprfs.c \
	lapacke/src/lapacke_dtprfs_work.c \
	lapacke/src/lapacke_dtptri.c \
	lapacke/src/lapacke_dtptri_work.c \
	lapacke/src/lapacke_dtptrs.c \
	lapacke/src/lapacke_dtptrs_work.c \
	lapacke/src/lapacke_dtpttf.c \
	lapacke/src/lapacke_dtpttf_work.c \
	lapacke/src/lapacke_dtpttr.c \
	lapacke/src/lapacke_dtpttr_work.c \
	lapacke/src/lapacke_dtrcon.c \
	lapacke/src/lapacke_dtrcon_work.c \
	lapacke/src/lapacke_dtrevc.c \
	lapacke/src/lapacke_dtrevc_work.c \
	lapacke/src/lapacke_dtrexc.c \
	lapacke/src/lapacke_dtrexc_work.c \
	lapacke/src/lapacke_dtrrfs.c \
	lapacke/src/lapacke_dtrrfs_work.c \
	lapacke/src/lapacke_dtrsen.c \
	lapacke/src/lapacke_dtrsen_work.c \
	lapacke/src/lapacke_dtrsna.c \
	lapacke/src/lapacke_dtrsna_work.c \
	lapacke/src/lapacke_dtrsyl.c \
	lapacke/src/lapacke_dtrsyl_work.c \
	lapacke/src/lapacke_dtrtri.c \
	lapacke/src/lapacke_dtrtri_work.c \
	lapacke/src/lapacke_dtrtrs.c \
	lapacke/src/lapacke_dtrtrs_work.c \
	lapacke/src/lapacke_dtrttf.c \
	lapacke/src/lapacke_dtrttf_work.c \
	lapacke/src/lapacke_dtrttp.c \
	lapacke/src/lapacke_dtrttp_work.c \
	lapacke/src/lapacke_dtzrzf.c \
	lapacke/src/lapacke_dtzrzf_work.c \
	lapacke/src/lapacke_sbbcsd.c \
	lapacke/src/lapacke_sbbcsd_work.c \
	lapacke/src/lapacke_sbdsdc.c \
	lapacke/src/lapacke_sbdsdc_work.c \
	lapacke/src/lapacke_sbdsqr.c \
	lapacke/src/lapacke_sbdsqr_work.c \
	lapacke/src/lapacke_sdisna.c \
	lapacke/src/lapacke_sdisna_work.c \
	lapacke/src/lapacke_sgbbrd.c \
	lapacke/src/lapacke_sgbbrd_work.c \
	lapacke/src/lapacke_sgbcon.c \
	lapacke/src/lapacke_sgbcon_work.c \
	lapacke/src/lapacke_sgbequ.c \
	lapacke/src/lapacke_sgbequ_work.c \
	lapacke/src/lapacke_sgbequb.c \
	lapacke/src/lapacke_sgbequb_work.c \
	lapacke/src/lapacke_sgbrfs.c \
	lapacke/src/lapacke_sgbrfs_work.c \
	lapacke/src/lapacke_sgbsv.c \
	lapacke/src/lapacke_sgbsv_work.c \
	lapacke/src/lapacke_sgbsvx.c \
	lapacke/src/lapacke_sgbsvx_work.c \
	lapacke/src/lapacke_sgbtrf.c \
	lapacke/src/lapacke_sgbtrf_work.c \
	lapacke/src/lapacke_sgbtrs.c \
	lapacke/src/lapacke_sgbtrs_work.c \
	lapacke/src/lapacke_sgebak.c \
	lapacke/src/lapacke_sgebak_work.c \
	lapacke/src/lapacke_sgebal.c \
	lapacke/src/lapacke_sgebal_work.c \
	lapacke/src/lapacke_sgebrd.c \
	lapacke/src/lapacke_sgebrd_work.c \
	lapacke/src/lapacke_sgecon.c \
	lapacke/src/lapacke_sgecon_work.c \
	lapacke/src/lapacke_sgeequ.c \
	lapacke/src/lapacke_sgeequ_work.c \
	lapacke/src/lapacke_sgeequb.c \
	lapacke/src/lapacke_sgeequb_work.c \
	lapacke/src/lapacke_sgees.c \
	lapacke/src/lapacke_sgees_work.c \
	lapacke/src/lapacke_sgeesx.c \
	lapacke/src/lapacke_sgeesx_work.c \
	lapacke/src/lapacke_sgeev.c \
	lapacke/src/lapacke_sgeev_work.c \
	lapacke/src/lapacke_sgeevx.c \
	lapacke/src/lapacke_sgeevx_work.c \
	lapacke/src/lapacke_sgehrd.c \
	lapacke/src/lapacke_sgehrd_work.c \
	lapacke/src/lapacke_sgejsv.c \
	lapacke/src/lapacke_sgejsv_work.c \
	lapacke/src/lapacke_sgelq2.c \
	lapacke/src/lapacke_sgelq2_work.c \
	lapacke/src/lapacke_sgelqf.c \
	lapacke/src/lapacke_sgelqf_work.c \
	lapacke/src/lapacke_sgels.c \
	lapacke/src/lapacke_sgels_work.c \
	lapacke/src/lapacke_sgelsd.c \
	lapacke/src/lapacke_sgelsd_work.c \
	lapacke/src/lapacke_sgelss.c \
	lapacke/src/lapacke_sgelss_work.c \
	lapacke/src/lapacke_sgelsy.c \
	lapacke/src/lapacke_sgelsy_work.c \
	lapacke/src/lapacke_sgemqrt.c \
	lapacke/src/lapacke_sgemqrt_work.c \
	lapacke/src/lapacke_sgeqlf.c \
	lapacke/src/lapacke_sgeqlf_work.c \
	lapacke/src/lapacke_sgeqp3.c \
	lapacke/src/lapacke_sgeqp3_work.c \
	lapacke/src/lapacke_sgeqpf.c \
	lapacke/src/lapacke_sgeqpf_work.c \
	lapacke/src/lapacke_sgeqr2.c \
	lapacke/src/lapacke_sgeqr2_work.c \
	lapacke/src/lapacke_sgeqrf.c \
	lapacke/src/lapacke_sgeqrf_work.c \
	lapacke/src/lapacke_sgeqrfp.c \
	lapacke/src/lapacke_sgeqrfp_work.c \
	lapacke/src/lapacke_sgeqrt.c \
	lapacke/src/lapacke_sgeqrt2.c \
	lapacke/src/lapacke_sgeqrt2_work.c \
	lapacke/src/lapacke_sgeqrt3.c \
	lapacke/src/lapacke_sgeqrt3_work.c \
	lapacke/src/lapacke_sgeqrt_work.c \
	lapacke/src/lapacke_sgerfs.c \
	lapacke/src/lapacke_sgerfs_work.c \
	lapacke/src/lapacke_sgerqf.c \
	lapacke/src/lapacke_sgerqf_work.c \
	lapacke/src/lapacke_sgesdd.c \
	lapacke/src/lapacke_sgesdd_work.c \
	lapacke/src/lapacke_sgesv.c \
	lapacke/src/lapacke_sgesv_work.c \
	lapacke/src/lapacke_sgesvd.c \
	lapacke/src/lapacke_sgesvd_work.c \
	lapacke/src/lapacke_sgesvj.c \
	lapacke/src/lapacke_sgesvj_work.c \
	lapacke/src/lapacke_sgesvx.c \
	lapacke/src/lapacke_sgesvx_work.c \
	lapacke/src/lapacke_sgetf2.c \
	lapacke/src/lapacke_sgetf2_work.c \
	lapacke/src/lapacke_sgetrf.c \
	lapacke/src/lapacke_sgetrf_work.c \
	lapacke/src/lapacke_sgetri.c \
	lapacke/src/lapacke_sgetri_work.c \
	lapacke/src/lapacke_sgetrs.c \
	lapacke/src/lapacke_sgetrs_work.c \
	lapacke/src/lapacke_sggbak.c \
	lapacke/src/lapacke_sggbak_work.c \
	lapacke/src/lapacke_sggbal.c \
	lapacke/src/lapacke_sggbal_work.c \
	lapacke/src/lapacke_sgges.c \
	lapacke/src/lapacke_sgges_work.c \
	lapacke/src/lapacke_sggesx.c \
	lapacke/src/lapacke_sggesx_work.c \
	lapacke/src/lapacke_sggev.c \
	lapacke/src/lapacke_sggev_work.c \
	lapacke/src/lapacke_sggevx.c \
	lapacke/src/lapacke_sggevx_work.c \
	lapacke/src/lapacke_sggglm.c \
	lapacke/src/lapacke_sggglm_work.c \
	lapacke/src/lapacke_sgghrd.c \
	lapacke/src/lapacke_sgghrd_work.c \
	lapacke/src/lapacke_sgglse.c \
	lapacke/src/lapacke_sgglse_work.c \
	lapacke/src/lapacke_sggqrf.c \
	lapacke/src/lapacke_sggqrf_work.c \
	lapacke/src/lapacke_sggrqf.c \
	lapacke/src/lapacke_sggrqf_work.c \
	lapacke/src/lapacke_sggsvd.c \
	lapacke/src/lapacke_sggsvd_work.c \
	lapacke/src/lapacke_sggsvp.c \
	lapacke/src/lapacke_sggsvp_work.c \
	lapacke/src/lapacke_sgtcon.c \
	lapacke/src/lapacke_sgtcon_work.c \
	lapacke/src/lapacke_sgtrfs.c \
	lapacke/src/lapacke_sgtrfs_work.c \
	lapacke/src/lapacke_sgtsv.c \
	lapacke/src/lapacke_sgtsv_work.c \
	lapacke/src/lapacke_sgtsvx.c \
	lapacke/src/lapacke_sgtsvx_work.c \
	lapacke/src/lapacke_sgttrf.c \
	lapacke/src/lapacke_sgttrf_work.c \
	lapacke/src/lapacke_sgttrs.c \
	lapacke/src/lapacke_sgttrs_work.c \
	lapacke/src/lapacke_shgeqz.c \
	lapacke/src/lapacke_shgeqz_work.c \
	lapacke/src/lapacke_shsein.c \
	lapacke/src/lapacke_shsein_work.c \
	lapacke/src/lapacke_shseqr.c \
	lapacke/src/lapacke_shseqr_work.c \
	lapacke/src/lapacke_slacn2.c \
	lapacke/src/lapacke_slacn2_work.c \
	lapacke/src/lapacke_slacpy.c \
	lapacke/src/lapacke_slacpy_work.c \
	lapacke/src/lapacke_slag2d.c \
	lapacke/src/lapacke_slag2d_work.c \
	lapacke/src/lapacke_slamch.c \
	lapacke/src/lapacke_slamch_work.c \
	lapacke/src/lapacke_slange.c \
	lapacke/src/lapacke_slange_work.c \
	lapacke/src/lapacke_slansy.c \
	lapacke/src/lapacke_slansy_work.c \
	lapacke/src/lapacke_slantr.c \
	lapacke/src/lapacke_slantr_work.c \
	lapacke/src/lapacke_slapmr.c \
	lapacke/src/lapacke_slapmr_work.c \
	lapacke/src/lapacke_slapy2.c \
	lapacke/src/lapacke_slapy2_work.c \
	lapacke/src/lapacke_slapy3.c \
	lapacke/src/lapacke_slapy3_work.c \
	lapacke/src/lapacke_slarfb.c \
	lapacke/src/lapacke_slarfb_work.c \
	lapacke/src/lapacke_slarfg.c \
	lapacke/src/lapacke_slarfg_work.c \
	lapacke/src/lapacke_slarft.c \
	lapacke/src/lapacke_slarft_work.c \
	lapacke/src/lapacke_slarfx.c \
	lapacke/src/lapacke_slarfx_work.c \
	lapacke/src/lapacke_slarnv.c \
	lapacke/src/lapacke_slarnv_work.c \
	lapacke/src/lapacke_slartgp.c \
	lapacke/src/lapacke_slartgp_work.c \
	lapacke/src/lapacke_slartgs.c \
	lapacke/src/lapacke_slartgs_work.c \
	lapacke/src/lapacke_slaset.c \
	lapacke/src/lapacke_slaset_work.c \
	lapacke/src/lapacke_slasrt.c \
	lapacke/src/lapacke_slasrt_work.c \
	lapacke/src/lapacke_slaswp.c \
	lapacke/src/lapacke_slaswp_work.c \
	lapacke/src/lapacke_slauum.c \
	lapacke/src/lapacke_slauum_work.c \
	lapacke/src/lapacke_sopgtr.c \
	lapacke/src/lapacke_sopgtr_work.c \
	lapacke/src/lapacke_sopmtr.c \
	lapacke/src/lapacke_sopmtr_work.c \
	lapacke/src/lapacke_sorbdb.c \
	lapacke/src/lapacke_sorbdb_work.c \
	lapacke/src/lapacke_sorcsd.c \
	lapacke/src/lapacke_sorcsd_work.c \
	lapacke/src/lapacke_sorgbr.c \
	lapacke/src/lapacke_sorgbr_work.c \
	lapacke/src/lapacke_sorghr.c \
	lapacke/src/lapacke_sorghr_work.c \
	lapacke/src/lapacke_sorglq.c \
	lapacke/src/lapacke_sorglq_work.c \
	lapacke/src/lapacke_sorgql.c \
	lapacke/src/lapacke_sorgql_work.c \
	lapacke/src/lapacke_sorgqr.c \
	lapacke/src/lapacke_sorgqr_work.c \
	lapacke/src/lapacke_sorgrq.c \
	lapacke/src/lapacke_sorgrq_work.c \
	lapacke/src/lapacke_sorgtr.c \
	lapacke/src/lapacke_sorgtr_work.c \
	lapacke/src/lapacke_sormbr.c \
	lapacke/src/lapacke_sormbr_work.c \
	lapacke/src/lapacke_sormhr.c \
	lapacke/src/lapacke_sormhr_work.c \
	lapacke/src/lapacke_sormlq.c \
	lapacke/src/lapacke_sormlq_work.c \
	lapacke/src/lapacke_sormql.c \
	lapacke/src/lapacke_sormql_work.c \
	lapacke/src/lapacke_sormqr.c \
	lapacke/src/lapacke_sormqr_work.c \
	lapacke/src/lapacke_sormrq.c \
	lapacke/src/lapacke_sormrq_work.c \
	lapacke/src/lapacke_sormrz.c \
	lapacke/src/lapacke_sormrz_work.c \
	lapacke/src/lapacke_sormtr.c \
	lapacke/src/lapacke_sormtr_work.c \
	lapacke/src/lapacke_spbcon.c \
	lapacke/src/lapacke_spbcon_work.c \
	lapacke/src/lapacke_spbequ.c \
	lapacke/src/lapacke_spbequ_work.c \
	lapacke/src/lapacke_spbrfs.c \
	lapacke/src/lapacke_spbrfs_work.c \
	lapacke/src/lapacke_spbstf.c \
	lapacke/src/lapacke_spbstf_work.c \
	lapacke/src/lapacke_spbsv.c \
	lapacke/src/lapacke_spbsv_work.c \
	lapacke/src/lapacke_spbsvx.c \
	lapacke/src/lapacke_spbsvx_work.c \
	lapacke/src/lapacke_spbtrf.c \
	lapacke/src/lapacke_spbtrf_work.c \
	lapacke/src/lapacke_spbtrs.c \
	lapacke/src/lapacke_spbtrs_work.c \
	lapacke/src/lapacke_spftrf.c \
	lapacke/src/lapacke_spftrf_work.c \
	lapacke/src/lapacke_spftri.c \
	lapacke/src/lapacke_spftri_work.c \
	lapacke/src/lapacke_spftrs.c \
	lapacke/src/lapacke_spftrs_work.c \
	lapacke/src/lapacke_spocon.c \
	lapacke/src/lapacke_spocon_work.c \
	lapacke/src/lapacke_spoequ.c \
	lapacke/src/lapacke_spoequ_work.c \
	lapacke/src/lapacke_spoequb.c \
	lapacke/src/lapacke_spoequb_work.c \
	lapacke/src/lapacke_sporfs.c \
	lapacke/src/lapacke_sporfs_work.c \
	lapacke/src/lapacke_sposv.c \
	lapacke/src/lapacke_sposv_work.c \
	lapacke/src/lapacke_sposvx.c \
	lapacke/src/lapacke_sposvx_work.c \
	lapacke/src/lapacke_spotrf.c \
	lapacke/src/lapacke_spotrf_work.c \
	lapacke/src/lapacke_spotri.c \
	lapacke/src/lapacke_spotri_work.c \
	lapacke/src/lapacke_spotrs.c \
	lapacke/src/lapacke_spotrs_work.c \
	lapacke/src/lapacke_sppcon.c \
	lapacke/src/lapacke_sppcon_work.c \
	lapacke/src/lapacke_sppequ.c \
	lapacke/src/lapacke_sppequ_work.c \
	lapacke/src/lapacke_spprfs.c \
	lapacke/src/lapacke_spprfs_work.c \
	lapacke/src/lapacke_sppsv.c \
	lapacke/src/lapacke_sppsv_work.c \
	lapacke/src/lapacke_sppsvx.c \
	lapacke/src/lapacke_sppsvx_work.c \
	lapacke/src/lapacke_spptrf.c \
	lapacke/src/lapacke_spptrf_work.c \
	lapacke/src/lapacke_spptri.c \
	lapacke/src/lapacke_spptri_work.c \
	lapacke/src/lapacke_spptrs.c \
	lapacke/src/lapacke_spptrs_work.c \
	lapacke/src/lapacke_spstrf.c \
	lapacke/src/lapacke_spstrf_work.c \
	lapacke/src/lapacke_sptcon.c \
	lapacke/src/lapacke_sptcon_work.c \
	lapacke/src/lapacke_spteqr.c \
	lapacke/src/lapacke_spteqr_work.c \
	lapacke/src/lapacke_sptrfs.c \
	lapacke/src/lapacke_sptrfs_work.c \
	lapacke/src/lapacke_sptsv.c \
	lapacke/src/lapacke_sptsv_work.c \
	lapacke/src/lapacke_sptsvx.c \
	lapacke/src/lapacke_sptsvx_work.c \
	lapacke/src/lapacke_spttrf.c \
	lapacke/src/lapacke_spttrf_work.c \
	lapacke/src/lapacke_spttrs.c \
	lapacke/src/lapacke_spttrs_work.c \
	lapacke/src/lapacke_ssbev.c \
	lapacke/src/lapacke_ssbev_work.c \
	lapacke/src/lapacke_ssbevd.c \
	lapacke/src/lapacke_ssbevd_work.c \
	lapacke/src/lapacke_ssbevx.c \
	lapacke/src/lapacke_ssbevx_work.c \
	lapacke/src/lapacke_ssbgst.c \
	lapacke/src/lapacke_ssbgst_work.c \
	lapacke/src/lapacke_ssbgv.c \
	lapacke/src/lapacke_ssbgv_work.c \
	lapacke/src/lapacke_ssbgvd.c \
	lapacke/src/lapacke_ssbgvd_work.c \
	lapacke/src/lapacke_ssbgvx.c \
	lapacke/src/lapacke_ssbgvx_work.c \
	lapacke/src/lapacke_ssbtrd.c \
	lapacke/src/lapacke_ssbtrd_work.c \
	lapacke/src/lapacke_ssfrk.c \
	lapacke/src/lapacke_ssfrk_work.c \
	lapacke/src/lapacke_sspcon.c \
	lapacke/src/lapacke_sspcon_work.c \
	lapacke/src/lapacke_sspev.c \
	lapacke/src/lapacke_sspev_work.c \
	lapacke/src/lapacke_sspevd.c \
	lapacke/src/lapacke_sspevd_work.c \
	lapacke/src/lapacke_sspevx.c \
	lapacke/src/lapacke_sspevx_work.c \
	lapacke/src/lapacke_sspgst.c \
	lapacke/src/lapacke_sspgst_work.c \
	lapacke/src/lapacke_sspgv.c \
	lapacke/src/lapacke_sspgv_work.c \
	lapacke/src/lapacke_sspgvd.c \
	lapacke/src/lapacke_sspgvd_work.c \
	lapacke/src/lapacke_sspgvx.c \
	lapacke/src/lapacke_sspgvx_work.c \
	lapacke/src/lapacke_ssprfs.c \
	lapacke/src/lapacke_ssprfs_work.c \
	lapacke/src/lapacke_sspsv.c \
	lapacke/src/lapacke_sspsv_work.c \
	lapacke/src/lapacke_sspsvx.c \
	lapacke/src/lapacke_sspsvx_work.c \
	lapacke/src/lapacke_ssptrd.c \
	lapacke/src/lapacke_ssptrd_work.c \
	lapacke/src/lapacke_ssptrf.c \
	lapacke/src/lapacke_ssptrf_work.c \
	lapacke/src/lapacke_ssptri.c \
	lapacke/src/lapacke_ssptri_work.c \
	lapacke/src/lapacke_ssptrs.c \
	lapacke/src/lapacke_ssptrs_work.c \
	lapacke/src/lapacke_sstebz.c \
	lapacke/src/lapacke_sstebz_work.c \
	lapacke/src/lapacke_sstedc.c \
	lapacke/src/lapacke_sstedc_work.c \
	lapacke/src/lapacke_sstegr.c \
	lapacke/src/lapacke_sstegr_work.c \
	lapacke/src/lapacke_sstein.c \
	lapacke/src/lapacke_sstein_work.c \
	lapacke/src/lapacke_sstemr.c \
	lapacke/src/lapacke_sstemr_work.c \
	lapacke/src/lapacke_ssteqr.c \
	lapacke/src/lapacke_ssteqr_work.c \
	lapacke/src/lapacke_ssterf.c \
	lapacke/src/lapacke_ssterf_work.c \
	lapacke/src/lapacke_sstev.c \
	lapacke/src/lapacke_sstev_work.c \
	lapacke/src/lapacke_sstevd.c \
	lapacke/src/lapacke_sstevd_work.c \
	lapacke/src/lapacke_sstevr.c \
	lapacke/src/lapacke_sstevr_work.c \
	lapacke/src/lapacke_sstevx.c \
	lapacke/src/lapacke_sstevx_work.c \
	lapacke/src/lapacke_ssycon.c \
	lapacke/src/lapacke_ssycon_work.c \
	lapacke/src/lapacke_ssyconv.c \
	lapacke/src/lapacke_ssyconv_work.c \
	lapacke/src/lapacke_ssyequb.c \
	lapacke/src/lapacke_ssyequb_work.c \
	lapacke/src/lapacke_ssyev.c \
	lapacke/src/lapacke_ssyev_work.c \
	lapacke/src/lapacke_ssyevd.c \
	lapacke/src/lapacke_ssyevd_work.c \
	lapacke/src/lapacke_ssyevr.c \
	lapacke/src/lapacke_ssyevr_work.c \
	lapacke/src/lapacke_ssyevx.c \
	lapacke/src/lapacke_ssyevx_work.c \
	lapacke/src/lapacke_ssygst.c \
	lapacke/src/lapacke_ssygst_work.c \
	lapacke/src/lapacke_ssygv.c \
	lapacke/src/lapacke_ssygv_work.c \
	lapacke/src/lapacke_ssygvd.c \
	lapacke/src/lapacke_ssygvd_work.c \
	lapacke/src/lapacke_ssygvx.c \
	lapacke/src/lapacke_ssygvx_work.c \
	lapacke/src/lapacke_ssyrfs.c \
	lapacke/src/lapacke_ssyrfs_work.c \
	lapacke/src/lapacke_ssysv.c \
	lapacke/src/lapacke_ssysv_rook.c \
	lapacke/src/lapacke_ssysv_rook_work.c \
	lapacke/src/lapacke_ssysv_work.c \
	lapacke/src/lapacke_ssysvx.c \
	lapacke/src/lapacke_ssysvx_work.c \
	lapacke/src/lapacke_ssyswapr.c \
	lapacke/src/lapacke_ssyswapr_work.c \
	lapacke/src/lapacke_ssytrd.c \
	lapacke/src/lapacke_ssytrd_work.c \
	lapacke/src/lapacke_ssytrf.c \
	lapacke/src/lapacke_ssytrf_work.c \
	lapacke/src/lapacke_ssytri.c \
	lapacke/src/lapacke_ssytri2.c \
	lapacke/src/lapacke_ssytri2_work.c \
	lapacke/src/lapacke_ssytri2x.c \
	lapacke/src/lapacke_ssytri2x_work.c \
	lapacke/src/lapacke_ssytri_work.c \
	lapacke/src/lapacke_ssytrs.c \
	lapacke/src/lapacke_ssytrs2.c \
	lapacke/src/lapacke_ssytrs2_work.c \
	lapacke/src/lapacke_ssytrs_work.c \
	lapacke/src/lapacke_stbcon.c \
	lapacke/src/lapacke_stbcon_work.c \
	lapacke/src/lapacke_stbrfs.c \
	lapacke/src/lapacke_stbrfs_work.c \
	lapacke/src/lapacke_stbtrs.c \
	lapacke/src/lapacke_stbtrs_work.c \
	lapacke/src/lapacke_stfsm.c \
	lapacke/src/lapacke_stfsm_work.c \
	lapacke/src/lapacke_stftri.c \
	lapacke/src/lapacke_stftri_work.c \
	lapacke/src/lapacke_stfttp.c \
	lapacke/src/lapacke_stfttp_work.c \
	lapacke/src/lapacke_stfttr.c \
	lapacke/src/lapacke_stfttr_work.c \
	lapacke/src/lapacke_stgevc.c \
	lapacke/src/lapacke_stgevc_work.c \
	lapacke/src/lapacke_stgexc.c \
	lapacke/src/lapacke_stgexc_work.c \
	lapacke/src/lapacke_stgsen.c \
	lapacke/src/lapacke_stgsen_work.c \
	lapacke/src/lapacke_stgsja.c \
	lapacke/src/lapacke_stgsja_work.c \
	lapacke/src/lapacke_stgsna.c \
	lapacke/src/lapacke_stgsna_work.c \
	lapacke/src/lapacke_stgsyl.c \
	lapacke/src/lapacke_stgsyl_work.c \
	lapacke/src/lapacke_stpcon.c \
	lapacke/src/lapacke_stpcon_work.c \
	lapacke/src/lapacke_stpmqrt.c \
	lapacke/src/lapacke_stpmqrt_work.c \
	lapacke/src/lapacke_stpqrt2.c \
	lapacke/src/lapacke_stpqrt2_work.c \
	lapacke/src/lapacke_stprfb.c \
	lapacke/src/lapacke_stprfb_work.c \
	lapacke/src/lapacke_stprfs.c \
	lapacke/src/lapacke_stprfs_work.c \
	lapacke/src/lapacke_stptri.c \
	lapacke/src/lapacke_stptri_work.c \
	lapacke/src/lapacke_stptrs.c \
	lapacke/src/lapacke_stptrs_work.c \
	lapacke/src/lapacke_stpttf.c \
	lapacke/src/lapacke_stpttf_work.c \
	lapacke/src/lapacke_stpttr.c \
	lapacke/src/lapacke_stpttr_work.c \
	lapacke/src/lapacke_strcon.c \
	lapacke/src/lapacke_strcon_work.c \
	lapacke/src/lapacke_strevc.c \
	lapacke/src/lapacke_strevc_work.c \
	lapacke/src/lapacke_strexc.c \
	lapacke/src/lapacke_strexc_work.c \
	lapacke/src/lapacke_strrfs.c \
	lapacke/src/lapacke_strrfs_work.c \
	lapacke/src/lapacke_strsen.c \
	lapacke/src/lapacke_strsen_work.c \
	lapacke/src/lapacke_strsna.c \
	lapacke/src/lapacke_strsna_work.c \
	lapacke/src/lapacke_strsyl.c \
	lapacke/src/lapacke_strsyl_work.c \
	lapacke/src/lapacke_strtri.c \
	lapacke/src/lapacke_strtri_work.c \
	lapacke/src/lapacke_strtrs.c \
	lapacke/src/lapacke_strtrs_work.c \
	lapacke/src/lapacke_strttf.c \
	lapacke/src/lapacke_strttf_work.c \
	lapacke/src/lapacke_strttp.c \
	lapacke/src/lapacke_strttp_work.c \
	lapacke/src/lapacke_stzrzf.c \
	lapacke/src/lapacke_stzrzf_work.c \
	lapacke/src/lapacke_zbbcsd.c \
	lapacke/src/lapacke_zbbcsd_work.c \
	lapacke/src/lapacke_zbdsqr.c \
	lapacke/src/lapacke_zbdsqr_work.c \
	lapacke/src/lapacke_zcgesv.c \
	lapacke/src/lapacke_zcgesv_work.c \
	lapacke/src/lapacke_zcposv.c \
	lapacke/src/lapacke_zcposv_work.c \
	lapacke/src/lapacke_zgbbrd.c \
	lapacke/src/lapacke_zgbbrd_work.c \
	lapacke/src/lapacke_zgbcon.c \
	lapacke/src/lapacke_zgbcon_work.c \
	lapacke/src/lapacke_zgbequ.c \
	lapacke/src/lapacke_zgbequ_work.c \
	lapacke/src/lapacke_zgbequb.c \
	lapacke/src/lapacke_zgbequb_work.c \
	lapacke/src/lapacke_zgbrfs.c \
	lapacke/src/lapacke_zgbrfs_work.c \
	lapacke/src/lapacke_zgbsv.c \
	lapacke/src/lapacke_zgbsv_work.c \
	lapacke/src/lapacke_zgbsvx.c \
	lapacke/src/lapacke_zgbsvx_work.c \
	lapacke/src/lapacke_zgbtrf.c \
	lapacke/src/lapacke_zgbtrf_work.c \
	lapacke/src/lapacke_zgbtrs.c \
	lapacke/src/lapacke_zgbtrs_work.c \
	lapacke/src/lapacke_zgebak.c \
	lapacke/src/lapacke_zgebak_work.c \
	lapacke/src/lapacke_zgebal.c \
	lapacke/src/lapacke_zgebal_work.c \
	lapacke/src/lapacke_zgebrd.c \
	lapacke/src/lapacke_zgebrd_work.c \
	lapacke/src/lapacke_zgecon.c \
	lapacke/src/lapacke_zgecon_work.c \
	lapacke/src/lapacke_zgeequ.c \
	lapacke/src/lapacke_zgeequ_work.c \
	lapacke/src/lapacke_zgeequb.c \
	lapacke/src/lapacke_zgeequb_work.c \
	lapacke/src/lapacke_zgees.c \
	lapacke/src/lapacke_zgees_work.c \
	lapacke/src/lapacke_zgeesx.c \
	lapacke/src/lapacke_zgeesx_work.c \
	lapacke/src/lapacke_zgeev.c \
	lapacke/src/lapacke_zgeev_work.c \
	lapacke/src/lapacke_zgeevx.c \
	lapacke/src/lapacke_zgeevx_work.c \
	lapacke/src/lapacke_zgehrd.c \
	lapacke/src/lapacke_zgehrd_work.c \
	lapacke/src/lapacke_zgelq2.c \
	lapacke/src/lapacke_zgelq2_work.c \
	lapacke/src/lapacke_zgelqf.c \
	lapacke/src/lapacke_zgelqf_work.c \
	lapacke/src/lapacke_zgels.c \
	lapacke/src/lapacke_zgels_work.c \
	lapacke/src/lapacke_zgelsd.c \
	lapacke/src/lapacke_zgelsd_work.c \
	lapacke/src/lapacke_zgelss.c \
	lapacke/src/lapacke_zgelss_work.c \
	lapacke/src/lapacke_zgelsy.c \
	lapacke/src/lapacke_zgelsy_work.c \
	lapacke/src/lapacke_zgemqrt.c \
	lapacke/src/lapacke_zgemqrt_work.c \
	lapacke/src/lapacke_zgeqlf.c \
	lapacke/src/lapacke_zgeqlf_work.c \
	lapacke/src/lapacke_zgeqp3.c \
	lapacke/src/lapacke_zgeqp3_work.c \
	lapacke/src/lapacke_zgeqpf.c \
	lapacke/src/lapacke_zgeqpf_work.c \
	lapacke/src/lapacke_zgeqr2.c \
	lapacke/src/lapacke_zgeqr2_work.c \
	lapacke/src/lapacke_zgeqrf.c \
	lapacke/src/lapacke_zgeqrf_work.c \
	lapacke/src/lapacke_zgeqrfp.c \
	lapacke/src/lapacke_zgeqrfp_work.c \
	lapacke/src/lapacke_zgeqrt.c \
	lapacke/src/lapacke_zgeqrt2.c \
	lapacke/src/lapacke_zgeqrt2_work.c \
	lapacke/src/lapacke_zgeqrt3.c \
	lapacke/src/lapacke_zgeqrt3_work.c \
	lapacke/src/lapacke_zgeqrt_work.c \
	lapacke/src/lapacke_zgerfs.c \
	lapacke/src/lapacke_zgerfs_work.c \
	lapacke/src/lapacke_zgerqf.c \
	lapacke/src/lapacke_zgerqf_work.c \
	lapacke/src/lapacke_zgesdd.c \
	lapacke/src/lapacke_zgesdd_work.c \
	lapacke/src/lapacke_zgesv.c \
	lapacke/src/lapacke_zgesv_work.c \
	lapacke/src/lapacke_zgesvd.c \
	lapacke/src/lapacke_zgesvd_work.c \
	lapacke/src/lapacke_zgesvx.c \
	lapacke/src/lapacke_zgesvx_work.c \
	lapacke/src/lapacke_zgetf2.c \
	lapacke/src/lapacke_zgetf2_work.c \
	lapacke/src/lapacke_zgetrf.c \
	lapacke/src/lapacke_zgetrf_work.c \
	lapacke/src/lapacke_zgetri.c \
	lapacke/src/lapacke_zgetri_work.c \
	lapacke/src/lapacke_zgetrs.c \
	lapacke/src/lapacke_zgetrs_work.c \
	lapacke/src/lapacke_zggbak.c \
	lapacke/src/lapacke_zggbak_work.c \
	lapacke/src/lapacke_zggbal.c \
	lapacke/src/lapacke_zggbal_work.c \
	lapacke/src/lapacke_zgges.c \
	lapacke/src/lapacke_zgges_work.c \
	lapacke/src/lapacke_zggesx.c \
	lapacke/src/lapacke_zggesx_work.c \
	lapacke/src/lapacke_zggev.c \
	lapacke/src/lapacke_zggev_work.c \
	lapacke/src/lapacke_zggevx.c \
	lapacke/src/lapacke_zggevx_work.c \
	lapacke/src/lapacke_zggglm.c \
	lapacke/src/lapacke_zggglm_work.c \
	lapacke/src/lapacke_zgghrd.c \
	lapacke/src/lapacke_zgghrd_work.c \
	lapacke/src/lapacke_zgglse.c \
	lapacke/src/lapacke_zgglse_work.c \
	lapacke/src/lapacke_zggqrf.c \
	lapacke/src/lapacke_zggqrf_work.c \
	lapacke/src/lapacke_zggrqf.c \
	lapacke/src/lapacke_zggrqf_work.c \
	lapacke/src/lapacke_zggsvd.c \
	lapacke/src/lapacke_zggsvd_work.c \
	lapacke/src/lapacke_zggsvp.c \
	lapacke/src/lapacke_zggsvp_work.c \
	lapacke/src/lapacke_zgtcon.c \
	lapacke/src/lapacke_zgtcon_work.c \
	lapacke/src/lapacke_zgtrfs.c \
	lapacke/src/lapacke_zgtrfs_work.c \
	lapacke/src/lapacke_zgtsv.c \
	lapacke/src/lapacke_zgtsv_work.c \
	lapacke/src/lapacke_zgtsvx.c \
	lapacke/src/lapacke_zgtsvx_work.c \
	lapacke/src/lapacke_zgttrf.c \
	lapacke/src/lapacke_zgttrf_work.c \
	lapacke/src/lapacke_zgttrs.c \
	lapacke/src/lapacke_zgttrs_work.c \
	lapacke/src/lapacke_zhbev.c \
	lapacke/src/lapacke_zhbev_work.c \
	lapacke/src/lapacke_zhbevd.c \
	lapacke/src/lapacke_zhbevd_work.c \
	lapacke/src/lapacke_zhbevx.c \
	lapacke/src/lapacke_zhbevx_work.c \
	lapacke/src/lapacke_zhbgst.c \
	lapacke/src/lapacke_zhbgst_work.c \
	lapacke/src/lapacke_zhbgv.c \
	lapacke/src/lapacke_zhbgv_work.c \
	lapacke/src/lapacke_zhbgvd.c \
	lapacke/src/lapacke_zhbgvd_work.c \
	lapacke/src/lapacke_zhbgvx.c \
	lapacke/src/lapacke_zhbgvx_work.c \
	lapacke/src/lapacke_zhbtrd.c \
	lapacke/src/lapacke_zhbtrd_work.c \
	lapacke/src/lapacke_zhecon.c \
	lapacke/src/lapacke_zhecon_work.c \
	lapacke/src/lapacke_zheequb.c \
	lapacke/src/lapacke_zheequb_work.c \
	lapacke/src/lapacke_zheev.c \
	lapacke/src/lapacke_zheev_work.c \
	lapacke/src/lapacke_zheevd.c \
	lapacke/src/lapacke_zheevd_work.c \
	lapacke/src/lapacke_zheevr.c \
	lapacke/src/lapacke_zheevr_work.c \
	lapacke/src/lapacke_zheevx.c \
	lapacke/src/lapacke_zheevx_work.c \
	lapacke/src/lapacke_zhegst.c \
	lapacke/src/lapacke_zhegst_work.c \
	lapacke/src/lapacke_zhegv.c \
	lapacke/src/lapacke_zhegv_work.c \
	lapacke/src/lapacke_zhegvd.c \
	lapacke/src/lapacke_zhegvd_work.c \
	lapacke/src/lapacke_zhegvx.c \
	lapacke/src/lapacke_zhegvx_work.c \
	lapacke/src/lapacke_zherfs.c \
	lapacke/src/lapacke_zherfs_work.c \
	lapacke/src/lapacke_zhesv.c \
	lapacke/src/lapacke_zhesv_work.c \
	lapacke/src/lapacke_zhesvx.c \
	lapacke/src/lapacke_zhesvx_work.c \
	lapacke/src/lapacke_zheswapr.c \
	lapacke/src/lapacke_zheswapr_work.c \
	lapacke/src/lapacke_zhetrd.c \
	lapacke/src/lapacke_zhetrd_work.c \
	lapacke/src/lapacke_zhetrf.c \
	lapacke/src/lapacke_zhetrf_work.c \
	lapacke/src/lapacke_zhetri.c \
	lapacke/src/lapacke_zhetri2.c \
	lapacke/src/lapacke_zhetri2_work.c \
	lapacke/src/lapacke_zhetri2x.c \
	lapacke/src/lapacke_zhetri2x_work.c \
	lapacke/src/lapacke_zhetri_work.c \
	lapacke/src/lapacke_zhetrs.c \
	lapacke/src/lapacke_zhetrs2.c \
	lapacke/src/lapacke_zhetrs2_work.c \
	lapacke/src/lapacke_zhetrs_work.c \
	lapacke/src/lapacke_zhfrk.c \
	lapacke/src/lapacke_zhfrk_work.c \
	lapacke/src/lapacke_zhgeqz.c \
	lapacke/src/lapacke_zhgeqz_work.c \
	lapacke/src/lapacke_zhpcon.c \
	lapacke/src/lapacke_zhpcon_work.c \
	lapacke/src/lapacke_zhpev.c \
	lapacke/src/lapacke_zhpev_work.c \
	lapacke/src/lapacke_zhpevd.c \
	lapacke/src/lapacke_zhpevd_work.c \
	lapacke/src/lapacke_zhpevx.c \
	lapacke/src/lapacke_zhpevx_work.c \
	lapacke/src/lapacke_zhpgst.c \
	lapacke/src/lapacke_zhpgst_work.c \
	lapacke/src/lapacke_zhpgv.c \
	lapacke/src/lapacke_zhpgv_work.c \
	lapacke/src/lapacke_zhpgvd.c \
	lapacke/src/lapacke_zhpgvd_work.c \
	lapacke/src/lapacke_zhpgvx.c \
	lapacke/src/lapacke_zhpgvx_work.c \
	lapacke/src/lapacke_zhprfs.c \
	lapacke/src/lapacke_zhprfs_work.c \
	lapacke/src/lapacke_zhpsv.c \
	lapacke/src/lapacke_zhpsv_work.c \
	lapacke/src/lapacke_zhpsvx.c \
	lapacke/src/lapacke_zhpsvx_work.c \
	lapacke/src/lapacke_zhptrd.c \
	lapacke/src/lapacke_zhptrd_work.c \
	lapacke/src/lapacke_zhptrf.c \
	lapacke/src/lapacke_zhptrf_work.c \
	lapacke/src/lapacke_zhptri.c \
	lapacke/src/lapacke_zhptri_work.c \
	lapacke/src/lapacke_zhptrs.c \
	lapacke/src/lapacke_zhptrs_work.c \
	lapacke/src/lapacke_zhsein.c \
	lapacke/src/lapacke_zhsein_work.c \
	lapacke/src/lapacke_zhseqr.c \
	lapacke/src/lapacke_zhseqr_work.c \
	lapacke/src/lapacke_zlacgv.c \
	lapacke/src/lapacke_zlacgv_work.c \
	lapacke/src/lapacke_zlacn2.c \
	lapacke/src/lapacke_zlacn2_work.c \
	lapacke/src/lapacke_zlacp2.c \
	lapacke/src/lapacke_zlacp2_work.c \
	lapacke/src/lapacke_zlacpy.c \
	lapacke/src/lapacke_zlacpy_work.c \
	lapacke/src/lapacke_zlag2c.c \
	lapacke/src/lapacke_zlag2c_work.c \
	lapacke/src/lapacke_zlange.c \
	lapacke/src/lapacke_zlange_work.c \
	lapacke/src/lapacke_zlanhe.c \
	lapacke/src/lapacke_zlanhe_work.c \
	lapacke/src/lapacke_zlansy.c \
	lapacke/src/lapacke_zlansy_work.c \
	lapacke/src/lapacke_zlantr.c \
	lapacke/src/lapacke_zlantr_work.c \
	lapacke/src/lapacke_zlapmr.c \
	lapacke/src/lapacke_zlapmr_work.c \
	lapacke/src/lapacke_zlarfb.c \
	lapacke/src/lapacke_zlarfb_work.c \
	lapacke/src/lapacke_zlarfg.c \
	lapacke/src/lapacke_zlarfg_work.c \
	lapacke/src/lapacke_zlarft.c \
	lapacke/src/lapacke_zlarft_work.c \
	lapacke/src/lapacke_zlarfx.c \
	lapacke/src/lapacke_zlarfx_work.c \
	lapacke/src/lapacke_zlarnv.c \
	lapacke/src/lapacke_zlarnv_work.c \
	lapacke/src/lapacke_zlaset.c \
	lapacke/src/lapacke_zlaset_work.c \
	lapacke/src/lapacke_zlaswp.c \
	lapacke/src/lapacke_zlaswp_work.c \
	lapacke/src/lapacke_zlauum.c \
	lapacke/src/lapacke_zlauum_work.c \
	lapacke/src/lapacke_zpbcon.c \
	lapacke/src/lapacke_zpbcon_work.c \
	lapacke/src/lapacke_zpbequ.c \
	lapacke/src/lapacke_zpbequ_work.c \
	lapacke/src/lapacke_zpbrfs.c \
	lapacke/src/lapacke_zpbrfs_work.c \
	lapacke/src/lapacke_zpbstf.c \
	lapacke/src/lapacke_zpbstf_work.c \
	lapacke/src/lapacke_zpbsv.c \
	lapacke/src/lapacke_zpbsv_work.c \
	lapacke/src/lapacke_zpbsvx.c \
	lapacke/src/lapacke_zpbsvx_work.c \
	lapacke/src/lapacke_zpbtrf.c \
	lapacke/src/lapacke_zpbtrf_work.c \
	lapacke/src/lapacke_zpbtrs.c \
	lapacke/src/lapacke_zpbtrs_work.c \
	lapacke/src/lapacke_zpftrf.c \
	lapacke/src/lapacke_zpftrf_work.c \
	lapacke/src/lapacke_zpftri.c \
	lapacke/src/lapacke_zpftri_work.c \
	lapacke/src/lapacke_zpftrs.c \
	lapacke/src/lapacke_zpftrs_work.c \
	lapacke/src/lapacke_zpocon.c \
	lapacke/src/lapacke_zpocon_work.c \
	lapacke/src/lapacke_zpoequ.c \
	lapacke/src/lapacke_zpoequ_work.c \
	lapacke/src/lapacke_zpoequb.c \
	lapacke/src/lapacke_zpoequb_work.c \
	lapacke/src/lapacke_zporfs.c \
	lapacke/src/lapacke_zporfs_work.c \
	lapacke/src/lapacke_zposv.c \
	lapacke/src/lapacke_zposv_work.c \
	lapacke/src/lapacke_zposvx.c \
	lapacke/src/lapacke_zposvx_work.c \
	lapacke/src/lapacke_zpotrf.c \
	lapacke/src/lapacke_zpotrf_work.c \
	lapacke/src/lapacke_zpotri.c \
	lapacke/src/lapacke_zpotri_work.c \
	lapacke/src/lapacke_zpotrs.c \
	lapacke/src/lapacke_zpotrs_work.c \
	lapacke/src/lapacke_zppcon.c \
	lapacke/src/lapacke_zppcon_work.c \
	lapacke/src/lapacke_zppequ.c \
	lapacke/src/lapacke_zppequ_work.c \
	lapacke/src/lapacke_zpprfs.c \
	lapacke/src/lapacke_zpprfs_work.c \
	lapacke/src/lapacke_zppsv.c \
	lapacke/src/lapacke_zppsv_work.c \
	lapacke/src/lapacke_zppsvx.c \
	lapacke/src/lapacke_zppsvx_work.c \
	lapacke/src/lapacke_zpptrf.c \
	lapacke/src/lapacke_zpptrf_work.c \
	lapacke/src/lapacke_zpptri.c \
	lapacke/src/lapacke_zpptri_work.c \
	lapacke/src/lapacke_zpptrs.c \
	lapacke/src/lapacke_zpptrs_work.c \
	lapacke/src/lapacke_zpstrf.c \
	lapacke/src/lapacke_zpstrf_work.c \
	lapacke/src/lapacke_zptcon.c \
	lapacke/src/lapacke_zptcon_work.c \
	lapacke/src/lapacke_zpteqr.c \
	lapacke/src/lapacke_zpteqr_work.c \
	lapacke/src/lapacke_zptrfs.c \
	lapacke/src/lapacke_zptrfs_work.c \
	lapacke/src/lapacke_zptsv.c \
	lapacke/src/lapacke_zptsv_work.c \
	lapacke/src/lapacke_zptsvx.c \
	lapacke/src/lapacke_zptsvx_work.c \
	lapacke/src/lapacke_zpttrf.c \
	lapacke/src/lapacke_zpttrf_work.c \
	lapacke/src/lapacke_zpttrs.c \
	lapacke/src/lapacke_zpttrs_work.c \
	lapacke/src/lapacke_zspcon.c \
	lapacke/src/lapacke_zspcon_work.c \
	lapacke/src/lapacke_zsprfs.c \
	lapacke/src/lapacke_zsprfs_work.c \
	lapacke/src/lapacke_zspsv.c \
	lapacke/src/lapacke_zspsv_work.c \
	lapacke/src/lapacke_zspsvx.c \
	lapacke/src/lapacke_zspsvx_work.c \
	lapacke/src/lapacke_zsptrf.c \
	lapacke/src/lapacke_zsptrf_work.c \
	lapacke/src/lapacke_zsptri.c \
	lapacke/src/lapacke_zsptri_work.c \
	lapacke/src/lapacke_zsptrs.c \
	lapacke/src/lapacke_zsptrs_work.c \
	lapacke/src/lapacke_zstedc.c \
	lapacke/src/lapacke_zstedc_work.c \
	lapacke/src/lapacke_zstegr.c \
	lapacke/src/lapacke_zstegr_work.c \
	lapacke/src/lapacke_zstein.c \
	lapacke/src/lapacke_zstein_work.c \
	lapacke/src/lapacke_zstemr.c \
	lapacke/src/lapacke_zstemr_work.c \
	lapacke/src/lapacke_zsteqr.c \
	lapacke/src/lapacke_zsteqr_work.c \
	lapacke/src/lapacke_zsycon.c \
	lapacke/src/lapacke_zsycon_work.c \
	lapacke/src/lapacke_zsyconv.c \
	lapacke/src/lapacke_zsyconv_work.c \
	lapacke/src/lapacke_zsyequb.c \
	lapacke/src/lapacke_zsyequb_work.c \
	lapacke/src/lapacke_zsyrfs.c \
	lapacke/src/lapacke_zsyrfs_work.c \
	lapacke/src/lapacke_zsysv.c \
	lapacke/src/lapacke_zsysv_rook.c \
	lapacke/src/lapacke_zsysv_rook_work.c \
	lapacke/src/lapacke_zsysv_work.c \
	lapacke/src/lapacke_zsysvx.c \
	lapacke/src/lapacke_zsysvx_work.c \
	lapacke/src/lapacke_zsyswapr.c \
	lapacke/src/lapacke_zsyswapr_work.c \
	lapacke/src/lapacke_zsytrf.c \
	lapacke/src/lapacke_zsytrf_work.c \
	lapacke/src/lapacke_zsytri.c \
	lapacke/src/lapacke_zsytri2.c \
	lapacke/src/lapacke_zsytri2_work.c \
	lapacke/src/lapacke_zsytri2x.c \
	lapacke/src/lapacke_zsytri2x_work.c \
	lapacke/src/lapacke_zsytri_work.c \
	lapacke/src/lapacke_zsytrs.c \
	lapacke/src/lapacke_zsytrs2.c \
	lapacke/src/lapacke_zsytrs2_work.c \
	lapacke/src/lapacke_zsytrs_work.c \
	lapacke/src/lapacke_ztbcon.c \
	lapacke/src/lapacke_ztbcon_work.c \
	lapacke/src/lapacke_ztbrfs.c \
	lapacke/src/lapacke_ztbrfs_work.c \
	lapacke/src/lapacke_ztbtrs.c \
	lapacke/src/lapacke_ztbtrs_work.c \
	lapacke/src/lapacke_ztfsm.c \
	lapacke/src/lapacke_ztfsm_work.c \
	lapacke/src/lapacke_ztftri.c \
	lapacke/src/lapacke_ztftri_work.c \
	lapacke/src/lapacke_ztfttp.c \
	lapacke/src/lapacke_ztfttp_work.c \
	lapacke/src/lapacke_ztfttr.c \
	lapacke/src/lapacke_ztfttr_work.c \
	lapacke/src/lapacke_ztgevc.c \
	lapacke/src/lapacke_ztgevc_work.c \
	lapacke/src/lapacke_ztgexc.c \
	lapacke/src/lapacke_ztgexc_work.c \
	lapacke/src/lapacke_ztgsen.c \
	lapacke/src/lapacke_ztgsen_work.c \
	lapacke/src/lapacke_ztgsja.c \
	lapacke/src/lapacke_ztgsja_work.c \
	lapacke/src/lapacke_ztgsna.c \
	lapacke/src/lapacke_ztgsna_work.c \
	lapacke/src/lapacke_ztgsyl.c \
	lapacke/src/lapacke_ztgsyl_work.c \
	lapacke/src/lapacke_ztpcon.c \
	lapacke/src/lapacke_ztpcon_work.c \
	lapacke/src/lapacke_ztpmqrt.c \
	lapacke/src/lapacke_ztpmqrt_work.c \
	lapacke/src/lapacke_ztpqrt.c \
	lapacke/src/lapacke_ztpqrt2.c \
	lapacke/src/lapacke_ztpqrt2_work.c \
	lapacke/src/lapacke_ztpqrt_work.c \
	lapacke/src/lapacke_ztprfb.c \
	lapacke/src/lapacke_ztprfb_work.c \
	lapacke/src/lapacke_ztprfs.c \
	lapacke/src/lapacke_ztprfs_work.c \
	lapacke/src/lapacke_ztptri.c \
	lapacke/src/lapacke_ztptri_work.c \
	lapacke/src/lapacke_ztptrs.c \
	lapacke/src/lapacke_ztptrs_work.c \
	lapacke/src/lapacke_ztpttf.c \
	lapacke/src/lapacke_ztpttf_work.c \
	lapacke/src/lapacke_ztpttr.c \
	lapacke/src/lapacke_ztpttr_work.c \
	lapacke/src/lapacke_ztrcon.c \
	lapacke/src/lapacke_ztrcon_work.c \
	lapacke/src/lapacke_ztrevc.c \
	lapacke/src/lapacke_ztrevc_work.c \
	lapacke/src/lapacke_ztrexc.c \
	lapacke/src/lapacke_ztrexc_work.c \
	lapacke/src/lapacke_ztrrfs.c \
	lapacke/src/lapacke_ztrrfs_work.c \
	lapacke/src/lapacke_ztrsen.c \
	lapacke/src/lapacke_ztrsen_work.c \
	lapacke/src/lapacke_ztrsna.c \
	lapacke/src/lapacke_ztrsna_work.c \
	lapacke/src/lapacke_ztrsyl.c \
	lapacke/src/lapacke_ztrsyl_work.c \
	lapacke/src/lapacke_ztrtri.c \
	lapacke/src/lapacke_ztrtri_work.c \
	lapacke/src/lapacke_ztrtrs.c \
	lapacke/src/lapacke_ztrtrs_work.c \
	lapacke/src/lapacke_ztrttf.c \
	lapacke/src/lapacke_ztrttf_work.c \
	lapacke/src/lapacke_ztrttp.c \
	lapacke/src/lapacke_ztrttp_work.c \
	lapacke/src/lapacke_ztzrzf.c \
	lapacke/src/lapacke_ztzrzf_work.c \
	lapacke/src/lapacke_zunbdb.c \
	lapacke/src/lapacke_zunbdb_work.c \
	lapacke/src/lapacke_zuncsd.c \
	lapacke/src/lapacke_zuncsd_work.c \
	lapacke/src/lapacke_zungbr.c \
	lapacke/src/lapacke_zungbr_work.c \
	lapacke/src/lapacke_zunghr.c \
	lapacke/src/lapacke_zunghr_work.c \
	lapacke/src/lapacke_zunglq.c \
	lapacke/src/lapacke_zunglq_work.c \
	lapacke/src/lapacke_zungql.c \
	lapacke/src/lapacke_zungql_work.c \
	lapacke/src/lapacke_zungqr.c \
	lapacke/src/lapacke_zungqr_work.c \
	lapacke/src/lapacke_zungrq.c \
	lapacke/src/lapacke_zungrq_work.c \
	lapacke/src/lapacke_zungtr.c \
	lapacke/src/lapacke_zungtr_work.c \
	lapacke/src/lapacke_zunmbr.c \
	lapacke/src/lapacke_zunmbr_work.c \
	lapacke/src/lapacke_zunmhr.c \
	lapacke/src/lapacke_zunmhr_work.c \
	lapacke/src/lapacke_zunmlq.c \
	lapacke/src/lapacke_zunmlq_work.c \
	lapacke/src/lapacke_zunmql.c \
	lapacke/src/lapacke_zunmql_work.c \
	lapacke/src/lapacke_zunmqr.c \
	lapacke/src/lapacke_zunmqr_work.c \
	lapacke/src/lapacke_zunmrq.c \
	lapacke/src/lapacke_zunmrq_work.c \
	lapacke/src/lapacke_zunmrz.c \
	lapacke/src/lapacke_zunmrz_work.c \
	lapacke/src/lapacke_zunmtr.c \
	lapacke/src/lapacke_zunmtr_work.c \
	lapacke/src/lapacke_zupgtr.c \
	lapacke/src/lapacke_zupgtr_work.c \
	lapacke/src/lapacke_zupmtr.c \
	lapacke/src/lapacke_zupmtr_work.c \
	lapacke/src/lapacke_zsyr.c \
	lapacke/src/lapacke_csyr.c \
	lapacke/src/lapacke_zsyr_work.c \
	lapacke/src/lapacke_csyr_work.c \
	lapacke/src/lapacke_ilaver.c

# To be included only when using XBLAS.
LAPACKE_SRCX_SOURCES = \
	lapacke/src/lapacke_cgbrfsx.c	\
	lapacke/src/lapacke_cporfsx.c	\
	lapacke/src/lapacke_dgerfsx.c	\
	lapacke/src/lapacke_sgbrfsx.c	\
	lapacke/src/lapacke_ssyrfsx.c	\
	lapacke/src/lapacke_zherfsx.c	\
	\
	lapacke/src/lapacke_cgbrfsx_work.c	\
	lapacke/src/lapacke_cporfsx_work.c	\
	lapacke/src/lapacke_dgerfsx_work.c	\
	lapacke/src/lapacke_sgbrfsx_work.c	\
	lapacke/src/lapacke_ssyrfsx_work.c	\
	lapacke/src/lapacke_zherfsx_work.c	\
	\
	lapacke/src/lapacke_cgerfsx.c	\
	lapacke/src/lapacke_csyrfsx.c	\
	lapacke/src/lapacke_dporfsx.c	\
	lapacke/src/lapacke_sgerfsx.c	\
	lapacke/src/lapacke_zgbrfsx.c	\
	lapacke/src/lapacke_zporfsx.c	\
	\
	lapacke/src/lapacke_cgerfsx_work.c	\
	lapacke/src/lapacke_csyrfsx_work.c	\
	lapacke/src/lapacke_dporfsx_work.c	\
	lapacke/src/lapacke_sgerfsx_work.c	\
	lapacke/src/lapacke_zgbrfsx_work.c	\
	lapacke/src/lapacke_zporfsx_work.c	\
	\
	lapacke/src/lapacke_cherfsx.c	\
	lapacke/src/lapacke_dgbrfsx.c	\
	lapacke/src/lapacke_dsyrfsx.c	\
	lapacke/src/lapacke_sporfsx.c	\
	lapacke/src/lapacke_zgerfsx.c	\
	lapacke/src/lapacke_zsyrfsx.c	\
	\
	lapacke/src/lapacke_cherfsx_work.c	\
	lapacke/src/lapacke_dgbrfsx_work.c	\
	lapacke/src/lapacke_dsyrfsx_work.c	\
	lapacke/src/lapacke_sporfsx_work.c	\
	lapacke/src/lapacke_zgerfsx_work.c	\
	lapacke/src/lapacke_zsyrfsx_work.c	\
	\
	lapacke/src/lapacke_cgbsvxx.c	\
	lapacke/src/lapacke_cposvxx.c	\
	lapacke/src/lapacke_dgesvxx.c	\
	lapacke/src/lapacke_sgbsvxx.c	\
	lapacke/src/lapacke_ssysvxx.c	\
	lapacke/src/lapacke_zhesvxx.c	\
	\
	lapacke/src/lapacke_cgbsvxx_work.c	\
	lapacke/src/lapacke_cposvxx_work.c	\
	lapacke/src/lapacke_dgesvxx_work.c	\
	lapacke/src/lapacke_sgbsvxx_work.c	\
	lapacke/src/lapacke_ssysvxx_work.c	\
	lapacke/src/lapacke_zhesvxx_work.c	\
	\
	lapacke/src/lapacke_cgesvxx.c	\
	lapacke/src/lapacke_csysvxx.c	\
	lapacke/src/lapacke_dposvxx.c	\
	lapacke/src/lapacke_sgesvxx.c	\
	lapacke/src/lapacke_zgbsvxx.c	\
	lapacke/src/lapacke_zposvxx.c	\
	\
	lapacke/src/lapacke_cgesvxx_work.c	\
	lapacke/src/lapacke_csysvxx_work.c	\
	lapacke/src/lapacke_dposvxx_work.c	\
	lapacke/src/lapacke_sgesvxx_work.c	\
	lapacke/src/lapacke_zgbsvxx_work.c	\
	lapacke/src/lapacke_zposvxx_work.c	\
	\
	lapacke/src/lapacke_chesvxx.c	\
	lapacke/src/lapacke_dgbsvxx.c	\
	lapacke/src/lapacke_dsysvxx.c	\
	lapacke/src/lapacke_sposvxx.c	\
	lapacke/src/lapacke_zgesvxx.c	\
	lapacke/src/lapacke_zsysvxx.c	\
	\
	lapacke/src/lapacke_chesvxx_work.c	\
	lapacke/src/lapacke_dgbsvxx_work.c	\
	lapacke/src/lapacke_dsysvxx_work.c	\
	lapacke/src/lapacke_sposvxx_work.c	\
	lapacke/src/lapacke_zgesvxx_work.c	\
	lapacke/src/lapacke_zsysvxx_work.c

LAPACKE_MATGEN_SOURCES = \
	lapacke/src/lapacke_clatms.c \
	lapacke/src/lapacke_clatms_work.c \
	lapacke/src/lapacke_dlatms.c \
	lapacke/src/lapacke_dlatms_work.c \
	lapacke/src/lapacke_slatms.c \
	lapacke/src/lapacke_slatms_work.c \
	lapacke/src/lapacke_zlatms.c \
	lapacke/src/lapacke_zlatms_work.c \
	lapacke/src/lapacke_clagge.c \
	lapacke/src/lapacke_clagge_work.c \
	lapacke/src/lapacke_dlagge.c \
	lapacke/src/lapacke_dlagge_work.c \
	lapacke/src/lapacke_slagge.c \
	lapacke/src/lapacke_slagge_work.c \
	lapacke/src/lapacke_zlagge.c \
	lapacke/src/lapacke_zlagge_work.c \
	lapacke/src/lapacke_claghe.c \
	lapacke/src/lapacke_claghe_work.c \
	lapacke/src/lapacke_zlaghe.c \
	lapacke/src/lapacke_zlaghe_work.c \
	lapacke/src/lapacke_clagsy.c \
	lapacke/src/lapacke_clagsy_work.c \
	lapacke/src/lapacke_dlagsy.c \
	lapacke/src/lapacke_dlagsy_work.c \
	lapacke/src/lapacke_slagsy.c \
	lapacke/src/lapacke_slagsy_work.c \
	lapacke/src/lapacke_zlagsy.c \
	lapacke/src/lapacke_zlagsy_work.c

LAPACKE_UTILS_SOURCES = \
	lapacke/utils/lapacke_cgb_nancheck.c \
	lapacke/utils/lapacke_cgb_trans.c \
	lapacke/utils/lapacke_cge_nancheck.c \
	lapacke/utils/lapacke_cge_trans.c \
	lapacke/utils/lapacke_cgg_nancheck.c \
	lapacke/utils/lapacke_cgg_trans.c \
	lapacke/utils/lapacke_cgt_nancheck.c \
	lapacke/utils/lapacke_chb_nancheck.c \
	lapacke/utils/lapacke_chb_trans.c \
	lapacke/utils/lapacke_che_nancheck.c \
	lapacke/utils/lapacke_che_trans.c \
	lapacke/utils/lapacke_chp_nancheck.c \
	lapacke/utils/lapacke_chp_trans.c \
	lapacke/utils/lapacke_chs_nancheck.c \
	lapacke/utils/lapacke_chs_trans.c \
	lapacke/utils/lapacke_c_nancheck.c \
	lapacke/utils/lapacke_cpb_nancheck.c \
	lapacke/utils/lapacke_cpb_trans.c \
	lapacke/utils/lapacke_cpf_nancheck.c \
	lapacke/utils/lapacke_cpf_trans.c \
	lapacke/utils/lapacke_cpo_nancheck.c \
	lapacke/utils/lapacke_cpo_trans.c \
	lapacke/utils/lapacke_cpp_nancheck.c \
	lapacke/utils/lapacke_cpp_trans.c \
	lapacke/utils/lapacke_cpt_nancheck.c \
	lapacke/utils/lapacke_csp_nancheck.c \
	lapacke/utils/lapacke_csp_trans.c \
	lapacke/utils/lapacke_cst_nancheck.c \
	lapacke/utils/lapacke_csy_nancheck.c \
	lapacke/utils/lapacke_csy_trans.c \
	lapacke/utils/lapacke_ctb_nancheck.c \
	lapacke/utils/lapacke_ctb_trans.c \
	lapacke/utils/lapacke_ctf_nancheck.c \
	lapacke/utils/lapacke_ctf_trans.c \
	lapacke/utils/lapacke_ctp_nancheck.c \
	lapacke/utils/lapacke_ctp_trans.c \
	lapacke/utils/lapacke_ctr_nancheck.c \
	lapacke/utils/lapacke_ctr_trans.c \
	lapacke/utils/lapacke_dgb_nancheck.c \
	lapacke/utils/lapacke_dgb_trans.c \
	lapacke/utils/lapacke_dge_nancheck.c \
	lapacke/utils/lapacke_dge_trans.c \
	lapacke/utils/lapacke_dgg_nancheck.c \
	lapacke/utils/lapacke_dgg_trans.c \
	lapacke/utils/lapacke_dgt_nancheck.c \
	lapacke/utils/lapacke_dhs_nancheck.c \
	lapacke/utils/lapacke_dhs_trans.c \
	lapacke/utils/lapacke_d_nancheck.c \
	lapacke/utils/lapacke_dpb_nancheck.c \
	lapacke/utils/lapacke_dpb_trans.c \
	lapacke/utils/lapacke_dpf_nancheck.c \
	lapacke/utils/lapacke_dpf_trans.c \
	lapacke/utils/lapacke_dpo_nancheck.c \
	lapacke/utils/lapacke_dpo_trans.c \
	lapacke/utils/lapacke_dpp_nancheck.c \
	lapacke/utils/lapacke_dpp_trans.c \
	lapacke/utils/lapacke_dpt_nancheck.c \
	lapacke/utils/lapacke_dsb_nancheck.c \
	lapacke/utils/lapacke_dsb_trans.c \
	lapacke/utils/lapacke_dsp_nancheck.c \
	lapacke/utils/lapacke_dsp_trans.c \
	lapacke/utils/lapacke_dst_nancheck.c \
	lapacke/utils/lapacke_dsy_nancheck.c \
	lapacke/utils/lapacke_dsy_trans.c \
	lapacke/utils/lapacke_dtb_nancheck.c \
	lapacke/utils/lapacke_dtb_trans.c \
	lapacke/utils/lapacke_dtf_nancheck.c \
	lapacke/utils/lapacke_dtf_trans.c \
	lapacke/utils/lapacke_dtp_nancheck.c \
	lapacke/utils/lapacke_dtp_trans.c \
	lapacke/utils/lapacke_dtr_nancheck.c \
	lapacke/utils/lapacke_dtr_trans.c \
	lapacke/utils/lapacke_lsame.c \
	lapacke/utils/lapacke_sgb_nancheck.c \
	lapacke/utils/lapacke_sgb_trans.c \
	lapacke/utils/lapacke_sge_nancheck.c \
	lapacke/utils/lapacke_sge_trans.c \
	lapacke/utils/lapacke_sgg_nancheck.c \
	lapacke/utils/lapacke_sgg_trans.c \
	lapacke/utils/lapacke_sgt_nancheck.c \
	lapacke/utils/lapacke_shs_nancheck.c \
	lapacke/utils/lapacke_shs_trans.c \
	lapacke/utils/lapacke_s_nancheck.c \
	lapacke/utils/lapacke_spb_nancheck.c \
	lapacke/utils/lapacke_spb_trans.c \
	lapacke/utils/lapacke_spf_nancheck.c \
	lapacke/utils/lapacke_spf_trans.c \
	lapacke/utils/lapacke_spo_nancheck.c \
	lapacke/utils/lapacke_spo_trans.c \
	lapacke/utils/lapacke_spp_nancheck.c \
	lapacke/utils/lapacke_spp_trans.c \
	lapacke/utils/lapacke_spt_nancheck.c \
	lapacke/utils/lapacke_ssb_nancheck.c \
	lapacke/utils/lapacke_ssb_trans.c \
	lapacke/utils/lapacke_ssp_nancheck.c \
	lapacke/utils/lapacke_ssp_trans.c \
	lapacke/utils/lapacke_sst_nancheck.c \
	lapacke/utils/lapacke_ssy_nancheck.c \
	lapacke/utils/lapacke_ssy_trans.c \
	lapacke/utils/lapacke_stb_nancheck.c \
	lapacke/utils/lapacke_stb_trans.c \
	lapacke/utils/lapacke_stf_nancheck.c \
	lapacke/utils/lapacke_stf_trans.c \
	lapacke/utils/lapacke_stp_nancheck.c \
	lapacke/utils/lapacke_stp_trans.c \
	lapacke/utils/lapacke_str_nancheck.c \
	lapacke/utils/lapacke_str_trans.c \
	lapacke/utils/lapacke_xerbla.c \
	lapacke/utils/lapacke_zgb_nancheck.c \
	lapacke/utils/lapacke_zgb_trans.c \
	lapacke/utils/lapacke_zge_nancheck.c \
	lapacke/utils/lapacke_zge_trans.c \
	lapacke/utils/lapacke_zgg_nancheck.c \
	lapacke/utils/lapacke_zgg_trans.c \
	lapacke/utils/lapacke_zgt_nancheck.c \
	lapacke/utils/lapacke_zhb_nancheck.c \
	lapacke/utils/lapacke_zhb_trans.c \
	lapacke/utils/lapacke_zhe_nancheck.c \
	lapacke/utils/lapacke_zhe_trans.c \
	lapacke/utils/lapacke_zhp_nancheck.c \
	lapacke/utils/lapacke_zhp_trans.c \
	lapacke/utils/lapacke_zhs_nancheck.c \
	lapacke/utils/lapacke_zhs_trans.c \
	lapacke/utils/lapacke_z_nancheck.c \
	lapacke/utils/lapacke_zpb_nancheck.c \
	lapacke/utils/lapacke_zpb_trans.c \
	lapacke/utils/lapacke_zpf_nancheck.c \
	lapacke/utils/lapacke_zpf_trans.c \
	lapacke/utils/lapacke_zpo_nancheck.c \
	lapacke/utils/lapacke_zpo_trans.c \
	lapacke/utils/lapacke_zpp_nancheck.c \
	lapacke/utils/lapacke_zpp_trans.c \
	lapacke/utils/lapacke_zpt_nancheck.c \
	lapacke/utils/lapacke_zsp_nancheck.c \
	lapacke/utils/lapacke_zsp_trans.c \
	lapacke/utils/lapacke_zst_nancheck.c \
	lapacke/utils/lapacke_zsy_nancheck.c \
	lapacke/utils/lapacke_zsy_trans.c \
	lapacke/utils/lapacke_ztb_nancheck.c \
	lapacke/utils/lapacke_ztb_trans.c \
	lapacke/utils/lapacke_ztf_nancheck.c \
	lapacke/utils/lapacke_ztf_trans.c \
	lapacke/utils/lapacke_ztp_nancheck.c \
	lapacke/utils/lapacke_ztp_trans.c \
	lapacke/utils/lapacke_ztr_nancheck.c \
	lapacke/utils/lapacke_ztr_trans.c \
	lapacke/utils/lapacke_make_complex_float.c \
	lapacke/utils/lapacke_make_complex_double.c

## --------------------------------------------------------------------
## Library.
## --------------------------------------------------------------------

liblapacke_la_LDFLAGS	= -version-info 1:0:0
liblapacke_la_LIBADD	= liblapack.la libtmglib.la
liblapacke_la_SOURCES	= $(LAPACKE_SRC_SOURCES) $(LAPACKE_MATGEN_SOURCES) $(LAPACKE_UTILS_SOURCES)
if USEXBLAS
liblapacke_la_SOURCES	+= $(LAPACKE_SRCX_SOURCES)
else

endif

#page
#### manual pages

dist_man_MANS = \
	doc/man/man3/BLAS_SRC_lsame.f.3		\
	doc/man/man3/BLAS_SRC_xerbla_array.f.3	\
	doc/man/man3/BLAS_SRC_xerbla.f.3	\
	doc/man/man3/caxpy.3			\
	doc/man/man3/caxpy.f.3			\
	doc/man/man3/cbbcsd.3			\
	doc/man/man3/cbbcsd.f.3			\
	doc/man/man3/cbdsqr.3			\
	doc/man/man3/cbdsqr.f.3			\
	doc/man/man3/ccopy.3			\
	doc/man/man3/ccopy.f.3			\
	doc/man/man3/cdotc.3			\
	doc/man/man3/cdotc.f.3			\
	doc/man/man3/cdotu.3			\
	doc/man/man3/cdotu.f.3			\
	doc/man/man3/cgbbrd.3			\
	doc/man/man3/cgbbrd.f.3			\
	doc/man/man3/cgbcon.3			\
	doc/man/man3/cgbcon.f.3			\
	doc/man/man3/cgbequ.3			\
	doc/man/man3/cgbequb.3			\
	doc/man/man3/cgbequb.f.3		\
	doc/man/man3/cgbequ.f.3			\
	doc/man/man3/cgbmv.3			\
	doc/man/man3/cgbmv.f.3			\
	doc/man/man3/cgbrfs.3			\
	doc/man/man3/cgbrfs.f.3			\
	doc/man/man3/cgbrfsx.3			\
	doc/man/man3/cgbrfsx.f.3		\
	doc/man/man3/cgbsv.3			\
	doc/man/man3/cgbsv.f.3			\
	doc/man/man3/cgbsvx.3			\
	doc/man/man3/cgbsvx.f.3			\
	doc/man/man3/cgbsvxx.3			\
	doc/man/man3/cgbsvxx.f.3		\
	doc/man/man3/cgbtf2.3			\
	doc/man/man3/cgbtf2.f.3			\
	doc/man/man3/cgbtrf.3			\
	doc/man/man3/cgbtrf.f.3			\
	doc/man/man3/cgbtrs.3			\
	doc/man/man3/cgbtrs.f.3			\
	doc/man/man3/cgebak.3			\
	doc/man/man3/cgebak.f.3			\
	doc/man/man3/cgebal.3			\
	doc/man/man3/cgebal.f.3			\
	doc/man/man3/cgebd2.3			\
	doc/man/man3/cgebd2.f.3			\
	doc/man/man3/cgebrd.3			\
	doc/man/man3/cgebrd.f.3			\
	doc/man/man3/cgecon.3			\
	doc/man/man3/cgecon.f.3			\
	doc/man/man3/cgeequ.3			\
	doc/man/man3/cgeequb.3			\
	doc/man/man3/cgeequb.f.3		\
	doc/man/man3/cgeequ.f.3			\
	doc/man/man3/cgees.3			\
	doc/man/man3/cgees.f.3			\
	doc/man/man3/cgeesx.3			\
	doc/man/man3/cgeesx.f.3			\
	doc/man/man3/cgeev.3			\
	doc/man/man3/cgeev.f.3			\
	doc/man/man3/cgeevx.3			\
	doc/man/man3/cgeevx.f.3			\
	doc/man/man3/cgegs.3			\
	doc/man/man3/cgegs.f.3			\
	doc/man/man3/cgegv.3			\
	doc/man/man3/cgegv.f.3			\
	doc/man/man3/cgehd2.3			\
	doc/man/man3/cgehd2.f.3			\
	doc/man/man3/cgehrd.3			\
	doc/man/man3/cgehrd.f.3			\
	doc/man/man3/cgelq2.3			\
	doc/man/man3/cgelq2.f.3			\
	doc/man/man3/cgelqf.3			\
	doc/man/man3/cgelqf.f.3			\
	doc/man/man3/cgels.3			\
	doc/man/man3/cgelsd.3			\
	doc/man/man3/cgelsd.f.3			\
	doc/man/man3/cgels.f.3			\
	doc/man/man3/cgelss.3			\
	doc/man/man3/cgelss.f.3			\
	doc/man/man3/cgelsx.3			\
	doc/man/man3/cgelsx.f.3			\
	doc/man/man3/cgelsy.3			\
	doc/man/man3/cgelsy.f.3			\
	doc/man/man3/cgemm.3			\
	doc/man/man3/cgemm.f.3			\
	doc/man/man3/cgemqrt.3			\
	doc/man/man3/cgemqrt.f.3		\
	doc/man/man3/cgemv.3			\
	doc/man/man3/cgemv.f.3			\
	doc/man/man3/cgeql2.3			\
	doc/man/man3/cgeql2.f.3			\
	doc/man/man3/cgeqlf.3			\
	doc/man/man3/cgeqlf.f.3			\
	doc/man/man3/cgeqp3.3			\
	doc/man/man3/cgeqp3.f.3			\
	doc/man/man3/cgeqpf.3			\
	doc/man/man3/cgeqpf.f.3			\
	doc/man/man3/cgeqr2.3			\
	doc/man/man3/cgeqr2.f.3			\
	doc/man/man3/cgeqr2p.3			\
	doc/man/man3/cgeqr2p.f.3		\
	doc/man/man3/cgeqrf.3			\
	doc/man/man3/cgeqrf.f.3			\
	doc/man/man3/cgeqrfp.3			\
	doc/man/man3/cgeqrfp.f.3		\
	doc/man/man3/cgeqrt2.3			\
	doc/man/man3/cgeqrt2.f.3		\
	doc/man/man3/cgeqrt.3			\
	doc/man/man3/cgeqrt3.3			\
	doc/man/man3/cgeqrt3.f.3		\
	doc/man/man3/cgeqrt.f.3			\
	doc/man/man3/cgerc.3			\
	doc/man/man3/cgerc.f.3			\
	doc/man/man3/cgerfs.3			\
	doc/man/man3/cgerfs.f.3			\
	doc/man/man3/cgerfsx.3			\
	doc/man/man3/cgerfsx.f.3		\
	doc/man/man3/cgerq2.3			\
	doc/man/man3/cgerq2.f.3			\
	doc/man/man3/cgerqf.3			\
	doc/man/man3/cgerqf.f.3			\
	doc/man/man3/cgeru.3			\
	doc/man/man3/cgeru.f.3			\
	doc/man/man3/cgesc2.3			\
	doc/man/man3/cgesc2.f.3			\
	doc/man/man3/cgesdd.3			\
	doc/man/man3/cgesdd.f.3			\
	doc/man/man3/cgesv.3			\
	doc/man/man3/cgesvd.3			\
	doc/man/man3/cgesvd.f.3			\
	doc/man/man3/cgesv.f.3			\
	doc/man/man3/cgesvx.3			\
	doc/man/man3/cgesvx.f.3			\
	doc/man/man3/cgesvxx.3			\
	doc/man/man3/cgesvxx.f.3		\
	doc/man/man3/cgetc2.3			\
	doc/man/man3/cgetc2.f.3			\
	doc/man/man3/cgetf2.3			\
	doc/man/man3/cgetf2.f.3			\
	doc/man/man3/cgetrf.3			\
	doc/man/man3/cgetrf.f.3			\
	doc/man/man3/cgetri.3			\
	doc/man/man3/cgetri.f.3			\
	doc/man/man3/cgetrs.3			\
	doc/man/man3/cgetrs.f.3			\
	doc/man/man3/cggbak.3			\
	doc/man/man3/cggbak.f.3			\
	doc/man/man3/cggbal.3			\
	doc/man/man3/cggbal.f.3			\
	doc/man/man3/cgges.3			\
	doc/man/man3/cgges.f.3			\
	doc/man/man3/cggesx.3			\
	doc/man/man3/cggesx.f.3			\
	doc/man/man3/cggev.3			\
	doc/man/man3/cggev.f.3			\
	doc/man/man3/cggevx.3			\
	doc/man/man3/cggevx.f.3			\
	doc/man/man3/cggglm.3			\
	doc/man/man3/cggglm.f.3			\
	doc/man/man3/cgghrd.3			\
	doc/man/man3/cgghrd.f.3			\
	doc/man/man3/cgglse.3			\
	doc/man/man3/cgglse.f.3			\
	doc/man/man3/cggqrf.3			\
	doc/man/man3/cggqrf.f.3			\
	doc/man/man3/cggrqf.3			\
	doc/man/man3/cggrqf.f.3			\
	doc/man/man3/cggsvd.3			\
	doc/man/man3/cggsvd.f.3			\
	doc/man/man3/cggsvp.3			\
	doc/man/man3/cggsvp.f.3			\
	doc/man/man3/cgtcon.3			\
	doc/man/man3/cgtcon.f.3			\
	doc/man/man3/cgtrfs.3			\
	doc/man/man3/cgtrfs.f.3			\
	doc/man/man3/cgtsv.3			\
	doc/man/man3/cgtsv.f.3			\
	doc/man/man3/cgtsvx.3			\
	doc/man/man3/cgtsvx.f.3			\
	doc/man/man3/cgttrf.3			\
	doc/man/man3/cgttrf.f.3			\
	doc/man/man3/cgttrs.3			\
	doc/man/man3/cgttrs.f.3			\
	doc/man/man3/cgtts2.3			\
	doc/man/man3/cgtts2.f.3			\
	doc/man/man3/chbev.3			\
	doc/man/man3/chbevd.3			\
	doc/man/man3/chbevd.f.3			\
	doc/man/man3/chbev.f.3			\
	doc/man/man3/chbevx.3			\
	doc/man/man3/chbevx.f.3			\
	doc/man/man3/chbgst.3			\
	doc/man/man3/chbgst.f.3			\
	doc/man/man3/chbgv.3			\
	doc/man/man3/chbgvd.3			\
	doc/man/man3/chbgvd.f.3			\
	doc/man/man3/chbgv.f.3			\
	doc/man/man3/chbgvx.3			\
	doc/man/man3/chbgvx.f.3			\
	doc/man/man3/chbmv.3			\
	doc/man/man3/chbmv.f.3			\
	doc/man/man3/chbtrd.3			\
	doc/man/man3/chbtrd.f.3			\
	doc/man/man3/checon.3			\
	doc/man/man3/checon.f.3			\
	doc/man/man3/checon_rook.3		\
	doc/man/man3/checon_rook.f.3		\
	doc/man/man3/cheequb.3			\
	doc/man/man3/cheequb.f.3		\
	doc/man/man3/cheev.3			\
	doc/man/man3/cheevd.3			\
	doc/man/man3/cheevd.f.3			\
	doc/man/man3/cheev.f.3			\
	doc/man/man3/cheevr.3			\
	doc/man/man3/cheevr.f.3			\
	doc/man/man3/cheevx.3			\
	doc/man/man3/cheevx.f.3			\
	doc/man/man3/chegs2.3			\
	doc/man/man3/chegs2.f.3			\
	doc/man/man3/chegst.3			\
	doc/man/man3/chegst.f.3			\
	doc/man/man3/chegv.3			\
	doc/man/man3/chegvd.3			\
	doc/man/man3/chegvd.f.3			\
	doc/man/man3/chegv.f.3			\
	doc/man/man3/chegvx.3			\
	doc/man/man3/chegvx.f.3			\
	doc/man/man3/chemm.3			\
	doc/man/man3/chemm.f.3			\
	doc/man/man3/chemv.3			\
	doc/man/man3/chemv.f.3			\
	doc/man/man3/cher2.3			\
	doc/man/man3/cher2.f.3			\
	doc/man/man3/cher2k.3			\
	doc/man/man3/cher2k.f.3			\
	doc/man/man3/cher.3			\
	doc/man/man3/cher.f.3			\
	doc/man/man3/cherfs.3			\
	doc/man/man3/cherfs.f.3			\
	doc/man/man3/cherfsx.3			\
	doc/man/man3/cherfsx.f.3		\
	doc/man/man3/cherk.3			\
	doc/man/man3/cherk.f.3			\
	doc/man/man3/chesv.3			\
	doc/man/man3/chesv.f.3			\
	doc/man/man3/chesv_rook.3		\
	doc/man/man3/chesv_rook.f.3		\
	doc/man/man3/chesvx.3			\
	doc/man/man3/chesvx.f.3			\
	doc/man/man3/chesvxx.3			\
	doc/man/man3/chesvxx.f.3		\
	doc/man/man3/cheswapr.3			\
	doc/man/man3/cheswapr.f.3		\
	doc/man/man3/chetd2.3			\
	doc/man/man3/chetd2.f.3			\
	doc/man/man3/chetf2.3			\
	doc/man/man3/chetf2.f.3			\
	doc/man/man3/chetf2_rook.3		\
	doc/man/man3/chetf2_rook.f.3		\
	doc/man/man3/chetrd.3			\
	doc/man/man3/chetrd.f.3			\
	doc/man/man3/chetrf.3			\
	doc/man/man3/chetrf.f.3			\
	doc/man/man3/chetrf_rook.3		\
	doc/man/man3/chetrf_rook.f.3		\
	doc/man/man3/chetri2.3			\
	doc/man/man3/chetri2.f.3		\
	doc/man/man3/chetri2x.3			\
	doc/man/man3/chetri2x.f.3		\
	doc/man/man3/chetri.3			\
	doc/man/man3/chetri.f.3			\
	doc/man/man3/chetri_rook.3		\
	doc/man/man3/chetri_rook.f.3		\
	doc/man/man3/chetrs2.3			\
	doc/man/man3/chetrs2.f.3		\
	doc/man/man3/chetrs.3			\
	doc/man/man3/chetrs.f.3			\
	doc/man/man3/chetrs_rook.3		\
	doc/man/man3/chetrs_rook.f.3		\
	doc/man/man3/chfrk.3			\
	doc/man/man3/chfrk.f.3			\
	doc/man/man3/chgeqz.3			\
	doc/man/man3/chgeqz.f.3			\
	doc/man/man3/chla_transtype.3		\
	doc/man/man3/chla_transtype.f.3		\
	doc/man/man3/chpcon.3			\
	doc/man/man3/chpcon.f.3			\
	doc/man/man3/chpev.3			\
	doc/man/man3/chpevd.3			\
	doc/man/man3/chpevd.f.3			\
	doc/man/man3/chpev.f.3			\
	doc/man/man3/chpevx.3			\
	doc/man/man3/chpevx.f.3			\
	doc/man/man3/chpgst.3			\
	doc/man/man3/chpgst.f.3			\
	doc/man/man3/chpgv.3			\
	doc/man/man3/chpgvd.3			\
	doc/man/man3/chpgvd.f.3			\
	doc/man/man3/chpgv.f.3			\
	doc/man/man3/chpgvx.3			\
	doc/man/man3/chpgvx.f.3			\
	doc/man/man3/chpmv.3			\
	doc/man/man3/chpmv.f.3			\
	doc/man/man3/chpr2.3			\
	doc/man/man3/chpr2.f.3			\
	doc/man/man3/chpr.3			\
	doc/man/man3/chpr.f.3			\
	doc/man/man3/chprfs.3			\
	doc/man/man3/chprfs.f.3			\
	doc/man/man3/chpsv.3			\
	doc/man/man3/chpsv.f.3			\
	doc/man/man3/chpsvx.3			\
	doc/man/man3/chpsvx.f.3			\
	doc/man/man3/chptrd.3			\
	doc/man/man3/chptrd.f.3			\
	doc/man/man3/chptrf.3			\
	doc/man/man3/chptrf.f.3			\
	doc/man/man3/chptri.3			\
	doc/man/man3/chptri.f.3			\
	doc/man/man3/chptrs.3			\
	doc/man/man3/chptrs.f.3			\
	doc/man/man3/chsein.3			\
	doc/man/man3/chsein.f.3			\
	doc/man/man3/chseqr.3			\
	doc/man/man3/chseqr.f.3			\
	doc/man/man3/clabrd.3			\
	doc/man/man3/clabrd.f.3			\
	doc/man/man3/clacgv.3			\
	doc/man/man3/clacgv.f.3			\
	doc/man/man3/clacn2.3			\
	doc/man/man3/clacn2.f.3			\
	doc/man/man3/clacon.3			\
	doc/man/man3/clacon.f.3			\
	doc/man/man3/clacp2.3			\
	doc/man/man3/clacp2.f.3			\
	doc/man/man3/clacpy.3			\
	doc/man/man3/clacpy.f.3			\
	doc/man/man3/clacrm.3			\
	doc/man/man3/clacrm.f.3			\
	doc/man/man3/clacrt.3			\
	doc/man/man3/clacrt.f.3			\
	doc/man/man3/cladiv.3			\
	doc/man/man3/cladiv.f.3			\
	doc/man/man3/claed0.3			\
	doc/man/man3/claed0.f.3			\
	doc/man/man3/claed7.3			\
	doc/man/man3/claed7.f.3			\
	doc/man/man3/claed8.3			\
	doc/man/man3/claed8.f.3			\
	doc/man/man3/claein.3			\
	doc/man/man3/claein.f.3			\
	doc/man/man3/claesy.3			\
	doc/man/man3/claesy.f.3			\
	doc/man/man3/claev2.3			\
	doc/man/man3/claev2.f.3			\
	doc/man/man3/clag2z.3			\
	doc/man/man3/clag2z.f.3			\
	doc/man/man3/cla_gbamv.3		\
	doc/man/man3/cla_gbamv.f.3		\
	doc/man/man3/cla_gbrcond_c.3		\
	doc/man/man3/cla_gbrcond_c.f.3		\
	doc/man/man3/cla_gbrcond_x.3		\
	doc/man/man3/cla_gbrcond_x.f.3		\
	doc/man/man3/cla_gbrfsx_extended.3	\
	doc/man/man3/cla_gbrfsx_extended.f.3	\
	doc/man/man3/cla_gbrpvgrw.3		\
	doc/man/man3/cla_gbrpvgrw.f.3		\
	doc/man/man3/cla_geamv.3		\
	doc/man/man3/cla_geamv.f.3		\
	doc/man/man3/cla_gercond_c.3		\
	doc/man/man3/cla_gercond_c.f.3		\
	doc/man/man3/cla_gercond_x.3		\
	doc/man/man3/cla_gercond_x.f.3		\
	doc/man/man3/cla_gerfsx_extended.3	\
	doc/man/man3/cla_gerfsx_extended.f.3	\
	doc/man/man3/cla_gerpvgrw.3		\
	doc/man/man3/cla_gerpvgrw.f.3		\
	doc/man/man3/clags2.3			\
	doc/man/man3/clags2.f.3			\
	doc/man/man3/clagtm.3			\
	doc/man/man3/clagtm.f.3			\
	doc/man/man3/cla_heamv.3		\
	doc/man/man3/cla_heamv.f.3		\
	doc/man/man3/clahef.3			\
	doc/man/man3/clahef.f.3			\
	doc/man/man3/clahef_rook.3		\
	doc/man/man3/clahef_rook.f.3		\
	doc/man/man3/cla_hercond_c.3		\
	doc/man/man3/cla_hercond_c.f.3		\
	doc/man/man3/cla_hercond_x.3		\
	doc/man/man3/cla_hercond_x.f.3		\
	doc/man/man3/cla_herfsx_extended.3	\
	doc/man/man3/cla_herfsx_extended.f.3	\
	doc/man/man3/cla_herpvgrw.3		\
	doc/man/man3/cla_herpvgrw.f.3		\
	doc/man/man3/clahqr.3			\
	doc/man/man3/clahqr.f.3			\
	doc/man/man3/clahr2.3			\
	doc/man/man3/clahr2.f.3			\
	doc/man/man3/clahrd.3			\
	doc/man/man3/clahrd.f.3			\
	doc/man/man3/claic1.3			\
	doc/man/man3/claic1.f.3			\
	doc/man/man3/cla_lin_berr.3		\
	doc/man/man3/cla_lin_berr.f.3		\
	doc/man/man3/clals0.3			\
	doc/man/man3/clals0.f.3			\
	doc/man/man3/clalsa.3			\
	doc/man/man3/clalsa.f.3			\
	doc/man/man3/clalsd.3			\
	doc/man/man3/clalsd.f.3			\
	doc/man/man3/clangb.3			\
	doc/man/man3/clangb.f.3			\
	doc/man/man3/clange.3			\
	doc/man/man3/clange.f.3			\
	doc/man/man3/clangt.3			\
	doc/man/man3/clangt.f.3			\
	doc/man/man3/clanhb.3			\
	doc/man/man3/clanhb.f.3			\
	doc/man/man3/clanhe.3			\
	doc/man/man3/clanhe.f.3			\
	doc/man/man3/clanhf.3			\
	doc/man/man3/clanhf.f.3			\
	doc/man/man3/clanhp.3			\
	doc/man/man3/clanhp.f.3			\
	doc/man/man3/clanhs.3			\
	doc/man/man3/clanhs.f.3			\
	doc/man/man3/clanht.3			\
	doc/man/man3/clanht.f.3			\
	doc/man/man3/clansb.3			\
	doc/man/man3/clansb.f.3			\
	doc/man/man3/clansp.3			\
	doc/man/man3/clansp.f.3			\
	doc/man/man3/clansy.3			\
	doc/man/man3/clansy.f.3			\
	doc/man/man3/clantb.3			\
	doc/man/man3/clantb.f.3			\
	doc/man/man3/clantp.3			\
	doc/man/man3/clantp.f.3			\
	doc/man/man3/clantr.3			\
	doc/man/man3/clantr.f.3			\
	doc/man/man3/clapll.3			\
	doc/man/man3/clapll.f.3			\
	doc/man/man3/clapmr.3			\
	doc/man/man3/clapmr.f.3			\
	doc/man/man3/clapmt.3			\
	doc/man/man3/clapmt.f.3			\
	doc/man/man3/cla_porcond_c.3		\
	doc/man/man3/cla_porcond_c.f.3		\
	doc/man/man3/cla_porcond_x.3		\
	doc/man/man3/cla_porcond_x.f.3		\
	doc/man/man3/cla_porfsx_extended.3	\
	doc/man/man3/cla_porfsx_extended.f.3	\
	doc/man/man3/cla_porpvgrw.3		\
	doc/man/man3/cla_porpvgrw.f.3		\
	doc/man/man3/claqgb.3			\
	doc/man/man3/claqgb.f.3			\
	doc/man/man3/claqge.3			\
	doc/man/man3/claqge.f.3			\
	doc/man/man3/claqhb.3			\
	doc/man/man3/claqhb.f.3			\
	doc/man/man3/claqhe.3			\
	doc/man/man3/claqhe.f.3			\
	doc/man/man3/claqhp.3			\
	doc/man/man3/claqhp.f.3			\
	doc/man/man3/claqp2.3			\
	doc/man/man3/claqp2.f.3			\
	doc/man/man3/claqps.3			\
	doc/man/man3/claqps.f.3			\
	doc/man/man3/claqr0.3			\
	doc/man/man3/claqr0.f.3			\
	doc/man/man3/claqr1.3			\
	doc/man/man3/claqr1.f.3			\
	doc/man/man3/claqr2.3			\
	doc/man/man3/claqr2.f.3			\
	doc/man/man3/claqr3.3			\
	doc/man/man3/claqr3.f.3			\
	doc/man/man3/claqr4.3			\
	doc/man/man3/claqr4.f.3			\
	doc/man/man3/claqr5.3			\
	doc/man/man3/claqr5.f.3			\
	doc/man/man3/claqsb.3			\
	doc/man/man3/claqsb.f.3			\
	doc/man/man3/claqsp.3			\
	doc/man/man3/claqsp.f.3			\
	doc/man/man3/claqsy.3			\
	doc/man/man3/claqsy.f.3			\
	doc/man/man3/clar1v.3			\
	doc/man/man3/clar1v.f.3			\
	doc/man/man3/clar2v.3			\
	doc/man/man3/clar2v.f.3			\
	doc/man/man3/clarcm.3			\
	doc/man/man3/clarcm.f.3			\
	doc/man/man3/clarf.3			\
	doc/man/man3/clarfb.3			\
	doc/man/man3/clarfb.f.3			\
	doc/man/man3/clarf.f.3			\
	doc/man/man3/clarfg.3			\
	doc/man/man3/clarfg.f.3			\
	doc/man/man3/clarfgp.3			\
	doc/man/man3/clarfgp.f.3		\
	doc/man/man3/clarft.3			\
	doc/man/man3/clarft.f.3			\
	doc/man/man3/clarfx.3			\
	doc/man/man3/clarfx.f.3			\
	doc/man/man3/clargv.3			\
	doc/man/man3/clargv.f.3			\
	doc/man/man3/clarnv.3			\
	doc/man/man3/clarnv.f.3			\
	doc/man/man3/clarrv.3			\
	doc/man/man3/clarrv.f.3			\
	doc/man/man3/clarscl2.3			\
	doc/man/man3/clarscl2.f.3		\
	doc/man/man3/clartg.3			\
	doc/man/man3/clartg.f.3			\
	doc/man/man3/clartv.3			\
	doc/man/man3/clartv.f.3			\
	doc/man/man3/clarz.3			\
	doc/man/man3/clarzb.3			\
	doc/man/man3/clarzb.f.3			\
	doc/man/man3/clarz.f.3			\
	doc/man/man3/clarzt.3			\
	doc/man/man3/clarzt.f.3			\
	doc/man/man3/clascl2.3			\
	doc/man/man3/clascl2.f.3		\
	doc/man/man3/clascl.3			\
	doc/man/man3/clascl.f.3			\
	doc/man/man3/claset.3			\
	doc/man/man3/claset.f.3			\
	doc/man/man3/clasr.3			\
	doc/man/man3/clasr.f.3			\
	doc/man/man3/classq.3			\
	doc/man/man3/classq.f.3			\
	doc/man/man3/claswp.3			\
	doc/man/man3/claswp.f.3			\
	doc/man/man3/cla_syamv.3		\
	doc/man/man3/cla_syamv.f.3		\
	doc/man/man3/clasyf.3			\
	doc/man/man3/clasyf.f.3			\
	doc/man/man3/clasyf_rook.3		\
	doc/man/man3/clasyf_rook.f.3		\
	doc/man/man3/cla_syrcond_c.3		\
	doc/man/man3/cla_syrcond_c.f.3		\
	doc/man/man3/cla_syrcond_x.3		\
	doc/man/man3/cla_syrcond_x.f.3		\
	doc/man/man3/cla_syrfsx_extended.3	\
	doc/man/man3/cla_syrfsx_extended.f.3	\
	doc/man/man3/cla_syrpvgrw.3		\
	doc/man/man3/cla_syrpvgrw.f.3		\
	doc/man/man3/clatbs.3			\
	doc/man/man3/clatbs.f.3			\
	doc/man/man3/clatdf.3			\
	doc/man/man3/clatdf.f.3			\
	doc/man/man3/clatps.3			\
	doc/man/man3/clatps.f.3			\
	doc/man/man3/clatrd.3			\
	doc/man/man3/clatrd.f.3			\
	doc/man/man3/clatrs.3			\
	doc/man/man3/clatrs.f.3			\
	doc/man/man3/clatrz.3			\
	doc/man/man3/clatrz.f.3			\
	doc/man/man3/clatzm.3			\
	doc/man/man3/clatzm.f.3			\
	doc/man/man3/clauu2.3			\
	doc/man/man3/clauu2.f.3			\
	doc/man/man3/clauum.3			\
	doc/man/man3/clauum.f.3			\
	doc/man/man3/cla_wwaddw.3		\
	doc/man/man3/cla_wwaddw.f.3		\
	doc/man/man3/cpbcon.3			\
	doc/man/man3/cpbcon.f.3			\
	doc/man/man3/cpbequ.3			\
	doc/man/man3/cpbequ.f.3			\
	doc/man/man3/cpbrfs.3			\
	doc/man/man3/cpbrfs.f.3			\
	doc/man/man3/cpbstf.3			\
	doc/man/man3/cpbstf.f.3			\
	doc/man/man3/cpbsv.3			\
	doc/man/man3/cpbsv.f.3			\
	doc/man/man3/cpbsvx.3			\
	doc/man/man3/cpbsvx.f.3			\
	doc/man/man3/cpbtf2.3			\
	doc/man/man3/cpbtf2.f.3			\
	doc/man/man3/cpbtrf.3			\
	doc/man/man3/cpbtrf.f.3			\
	doc/man/man3/cpbtrs.3			\
	doc/man/man3/cpbtrs.f.3			\
	doc/man/man3/cpftrf.3			\
	doc/man/man3/cpftrf.f.3			\
	doc/man/man3/cpftri.3			\
	doc/man/man3/cpftri.f.3			\
	doc/man/man3/cpftrs.3			\
	doc/man/man3/cpftrs.f.3			\
	doc/man/man3/cpocon.3			\
	doc/man/man3/cpocon.f.3			\
	doc/man/man3/cpoequ.3			\
	doc/man/man3/cpoequb.3			\
	doc/man/man3/cpoequb.f.3		\
	doc/man/man3/cpoequ.f.3			\
	doc/man/man3/cporfs.3			\
	doc/man/man3/cporfs.f.3			\
	doc/man/man3/cporfsx.3			\
	doc/man/man3/cporfsx.f.3		\
	doc/man/man3/cposv.3			\
	doc/man/man3/cposv.f.3			\
	doc/man/man3/cposvx.3			\
	doc/man/man3/cposvx.f.3			\
	doc/man/man3/cposvxx.3			\
	doc/man/man3/cposvxx.f.3		\
	doc/man/man3/cpotf2.3			\
	doc/man/man3/cpotf2.f.3			\
	doc/man/man3/cpotrf.3			\
	doc/man/man3/cpotrf.f.3			\
	doc/man/man3/cpotri.3			\
	doc/man/man3/cpotri.f.3			\
	doc/man/man3/cpotrs.3			\
	doc/man/man3/cpotrs.f.3			\
	doc/man/man3/cppcon.3			\
	doc/man/man3/cppcon.f.3			\
	doc/man/man3/cppequ.3			\
	doc/man/man3/cppequ.f.3			\
	doc/man/man3/cpprfs.3			\
	doc/man/man3/cpprfs.f.3			\
	doc/man/man3/cppsv.3			\
	doc/man/man3/cppsv.f.3			\
	doc/man/man3/cppsvx.3			\
	doc/man/man3/cppsvx.f.3			\
	doc/man/man3/cpptrf.3			\
	doc/man/man3/cpptrf.f.3			\
	doc/man/man3/cpptri.3			\
	doc/man/man3/cpptri.f.3			\
	doc/man/man3/cpptrs.3			\
	doc/man/man3/cpptrs.f.3			\
	doc/man/man3/cpstf2.3			\
	doc/man/man3/cpstf2.f.3			\
	doc/man/man3/cpstrf.3			\
	doc/man/man3/cpstrf.f.3			\
	doc/man/man3/cptcon.3			\
	doc/man/man3/cptcon.f.3			\
	doc/man/man3/cpteqr.3			\
	doc/man/man3/cpteqr.f.3			\
	doc/man/man3/cptrfs.3			\
	doc/man/man3/cptrfs.f.3			\
	doc/man/man3/cptsv.3			\
	doc/man/man3/cptsv.f.3			\
	doc/man/man3/cptsvx.3			\
	doc/man/man3/cptsvx.f.3			\
	doc/man/man3/cpttrf.3			\
	doc/man/man3/cpttrf.f.3			\
	doc/man/man3/cpttrs.3			\
	doc/man/man3/cpttrs.f.3			\
	doc/man/man3/cptts2.3			\
	doc/man/man3/cptts2.f.3			\
	doc/man/man3/crot.3			\
	doc/man/man3/crot.f.3			\
	doc/man/man3/crotg.3			\
	doc/man/man3/crotg.f.3			\
	doc/man/man3/cscal.3			\
	doc/man/man3/cscal.f.3			\
	doc/man/man3/cspcon.3			\
	doc/man/man3/cspcon.f.3			\
	doc/man/man3/cspmv.3			\
	doc/man/man3/cspmv.f.3			\
	doc/man/man3/cspr.3			\
	doc/man/man3/cspr.f.3			\
	doc/man/man3/csprfs.3			\
	doc/man/man3/csprfs.f.3			\
	doc/man/man3/cspsv.3			\
	doc/man/man3/cspsv.f.3			\
	doc/man/man3/cspsvx.3			\
	doc/man/man3/cspsvx.f.3			\
	doc/man/man3/csptrf.3			\
	doc/man/man3/csptrf.f.3			\
	doc/man/man3/csptri.3			\
	doc/man/man3/csptri.f.3			\
	doc/man/man3/csptrs.3			\
	doc/man/man3/csptrs.f.3			\
	doc/man/man3/csrot.3			\
	doc/man/man3/csrot.f.3			\
	doc/man/man3/csrscl.3			\
	doc/man/man3/csrscl.f.3			\
	doc/man/man3/csscal.3			\
	doc/man/man3/csscal.f.3			\
	doc/man/man3/cstedc.3			\
	doc/man/man3/cstedc.f.3			\
	doc/man/man3/cstegr.3			\
	doc/man/man3/cstegr.f.3			\
	doc/man/man3/cstein.3			\
	doc/man/man3/cstein.f.3			\
	doc/man/man3/cstemr.3			\
	doc/man/man3/cstemr.f.3			\
	doc/man/man3/csteqr.3			\
	doc/man/man3/csteqr.f.3			\
	doc/man/man3/cswap.3			\
	doc/man/man3/cswap.f.3			\
	doc/man/man3/csycon.3			\
	doc/man/man3/csycon.f.3			\
	doc/man/man3/csycon_rook.3		\
	doc/man/man3/csycon_rook.f.3		\
	doc/man/man3/csyconv.3			\
	doc/man/man3/csyconv.f.3		\
	doc/man/man3/csyequb.3			\
	doc/man/man3/csyequb.f.3		\
	doc/man/man3/csymm.3			\
	doc/man/man3/csymm.f.3			\
	doc/man/man3/csymv.3			\
	doc/man/man3/csymv.f.3			\
	doc/man/man3/csyr2k.3			\
	doc/man/man3/csyr2k.f.3			\
	doc/man/man3/csyr.3			\
	doc/man/man3/csyr.f.3			\
	doc/man/man3/csyrfs.3			\
	doc/man/man3/csyrfs.f.3			\
	doc/man/man3/csyrfsx.3			\
	doc/man/man3/csyrfsx.f.3		\
	doc/man/man3/csyrk.3			\
	doc/man/man3/csyrk.f.3			\
	doc/man/man3/csysv.3			\
	doc/man/man3/csysv.f.3			\
	doc/man/man3/csysv_rook.3		\
	doc/man/man3/csysv_rook.f.3		\
	doc/man/man3/csysvx.3			\
	doc/man/man3/csysvx.f.3			\
	doc/man/man3/csysvxx.3			\
	doc/man/man3/csysvxx.f.3		\
	doc/man/man3/csyswapr.3			\
	doc/man/man3/csyswapr.f.3		\
	doc/man/man3/csytf2.3			\
	doc/man/man3/csytf2.f.3			\
	doc/man/man3/csytf2_rook.3		\
	doc/man/man3/csytf2_rook.f.3		\
	doc/man/man3/csytrf.3			\
	doc/man/man3/csytrf.f.3			\
	doc/man/man3/csytrf_rook.3		\
	doc/man/man3/csytrf_rook.f.3		\
	doc/man/man3/csytri2.3			\
	doc/man/man3/csytri2.f.3		\
	doc/man/man3/csytri2x.3			\
	doc/man/man3/csytri2x.f.3		\
	doc/man/man3/csytri.3			\
	doc/man/man3/csytri.f.3			\
	doc/man/man3/csytri_rook.3		\
	doc/man/man3/csytri_rook.f.3		\
	doc/man/man3/csytrs2.3			\
	doc/man/man3/csytrs2.f.3		\
	doc/man/man3/csytrs.3			\
	doc/man/man3/csytrs.f.3			\
	doc/man/man3/csytrs_rook.3		\
	doc/man/man3/csytrs_rook.f.3		\
	doc/man/man3/ctbcon.3			\
	doc/man/man3/ctbcon.f.3			\
	doc/man/man3/ctbmv.3			\
	doc/man/man3/ctbmv.f.3			\
	doc/man/man3/ctbrfs.3			\
	doc/man/man3/ctbrfs.f.3			\
	doc/man/man3/ctbsv.3			\
	doc/man/man3/ctbsv.f.3			\
	doc/man/man3/ctbtrs.3			\
	doc/man/man3/ctbtrs.f.3			\
	doc/man/man3/ctfsm.3			\
	doc/man/man3/ctfsm.f.3			\
	doc/man/man3/ctftri.3			\
	doc/man/man3/ctftri.f.3			\
	doc/man/man3/ctfttp.3			\
	doc/man/man3/ctfttp.f.3			\
	doc/man/man3/ctfttr.3			\
	doc/man/man3/ctfttr.f.3			\
	doc/man/man3/ctgevc.3			\
	doc/man/man3/ctgevc.f.3			\
	doc/man/man3/ctgex2.3			\
	doc/man/man3/ctgex2.f.3			\
	doc/man/man3/ctgexc.3			\
	doc/man/man3/ctgexc.f.3			\
	doc/man/man3/ctgsen.3			\
	doc/man/man3/ctgsen.f.3			\
	doc/man/man3/ctgsja.3			\
	doc/man/man3/ctgsja.f.3			\
	doc/man/man3/ctgsna.3			\
	doc/man/man3/ctgsna.f.3			\
	doc/man/man3/ctgsy2.3			\
	doc/man/man3/ctgsy2.f.3			\
	doc/man/man3/ctgsyl.3			\
	doc/man/man3/ctgsyl.f.3			\
	doc/man/man3/ctpcon.3			\
	doc/man/man3/ctpcon.f.3			\
	doc/man/man3/ctpmqrt.3			\
	doc/man/man3/ctpmqrt.f.3		\
	doc/man/man3/ctpmv.3			\
	doc/man/man3/ctpmv.f.3			\
	doc/man/man3/ctpqrt2.3			\
	doc/man/man3/ctpqrt2.f.3		\
	doc/man/man3/ctpqrt.3			\
	doc/man/man3/ctpqrt.f.3			\
	doc/man/man3/ctprfb.3			\
	doc/man/man3/ctprfb.f.3			\
	doc/man/man3/ctprfs.3			\
	doc/man/man3/ctprfs.f.3			\
	doc/man/man3/ctpsv.3			\
	doc/man/man3/ctpsv.f.3			\
	doc/man/man3/ctptri.3			\
	doc/man/man3/ctptri.f.3			\
	doc/man/man3/ctptrs.3			\
	doc/man/man3/ctptrs.f.3			\
	doc/man/man3/ctpttf.3			\
	doc/man/man3/ctpttf.f.3			\
	doc/man/man3/ctpttr.3			\
	doc/man/man3/ctpttr.f.3			\
	doc/man/man3/ctrcon.3			\
	doc/man/man3/ctrcon.f.3			\
	doc/man/man3/ctrevc.3			\
	doc/man/man3/ctrevc.f.3			\
	doc/man/man3/ctrexc.3			\
	doc/man/man3/ctrexc.f.3			\
	doc/man/man3/ctrmm.3			\
	doc/man/man3/ctrmm.f.3			\
	doc/man/man3/ctrmv.3			\
	doc/man/man3/ctrmv.f.3			\
	doc/man/man3/ctrrfs.3			\
	doc/man/man3/ctrrfs.f.3			\
	doc/man/man3/ctrsen.3			\
	doc/man/man3/ctrsen.f.3			\
	doc/man/man3/ctrsm.3			\
	doc/man/man3/ctrsm.f.3			\
	doc/man/man3/ctrsna.3			\
	doc/man/man3/ctrsna.f.3			\
	doc/man/man3/ctrsv.3			\
	doc/man/man3/ctrsv.f.3			\
	doc/man/man3/ctrsyl.3			\
	doc/man/man3/ctrsyl.f.3			\
	doc/man/man3/ctrti2.3			\
	doc/man/man3/ctrti2.f.3			\
	doc/man/man3/ctrtri.3			\
	doc/man/man3/ctrtri.f.3			\
	doc/man/man3/ctrtrs.3			\
	doc/man/man3/ctrtrs.f.3			\
	doc/man/man3/ctrttf.3			\
	doc/man/man3/ctrttf.f.3			\
	doc/man/man3/ctrttp.3			\
	doc/man/man3/ctrttp.f.3			\
	doc/man/man3/ctzrqf.3			\
	doc/man/man3/ctzrqf.f.3			\
	doc/man/man3/ctzrzf.3			\
	doc/man/man3/ctzrzf.f.3			\
	doc/man/man3/cunbdb1.3			\
	doc/man/man3/cunbdb1.f.3		\
	doc/man/man3/cunbdb2.3			\
	doc/man/man3/cunbdb2.f.3		\
	doc/man/man3/cunbdb.3			\
	doc/man/man3/cunbdb3.3			\
	doc/man/man3/cunbdb3.f.3		\
	doc/man/man3/cunbdb4.3			\
	doc/man/man3/cunbdb4.f.3		\
	doc/man/man3/cunbdb5.3			\
	doc/man/man3/cunbdb5.f.3		\
	doc/man/man3/cunbdb6.3			\
	doc/man/man3/cunbdb6.f.3		\
	doc/man/man3/cunbdb.f.3			\
	doc/man/man3/cuncsd2by1.3		\
	doc/man/man3/cuncsd2by1.f.3		\
	doc/man/man3/cuncsd.3			\
	doc/man/man3/cuncsd.f.3			\
	doc/man/man3/cung2l.3			\
	doc/man/man3/cung2l.f.3			\
	doc/man/man3/cung2r.3			\
	doc/man/man3/cung2r.f.3			\
	doc/man/man3/cungbr.3			\
	doc/man/man3/cungbr.f.3			\
	doc/man/man3/cunghr.3			\
	doc/man/man3/cunghr.f.3			\
	doc/man/man3/cungl2.3			\
	doc/man/man3/cungl2.f.3			\
	doc/man/man3/cunglq.3			\
	doc/man/man3/cunglq.f.3			\
	doc/man/man3/cungql.3			\
	doc/man/man3/cungql.f.3			\
	doc/man/man3/cungqr.3			\
	doc/man/man3/cungqr.f.3			\
	doc/man/man3/cungr2.3			\
	doc/man/man3/cungr2.f.3			\
	doc/man/man3/cungrq.3			\
	doc/man/man3/cungrq.f.3			\
	doc/man/man3/cungtr.3			\
	doc/man/man3/cungtr.f.3			\
	doc/man/man3/cunm2l.3			\
	doc/man/man3/cunm2l.f.3			\
	doc/man/man3/cunm2r.3			\
	doc/man/man3/cunm2r.f.3			\
	doc/man/man3/cunmbr.3			\
	doc/man/man3/cunmbr.f.3			\
	doc/man/man3/cunmhr.3			\
	doc/man/man3/cunmhr.f.3			\
	doc/man/man3/cunml2.3			\
	doc/man/man3/cunml2.f.3			\
	doc/man/man3/cunmlq.3			\
	doc/man/man3/cunmlq.f.3			\
	doc/man/man3/cunmql.3			\
	doc/man/man3/cunmql.f.3			\
	doc/man/man3/cunmqr.3			\
	doc/man/man3/cunmqr.f.3			\
	doc/man/man3/cunmr2.3			\
	doc/man/man3/cunmr2.f.3			\
	doc/man/man3/cunmr3.3			\
	doc/man/man3/cunmr3.f.3			\
	doc/man/man3/cunmrq.3			\
	doc/man/man3/cunmrq.f.3			\
	doc/man/man3/cunmrz.3			\
	doc/man/man3/cunmrz.f.3			\
	doc/man/man3/cunmtr.3			\
	doc/man/man3/cunmtr.f.3			\
	doc/man/man3/cupgtr.3			\
	doc/man/man3/cupgtr.f.3			\
	doc/man/man3/cupmtr.3			\
	doc/man/man3/cupmtr.f.3			\
	doc/man/man3/dasum.3			\
	doc/man/man3/dasum.f.3			\
	doc/man/man3/daxpy.3			\
	doc/man/man3/daxpy.f.3			\
	doc/man/man3/dbbcsd.3			\
	doc/man/man3/dbbcsd.f.3			\
	doc/man/man3/dbdsdc.3			\
	doc/man/man3/dbdsdc.f.3			\
	doc/man/man3/dbdsqr.3			\
	doc/man/man3/dbdsqr.f.3			\
	doc/man/man3/dcabs1.3			\
	doc/man/man3/dcabs1.f.3			\
	doc/man/man3/dcopy.3			\
	doc/man/man3/dcopy.f.3			\
	doc/man/man3/ddisna.3			\
	doc/man/man3/ddisna.f.3			\
	doc/man/man3/ddot.3			\
	doc/man/man3/ddot.f.3			\
	doc/man/man3/dgbbrd.3			\
	doc/man/man3/dgbbrd.f.3			\
	doc/man/man3/dgbcon.3			\
	doc/man/man3/dgbcon.f.3			\
	doc/man/man3/dgbequ.3			\
	doc/man/man3/dgbequb.3			\
	doc/man/man3/dgbequb.f.3		\
	doc/man/man3/dgbequ.f.3			\
	doc/man/man3/dgbmv.3			\
	doc/man/man3/dgbmv.f.3			\
	doc/man/man3/dgbrfs.3			\
	doc/man/man3/dgbrfs.f.3			\
	doc/man/man3/dgbrfsx.3			\
	doc/man/man3/dgbrfsx.f.3		\
	doc/man/man3/dgbsv.3			\
	doc/man/man3/dgbsv.f.3			\
	doc/man/man3/dgbsvx.3			\
	doc/man/man3/dgbsvx.f.3			\
	doc/man/man3/dgbsvxx.3			\
	doc/man/man3/dgbsvxx.f.3		\
	doc/man/man3/dgbtf2.3			\
	doc/man/man3/dgbtf2.f.3			\
	doc/man/man3/dgbtrf.3			\
	doc/man/man3/dgbtrf.f.3			\
	doc/man/man3/dgbtrs.3			\
	doc/man/man3/dgbtrs.f.3			\
	doc/man/man3/dgebak.3			\
	doc/man/man3/dgebak.f.3			\
	doc/man/man3/dgebal.3			\
	doc/man/man3/dgebal.f.3			\
	doc/man/man3/dgebd2.3			\
	doc/man/man3/dgebd2.f.3			\
	doc/man/man3/dgebrd.3			\
	doc/man/man3/dgebrd.f.3			\
	doc/man/man3/dgecon.3			\
	doc/man/man3/dgecon.f.3			\
	doc/man/man3/dgeequ.3			\
	doc/man/man3/dgeequb.3			\
	doc/man/man3/dgeequb.f.3		\
	doc/man/man3/dgeequ.f.3			\
	doc/man/man3/dgees.3			\
	doc/man/man3/dgees.f.3			\
	doc/man/man3/dgeesx.3			\
	doc/man/man3/dgeesx.f.3			\
	doc/man/man3/dgeev.3			\
	doc/man/man3/dgeev.f.3			\
	doc/man/man3/dgeevx.3			\
	doc/man/man3/dgeevx.f.3			\
	doc/man/man3/dgegs.3			\
	doc/man/man3/dgegs.f.3			\
	doc/man/man3/dgegv.3			\
	doc/man/man3/dgegv.f.3			\
	doc/man/man3/dgehd2.3			\
	doc/man/man3/dgehd2.f.3			\
	doc/man/man3/dgehrd.3			\
	doc/man/man3/dgehrd.f.3			\
	doc/man/man3/dgejsv.3			\
	doc/man/man3/dgejsv.f.3			\
	doc/man/man3/dgelq2.3			\
	doc/man/man3/dgelq2.f.3			\
	doc/man/man3/dgelqf.3			\
	doc/man/man3/dgelqf.f.3			\
	doc/man/man3/dgels.3			\
	doc/man/man3/dgelsd.3			\
	doc/man/man3/dgelsd.f.3			\
	doc/man/man3/dgels.f.3			\
	doc/man/man3/dgelss.3			\
	doc/man/man3/dgelss.f.3			\
	doc/man/man3/dgelsx.3			\
	doc/man/man3/dgelsx.f.3			\
	doc/man/man3/dgelsy.3			\
	doc/man/man3/dgelsy.f.3			\
	doc/man/man3/dgemm.3			\
	doc/man/man3/dgemm.f.3			\
	doc/man/man3/dgemqrt.3			\
	doc/man/man3/dgemqrt.f.3		\
	doc/man/man3/dgemv.3			\
	doc/man/man3/dgemv.f.3			\
	doc/man/man3/dgeql2.3			\
	doc/man/man3/dgeql2.f.3			\
	doc/man/man3/dgeqlf.3			\
	doc/man/man3/dgeqlf.f.3			\
	doc/man/man3/dgeqp3.3			\
	doc/man/man3/dgeqp3.f.3			\
	doc/man/man3/dgeqpf.3			\
	doc/man/man3/dgeqpf.f.3			\
	doc/man/man3/dgeqr2.3			\
	doc/man/man3/dgeqr2.f.3			\
	doc/man/man3/dgeqr2p.3			\
	doc/man/man3/dgeqr2p.f.3		\
	doc/man/man3/dgeqrf.3			\
	doc/man/man3/dgeqrf.f.3			\
	doc/man/man3/dgeqrfp.3			\
	doc/man/man3/dgeqrfp.f.3		\
	doc/man/man3/dgeqrt2.3			\
	doc/man/man3/dgeqrt2.f.3		\
	doc/man/man3/dgeqrt.3			\
	doc/man/man3/dgeqrt3.3			\
	doc/man/man3/dgeqrt3.f.3		\
	doc/man/man3/dgeqrt.f.3			\
	doc/man/man3/dger.3			\
	doc/man/man3/dger.f.3			\
	doc/man/man3/dgerfs.3			\
	doc/man/man3/dgerfs.f.3			\
	doc/man/man3/dgerfsx.3			\
	doc/man/man3/dgerfsx.f.3		\
	doc/man/man3/dgerq2.3			\
	doc/man/man3/dgerq2.f.3			\
	doc/man/man3/dgerqf.3			\
	doc/man/man3/dgerqf.f.3			\
	doc/man/man3/dgesc2.3			\
	doc/man/man3/dgesc2.f.3			\
	doc/man/man3/dgesdd.3			\
	doc/man/man3/dgesdd.f.3			\
	doc/man/man3/dgesv.3			\
	doc/man/man3/dgesvd.3			\
	doc/man/man3/dgesvd.f.3			\
	doc/man/man3/dgesv.f.3			\
	doc/man/man3/dgesvj.3			\
	doc/man/man3/dgesvj.f.3			\
	doc/man/man3/dgesvx.3			\
	doc/man/man3/dgesvx.f.3			\
	doc/man/man3/dgesvxx.3			\
	doc/man/man3/dgesvxx.f.3		\
	doc/man/man3/dgetc2.3			\
	doc/man/man3/dgetc2.f.3			\
	doc/man/man3/dgetf2.3			\
	doc/man/man3/dgetf2.f.3			\
	doc/man/man3/dgetrf.3			\
	doc/man/man3/dgetrf.f.3			\
	doc/man/man3/dgetri.3			\
	doc/man/man3/dgetri.f.3			\
	doc/man/man3/dgetrs.3			\
	doc/man/man3/dgetrs.f.3			\
	doc/man/man3/dggbak.3			\
	doc/man/man3/dggbak.f.3			\
	doc/man/man3/dggbal.3			\
	doc/man/man3/dggbal.f.3			\
	doc/man/man3/dgges.3			\
	doc/man/man3/dgges.f.3			\
	doc/man/man3/dggesx.3			\
	doc/man/man3/dggesx.f.3			\
	doc/man/man3/dggev.3			\
	doc/man/man3/dggev.f.3			\
	doc/man/man3/dggevx.3			\
	doc/man/man3/dggevx.f.3			\
	doc/man/man3/dggglm.3			\
	doc/man/man3/dggglm.f.3			\
	doc/man/man3/dgghrd.3			\
	doc/man/man3/dgghrd.f.3			\
	doc/man/man3/dgglse.3			\
	doc/man/man3/dgglse.f.3			\
	doc/man/man3/dggqrf.3			\
	doc/man/man3/dggqrf.f.3			\
	doc/man/man3/dggrqf.3			\
	doc/man/man3/dggrqf.f.3			\
	doc/man/man3/dggsvd.3			\
	doc/man/man3/dggsvd.f.3			\
	doc/man/man3/dggsvp.3			\
	doc/man/man3/dggsvp.f.3			\
	doc/man/man3/dgsvj0.3			\
	doc/man/man3/dgsvj0.f.3			\
	doc/man/man3/dgsvj1.3			\
	doc/man/man3/dgsvj1.f.3			\
	doc/man/man3/dgtcon.3			\
	doc/man/man3/dgtcon.f.3			\
	doc/man/man3/dgtrfs.3			\
	doc/man/man3/dgtrfs.f.3			\
	doc/man/man3/dgtsv.3			\
	doc/man/man3/dgtsv.f.3			\
	doc/man/man3/dgtsvx.3			\
	doc/man/man3/dgtsvx.f.3			\
	doc/man/man3/dgttrf.3			\
	doc/man/man3/dgttrf.f.3			\
	doc/man/man3/dgttrs.3			\
	doc/man/man3/dgttrs.f.3			\
	doc/man/man3/dgtts2.3			\
	doc/man/man3/dgtts2.f.3			\
	doc/man/man3/dhgeqz.3			\
	doc/man/man3/dhgeqz.f.3			\
	doc/man/man3/dhsein.3			\
	doc/man/man3/dhsein.f.3			\
	doc/man/man3/dhseqr.3			\
	doc/man/man3/dhseqr.f.3			\
	doc/man/man3/disnan.3			\
	doc/man/man3/disnan.f.3			\
	doc/man/man3/dlabad.3			\
	doc/man/man3/dlabad.f.3			\
	doc/man/man3/dlabrd.3			\
	doc/man/man3/dlabrd.f.3			\
	doc/man/man3/dlacn2.3			\
	doc/man/man3/dlacn2.f.3			\
	doc/man/man3/dlacon.3			\
	doc/man/man3/dlacon.f.3			\
	doc/man/man3/dlacpy.3			\
	doc/man/man3/dlacpy.f.3			\
	doc/man/man3/dladiv1.3			\
	doc/man/man3/dladiv2.3			\
	doc/man/man3/dladiv.3			\
	doc/man/man3/dladiv.f.3			\
	doc/man/man3/dlae2.3			\
	doc/man/man3/dlae2.f.3			\
	doc/man/man3/dlaebz.3			\
	doc/man/man3/dlaebz.f.3			\
	doc/man/man3/dlaed0.3			\
	doc/man/man3/dlaed0.f.3			\
	doc/man/man3/dlaed1.3			\
	doc/man/man3/dlaed1.f.3			\
	doc/man/man3/dlaed2.3			\
	doc/man/man3/dlaed2.f.3			\
	doc/man/man3/dlaed3.3			\
	doc/man/man3/dlaed3.f.3			\
	doc/man/man3/dlaed4.3			\
	doc/man/man3/dlaed4.f.3			\
	doc/man/man3/dlaed5.3			\
	doc/man/man3/dlaed5.f.3			\
	doc/man/man3/dlaed6.3			\
	doc/man/man3/dlaed6.f.3			\
	doc/man/man3/dlaed7.3			\
	doc/man/man3/dlaed7.f.3			\
	doc/man/man3/dlaed8.3			\
	doc/man/man3/dlaed8.f.3			\
	doc/man/man3/dlaed9.3			\
	doc/man/man3/dlaed9.f.3			\
	doc/man/man3/dlaeda.3			\
	doc/man/man3/dlaeda.f.3			\
	doc/man/man3/dlaein.3			\
	doc/man/man3/dlaein.f.3			\
	doc/man/man3/dlaev2.3			\
	doc/man/man3/dlaev2.f.3			\
	doc/man/man3/dlaexc.3			\
	doc/man/man3/dlaexc.f.3			\
	doc/man/man3/dlag2.3			\
	doc/man/man3/dlag2.f.3			\
	doc/man/man3/dlag2s.3			\
	doc/man/man3/dlag2s.f.3			\
	doc/man/man3/dla_gbamv.3		\
	doc/man/man3/dla_gbamv.f.3		\
	doc/man/man3/dla_gbrcond.3		\
	doc/man/man3/dla_gbrcond.f.3		\
	doc/man/man3/dla_gbrfsx_extended.3	\
	doc/man/man3/dla_gbrfsx_extended.f.3	\
	doc/man/man3/dla_gbrpvgrw.3		\
	doc/man/man3/dla_gbrpvgrw.f.3		\
	doc/man/man3/dla_geamv.3		\
	doc/man/man3/dla_geamv.f.3		\
	doc/man/man3/dla_gercond.3		\
	doc/man/man3/dla_gercond.f.3		\
	doc/man/man3/dla_gerfsx_extended.3	\
	doc/man/man3/dla_gerfsx_extended.f.3	\
	doc/man/man3/dla_gerpvgrw.3		\
	doc/man/man3/dla_gerpvgrw.f.3		\
	doc/man/man3/dlags2.3			\
	doc/man/man3/dlags2.f.3			\
	doc/man/man3/dlagtf.3			\
	doc/man/man3/dlagtf.f.3			\
	doc/man/man3/dlagtm.3			\
	doc/man/man3/dlagtm.f.3			\
	doc/man/man3/dlagts.3			\
	doc/man/man3/dlagts.f.3			\
	doc/man/man3/dlagv2.3			\
	doc/man/man3/dlagv2.f.3			\
	doc/man/man3/dlahqr.3			\
	doc/man/man3/dlahqr.f.3			\
	doc/man/man3/dlahr2.3			\
	doc/man/man3/dlahr2.f.3			\
	doc/man/man3/dlahrd.3			\
	doc/man/man3/dlahrd.f.3			\
	doc/man/man3/dlaic1.3			\
	doc/man/man3/dlaic1.f.3			\
	doc/man/man3/dlaisnan.3			\
	doc/man/man3/dlaisnan.f.3		\
	doc/man/man3/dla_lin_berr.3		\
	doc/man/man3/dla_lin_berr.f.3		\
	doc/man/man3/dlaln2.3			\
	doc/man/man3/dlaln2.f.3			\
	doc/man/man3/dlals0.3			\
	doc/man/man3/dlals0.f.3			\
	doc/man/man3/dlalsa.3			\
	doc/man/man3/dlalsa.f.3			\
	doc/man/man3/dlalsd.3			\
	doc/man/man3/dlalsd.f.3			\
	doc/man/man3/dlamc1.3			\
	doc/man/man3/dlamc2.3			\
	doc/man/man3/dlamc3.3			\
	doc/man/man3/dlamc4.3			\
	doc/man/man3/dlamc5.3			\
	doc/man/man3/dlamch.3			\
	doc/man/man3/dlamch.f.3			\
	doc/man/man3/dlamchf77.f.3		\
	doc/man/man3/__dlamchtst.f__.3		\
	doc/man/man3/dlamchtst.f.3		\
	doc/man/man3/dlamrg.3			\
	doc/man/man3/dlamrg.f.3			\
	doc/man/man3/dlaneg.3			\
	doc/man/man3/dlaneg.f.3			\
	doc/man/man3/dlangb.3			\
	doc/man/man3/dlangb.f.3			\
	doc/man/man3/dlange.3			\
	doc/man/man3/dlange.f.3			\
	doc/man/man3/dlangt.3			\
	doc/man/man3/dlangt.f.3			\
	doc/man/man3/dlanhs.3			\
	doc/man/man3/dlanhs.f.3			\
	doc/man/man3/dlansb.3			\
	doc/man/man3/dlansb.f.3			\
	doc/man/man3/dlansf.3			\
	doc/man/man3/dlansf.f.3			\
	doc/man/man3/dlansp.3			\
	doc/man/man3/dlansp.f.3			\
	doc/man/man3/dlanst.3			\
	doc/man/man3/dlanst.f.3			\
	doc/man/man3/dlansy.3			\
	doc/man/man3/dlansy.f.3			\
	doc/man/man3/dlantb.3			\
	doc/man/man3/dlantb.f.3			\
	doc/man/man3/dlantp.3			\
	doc/man/man3/dlantp.f.3			\
	doc/man/man3/dlantr.3			\
	doc/man/man3/dlantr.f.3			\
	doc/man/man3/dlanv2.3			\
	doc/man/man3/dlanv2.f.3			\
	doc/man/man3/dlapll.3			\
	doc/man/man3/dlapll.f.3			\
	doc/man/man3/dlapmr.3			\
	doc/man/man3/dlapmr.f.3			\
	doc/man/man3/dlapmt.3			\
	doc/man/man3/dlapmt.f.3			\
	doc/man/man3/dla_porcond.3		\
	doc/man/man3/dla_porcond.f.3		\
	doc/man/man3/dla_porfsx_extended.3	\
	doc/man/man3/dla_porfsx_extended.f.3	\
	doc/man/man3/dla_porpvgrw.3		\
	doc/man/man3/dla_porpvgrw.f.3		\
	doc/man/man3/dlapy2.3			\
	doc/man/man3/dlapy2.f.3			\
	doc/man/man3/dlapy3.3			\
	doc/man/man3/dlapy3.f.3			\
	doc/man/man3/dlaqgb.3			\
	doc/man/man3/dlaqgb.f.3			\
	doc/man/man3/dlaqge.3			\
	doc/man/man3/dlaqge.f.3			\
	doc/man/man3/dlaqp2.3			\
	doc/man/man3/dlaqp2.f.3			\
	doc/man/man3/dlaqps.3			\
	doc/man/man3/dlaqps.f.3			\
	doc/man/man3/dlaqr0.3			\
	doc/man/man3/dlaqr0.f.3			\
	doc/man/man3/dlaqr1.3			\
	doc/man/man3/dlaqr1.f.3			\
	doc/man/man3/dlaqr2.3			\
	doc/man/man3/dlaqr2.f.3			\
	doc/man/man3/dlaqr3.3			\
	doc/man/man3/dlaqr3.f.3			\
	doc/man/man3/dlaqr4.3			\
	doc/man/man3/dlaqr4.f.3			\
	doc/man/man3/dlaqr5.3			\
	doc/man/man3/dlaqr5.f.3			\
	doc/man/man3/dlaqsb.3			\
	doc/man/man3/dlaqsb.f.3			\
	doc/man/man3/dlaqsp.3			\
	doc/man/man3/dlaqsp.f.3			\
	doc/man/man3/dlaqsy.3			\
	doc/man/man3/dlaqsy.f.3			\
	doc/man/man3/dlaqtr.3			\
	doc/man/man3/dlaqtr.f.3			\
	doc/man/man3/dlar1v.3			\
	doc/man/man3/dlar1v.f.3			\
	doc/man/man3/dlar2v.3			\
	doc/man/man3/dlar2v.f.3			\
	doc/man/man3/dlarf.3			\
	doc/man/man3/dlarfb.3			\
	doc/man/man3/dlarfb.f.3			\
	doc/man/man3/dlarf.f.3			\
	doc/man/man3/dlarfg.3			\
	doc/man/man3/dlarfg.f.3			\
	doc/man/man3/dlarfgp.3			\
	doc/man/man3/dlarfgp.f.3		\
	doc/man/man3/dlarft.3			\
	doc/man/man3/dlarft.f.3			\
	doc/man/man3/dlarfx.3			\
	doc/man/man3/dlarfx.f.3			\
	doc/man/man3/dlargv.3			\
	doc/man/man3/dlargv.f.3			\
	doc/man/man3/dlarnv.3			\
	doc/man/man3/dlarnv.f.3			\
	doc/man/man3/dlarra.3			\
	doc/man/man3/dlarra.f.3			\
	doc/man/man3/dlarrb.3			\
	doc/man/man3/dlarrb.f.3			\
	doc/man/man3/dlarrc.3			\
	doc/man/man3/dlarrc.f.3			\
	doc/man/man3/dlarrd.3			\
	doc/man/man3/dlarrd.f.3			\
	doc/man/man3/dlarre.3			\
	doc/man/man3/dlarre.f.3			\
	doc/man/man3/dlarrf.3			\
	doc/man/man3/dlarrf.f.3			\
	doc/man/man3/dlarrj.3			\
	doc/man/man3/dlarrj.f.3			\
	doc/man/man3/dlarrk.3			\
	doc/man/man3/dlarrk.f.3			\
	doc/man/man3/dlarrr.3			\
	doc/man/man3/dlarrr.f.3			\
	doc/man/man3/dlarrv.3			\
	doc/man/man3/dlarrv.f.3			\
	doc/man/man3/dlarscl2.3			\
	doc/man/man3/dlarscl2.f.3		\
	doc/man/man3/dlartg.3			\
	doc/man/man3/dlartg.f.3			\
	doc/man/man3/dlartgp.3			\
	doc/man/man3/dlartgp.f.3		\
	doc/man/man3/dlartgs.3			\
	doc/man/man3/dlartgs.f.3		\
	doc/man/man3/dlartv.3			\
	doc/man/man3/dlartv.f.3			\
	doc/man/man3/dlaruv.3			\
	doc/man/man3/dlaruv.f.3			\
	doc/man/man3/dlarz.3			\
	doc/man/man3/dlarzb.3			\
	doc/man/man3/dlarzb.f.3			\
	doc/man/man3/dlarz.f.3			\
	doc/man/man3/dlarzt.3			\
	doc/man/man3/dlarzt.f.3			\
	doc/man/man3/dlas2.3			\
	doc/man/man3/dlas2.f.3			\
	doc/man/man3/dlascl2.3			\
	doc/man/man3/dlascl2.f.3		\
	doc/man/man3/dlascl.3			\
	doc/man/man3/dlascl.f.3			\
	doc/man/man3/dlasd0.3			\
	doc/man/man3/dlasd0.f.3			\
	doc/man/man3/dlasd1.3			\
	doc/man/man3/dlasd1.f.3			\
	doc/man/man3/dlasd2.3			\
	doc/man/man3/dlasd2.f.3			\
	doc/man/man3/dlasd3.3			\
	doc/man/man3/dlasd3.f.3			\
	doc/man/man3/dlasd4.3			\
	doc/man/man3/dlasd4.f.3			\
	doc/man/man3/dlasd5.3			\
	doc/man/man3/dlasd5.f.3			\
	doc/man/man3/dlasd6.3			\
	doc/man/man3/dlasd6.f.3			\
	doc/man/man3/dlasd7.3			\
	doc/man/man3/dlasd7.f.3			\
	doc/man/man3/dlasd8.3			\
	doc/man/man3/dlasd8.f.3			\
	doc/man/man3/dlasda.3			\
	doc/man/man3/dlasda.f.3			\
	doc/man/man3/dlasdq.3			\
	doc/man/man3/dlasdq.f.3			\
	doc/man/man3/dlasdt.3			\
	doc/man/man3/dlasdt.f.3			\
	doc/man/man3/dlaset.3			\
	doc/man/man3/dlaset.f.3			\
	doc/man/man3/dlasq1.3			\
	doc/man/man3/dlasq1.f.3			\
	doc/man/man3/dlasq2.3			\
	doc/man/man3/dlasq2.f.3			\
	doc/man/man3/dlasq3.3			\
	doc/man/man3/dlasq3.f.3			\
	doc/man/man3/dlasq4.3			\
	doc/man/man3/dlasq4.f.3			\
	doc/man/man3/dlasq5.3			\
	doc/man/man3/dlasq5.f.3			\
	doc/man/man3/dlasq6.3			\
	doc/man/man3/dlasq6.f.3			\
	doc/man/man3/dlasr.3			\
	doc/man/man3/dlasr.f.3			\
	doc/man/man3/dlasrt.3			\
	doc/man/man3/dlasrt.f.3			\
	doc/man/man3/dlassq.3			\
	doc/man/man3/dlassq.f.3			\
	doc/man/man3/dlasv2.3			\
	doc/man/man3/dlasv2.f.3			\
	doc/man/man3/dlaswp.3			\
	doc/man/man3/dlaswp.f.3			\
	doc/man/man3/dlasy2.3			\
	doc/man/man3/dlasy2.f.3			\
	doc/man/man3/dla_syamv.3		\
	doc/man/man3/dla_syamv.f.3		\
	doc/man/man3/dlasyf.3			\
	doc/man/man3/dlasyf.f.3			\
	doc/man/man3/dlasyf_rook.3		\
	doc/man/man3/dlasyf_rook.f.3		\
	doc/man/man3/dla_syrcond.3		\
	doc/man/man3/dla_syrcond.f.3		\
	doc/man/man3/dla_syrfsx_extended.3	\
	doc/man/man3/dla_syrfsx_extended.f.3	\
	doc/man/man3/dla_syrpvgrw.3		\
	doc/man/man3/dla_syrpvgrw.f.3		\
	doc/man/man3/dlat2s.3			\
	doc/man/man3/dlat2s.f.3			\
	doc/man/man3/dlatbs.3			\
	doc/man/man3/dlatbs.f.3			\
	doc/man/man3/dlatdf.3			\
	doc/man/man3/dlatdf.f.3			\
	doc/man/man3/dlatps.3			\
	doc/man/man3/dlatps.f.3			\
	doc/man/man3/dlatrd.3			\
	doc/man/man3/dlatrd.f.3			\
	doc/man/man3/dlatrs.3			\
	doc/man/man3/dlatrs.f.3			\
	doc/man/man3/dlatrz.3			\
	doc/man/man3/dlatrz.f.3			\
	doc/man/man3/dlatzm.3			\
	doc/man/man3/dlatzm.f.3			\
	doc/man/man3/dlauu2.3			\
	doc/man/man3/dlauu2.f.3			\
	doc/man/man3/dlauum.3			\
	doc/man/man3/dlauum.f.3			\
	doc/man/man3/dla_wwaddw.3		\
	doc/man/man3/dla_wwaddw.f.3		\
	doc/man/man3/dnrm2.3			\
	doc/man/man3/dnrm2.f.3			\
	doc/man/man3/dopgtr.3			\
	doc/man/man3/dopgtr.f.3			\
	doc/man/man3/dopmtr.3			\
	doc/man/man3/dopmtr.f.3			\
	doc/man/man3/dorbdb1.3			\
	doc/man/man3/dorbdb1.f.3		\
	doc/man/man3/dorbdb2.3			\
	doc/man/man3/dorbdb2.f.3		\
	doc/man/man3/dorbdb.3			\
	doc/man/man3/dorbdb3.3			\
	doc/man/man3/dorbdb3.f.3		\
	doc/man/man3/dorbdb4.3			\
	doc/man/man3/dorbdb4.f.3		\
	doc/man/man3/dorbdb5.3			\
	doc/man/man3/dorbdb5.f.3		\
	doc/man/man3/dorbdb6.3			\
	doc/man/man3/dorbdb6.f.3		\
	doc/man/man3/dorbdb.f.3			\
	doc/man/man3/dorcsd2by1.3		\
	doc/man/man3/dorcsd2by1.f.3		\
	doc/man/man3/dorcsd.3			\
	doc/man/man3/dorcsd.f.3			\
	doc/man/man3/dorg2l.3			\
	doc/man/man3/dorg2l.f.3			\
	doc/man/man3/dorg2r.3			\
	doc/man/man3/dorg2r.f.3			\
	doc/man/man3/dorgbr.3			\
	doc/man/man3/dorgbr.f.3			\
	doc/man/man3/dorghr.3			\
	doc/man/man3/dorghr.f.3			\
	doc/man/man3/dorgl2.3			\
	doc/man/man3/dorgl2.f.3			\
	doc/man/man3/dorglq.3			\
	doc/man/man3/dorglq.f.3			\
	doc/man/man3/dorgql.3			\
	doc/man/man3/dorgql.f.3			\
	doc/man/man3/dorgqr.3			\
	doc/man/man3/dorgqr.f.3			\
	doc/man/man3/dorgr2.3			\
	doc/man/man3/dorgr2.f.3			\
	doc/man/man3/dorgrq.3			\
	doc/man/man3/dorgrq.f.3			\
	doc/man/man3/dorgtr.3			\
	doc/man/man3/dorgtr.f.3			\
	doc/man/man3/dorm2l.3			\
	doc/man/man3/dorm2l.f.3			\
	doc/man/man3/dorm2r.3			\
	doc/man/man3/dorm2r.f.3			\
	doc/man/man3/dormbr.3			\
	doc/man/man3/dormbr.f.3			\
	doc/man/man3/dormhr.3			\
	doc/man/man3/dormhr.f.3			\
	doc/man/man3/dorml2.3			\
	doc/man/man3/dorml2.f.3			\
	doc/man/man3/dormlq.3			\
	doc/man/man3/dormlq.f.3			\
	doc/man/man3/dormql.3			\
	doc/man/man3/dormql.f.3			\
	doc/man/man3/dormqr.3			\
	doc/man/man3/dormqr.f.3			\
	doc/man/man3/dormr2.3			\
	doc/man/man3/dormr2.f.3			\
	doc/man/man3/dormr3.3			\
	doc/man/man3/dormr3.f.3			\
	doc/man/man3/dormrq.3			\
	doc/man/man3/dormrq.f.3			\
	doc/man/man3/dormrz.3			\
	doc/man/man3/dormrz.f.3			\
	doc/man/man3/dormtr.3			\
	doc/man/man3/dormtr.f.3			\
	doc/man/man3/dpbcon.3			\
	doc/man/man3/dpbcon.f.3			\
	doc/man/man3/dpbequ.3			\
	doc/man/man3/dpbequ.f.3			\
	doc/man/man3/dpbrfs.3			\
	doc/man/man3/dpbrfs.f.3			\
	doc/man/man3/dpbstf.3			\
	doc/man/man3/dpbstf.f.3			\
	doc/man/man3/dpbsv.3			\
	doc/man/man3/dpbsv.f.3			\
	doc/man/man3/dpbsvx.3			\
	doc/man/man3/dpbsvx.f.3			\
	doc/man/man3/dpbtf2.3			\
	doc/man/man3/dpbtf2.f.3			\
	doc/man/man3/dpbtrf.3			\
	doc/man/man3/dpbtrf.f.3			\
	doc/man/man3/dpbtrs.3			\
	doc/man/man3/dpbtrs.f.3			\
	doc/man/man3/dpftrf.3			\
	doc/man/man3/dpftrf.f.3			\
	doc/man/man3/dpftri.3			\
	doc/man/man3/dpftri.f.3			\
	doc/man/man3/dpftrs.3			\
	doc/man/man3/dpftrs.f.3			\
	doc/man/man3/dpocon.3			\
	doc/man/man3/dpocon.f.3			\
	doc/man/man3/dpoequ.3			\
	doc/man/man3/dpoequb.3			\
	doc/man/man3/dpoequb.f.3		\
	doc/man/man3/dpoequ.f.3			\
	doc/man/man3/dporfs.3			\
	doc/man/man3/dporfs.f.3			\
	doc/man/man3/dporfsx.3			\
	doc/man/man3/dporfsx.f.3		\
	doc/man/man3/dposv.3			\
	doc/man/man3/dposv.f.3			\
	doc/man/man3/dposvx.3			\
	doc/man/man3/dposvx.f.3			\
	doc/man/man3/dposvxx.3			\
	doc/man/man3/dposvxx.f.3		\
	doc/man/man3/dpotf2.3			\
	doc/man/man3/dpotf2.f.3			\
	doc/man/man3/dpotrf.3			\
	doc/man/man3/dpotrf.f.3			\
	doc/man/man3/dpotri.3			\
	doc/man/man3/dpotri.f.3			\
	doc/man/man3/dpotrs.3			\
	doc/man/man3/dpotrs.f.3			\
	doc/man/man3/dppcon.3			\
	doc/man/man3/dppcon.f.3			\
	doc/man/man3/dppequ.3			\
	doc/man/man3/dppequ.f.3			\
	doc/man/man3/dpprfs.3			\
	doc/man/man3/dpprfs.f.3			\
	doc/man/man3/dppsv.3			\
	doc/man/man3/dppsv.f.3			\
	doc/man/man3/dppsvx.3			\
	doc/man/man3/dppsvx.f.3			\
	doc/man/man3/dpptrf.3			\
	doc/man/man3/dpptrf.f.3			\
	doc/man/man3/dpptri.3			\
	doc/man/man3/dpptri.f.3			\
	doc/man/man3/dpptrs.3			\
	doc/man/man3/dpptrs.f.3			\
	doc/man/man3/dpstf2.3			\
	doc/man/man3/dpstf2.f.3			\
	doc/man/man3/dpstrf.3			\
	doc/man/man3/dpstrf.f.3			\
	doc/man/man3/dptcon.3			\
	doc/man/man3/dptcon.f.3			\
	doc/man/man3/dpteqr.3			\
	doc/man/man3/dpteqr.f.3			\
	doc/man/man3/dptrfs.3			\
	doc/man/man3/dptrfs.f.3			\
	doc/man/man3/dptsv.3			\
	doc/man/man3/dptsv.f.3			\
	doc/man/man3/dptsvx.3			\
	doc/man/man3/dptsvx.f.3			\
	doc/man/man3/dpttrf.3			\
	doc/man/man3/dpttrf.f.3			\
	doc/man/man3/dpttrs.3			\
	doc/man/man3/dpttrs.f.3			\
	doc/man/man3/dptts2.3			\
	doc/man/man3/dptts2.f.3			\
	doc/man/man3/drot.3			\
	doc/man/man3/drot.f.3			\
	doc/man/man3/drotg.3			\
	doc/man/man3/drotg.f.3			\
	doc/man/man3/drotm.3			\
	doc/man/man3/drotm.f.3			\
	doc/man/man3/drotmg.3			\
	doc/man/man3/drotmg.f.3			\
	doc/man/man3/drscl.3			\
	doc/man/man3/drscl.f.3			\
	doc/man/man3/dsbev.3			\
	doc/man/man3/dsbevd.3			\
	doc/man/man3/dsbevd.f.3			\
	doc/man/man3/dsbev.f.3			\
	doc/man/man3/dsbevx.3			\
	doc/man/man3/dsbevx.f.3			\
	doc/man/man3/dsbgst.3			\
	doc/man/man3/dsbgst.f.3			\
	doc/man/man3/dsbgv.3			\
	doc/man/man3/dsbgvd.3			\
	doc/man/man3/dsbgvd.f.3			\
	doc/man/man3/dsbgv.f.3			\
	doc/man/man3/dsbgvx.3			\
	doc/man/man3/dsbgvx.f.3			\
	doc/man/man3/dsbmv.3			\
	doc/man/man3/dsbmv.f.3			\
	doc/man/man3/dsbtrd.3			\
	doc/man/man3/dsbtrd.f.3			\
	doc/man/man3/dscal.3			\
	doc/man/man3/dscal.f.3			\
	doc/man/man3/dsdot.3			\
	doc/man/man3/dsdot.f.3			\
	doc/man/man3/dsecnd.3			\
	doc/man/man3/dsecnd_EXT_ETIME_.f.3	\
	doc/man/man3/dsecnd_EXT_ETIME.f.3	\
	doc/man/man3/dsecnd_INT_CPU_TIME.f.3	\
	doc/man/man3/dsecnd_INT_ETIME.f.3	\
	doc/man/man3/dsecnd_NONE.f.3		\
	doc/man/man3/__dsecndtst.f__.3		\
	doc/man/man3/dsecndtst.f.3		\
	doc/man/man3/dsfrk.3			\
	doc/man/man3/dsfrk.f.3			\
	doc/man/man3/dsgesv.3			\
	doc/man/man3/dsgesv.f.3			\
	doc/man/man3/dspcon.3			\
	doc/man/man3/dspcon.f.3			\
	doc/man/man3/dspev.3			\
	doc/man/man3/dspevd.3			\
	doc/man/man3/dspevd.f.3			\
	doc/man/man3/dspev.f.3			\
	doc/man/man3/dspevx.3			\
	doc/man/man3/dspevx.f.3			\
	doc/man/man3/dspgst.3			\
	doc/man/man3/dspgst.f.3			\
	doc/man/man3/dspgv.3			\
	doc/man/man3/dspgvd.3			\
	doc/man/man3/dspgvd.f.3			\
	doc/man/man3/dspgv.f.3			\
	doc/man/man3/dspgvx.3			\
	doc/man/man3/dspgvx.f.3			\
	doc/man/man3/dspmv.3			\
	doc/man/man3/dspmv.f.3			\
	doc/man/man3/dsposv.3			\
	doc/man/man3/dsposv.f.3			\
	doc/man/man3/dspr2.3			\
	doc/man/man3/dspr2.f.3			\
	doc/man/man3/dspr.3			\
	doc/man/man3/dspr.f.3			\
	doc/man/man3/dsprfs.3			\
	doc/man/man3/dsprfs.f.3			\
	doc/man/man3/dspsv.3			\
	doc/man/man3/dspsv.f.3			\
	doc/man/man3/dspsvx.3			\
	doc/man/man3/dspsvx.f.3			\
	doc/man/man3/dsptrd.3			\
	doc/man/man3/dsptrd.f.3			\
	doc/man/man3/dsptrf.3			\
	doc/man/man3/dsptrf.f.3			\
	doc/man/man3/dsptri.3			\
	doc/man/man3/dsptri.f.3			\
	doc/man/man3/dsptrs.3			\
	doc/man/man3/dsptrs.f.3			\
	doc/man/man3/dstebz.3			\
	doc/man/man3/dstebz.f.3			\
	doc/man/man3/dstedc.3			\
	doc/man/man3/dstedc.f.3			\
	doc/man/man3/dstegr.3			\
	doc/man/man3/dstegr.f.3			\
	doc/man/man3/dstein.3			\
	doc/man/man3/dstein.f.3			\
	doc/man/man3/dstemr.3			\
	doc/man/man3/dstemr.f.3			\
	doc/man/man3/dsteqr.3			\
	doc/man/man3/dsteqr.f.3			\
	doc/man/man3/dsterf.3			\
	doc/man/man3/dsterf.f.3			\
	doc/man/man3/dstev.3			\
	doc/man/man3/dstevd.3			\
	doc/man/man3/dstevd.f.3			\
	doc/man/man3/dstev.f.3			\
	doc/man/man3/dstevr.3			\
	doc/man/man3/dstevr.f.3			\
	doc/man/man3/dstevx.3			\
	doc/man/man3/dstevx.f.3			\
	doc/man/man3/dswap.3			\
	doc/man/man3/dswap.f.3			\
	doc/man/man3/dsycon.3			\
	doc/man/man3/dsycon.f.3			\
	doc/man/man3/dsycon_rook.3		\
	doc/man/man3/dsycon_rook.f.3		\
	doc/man/man3/dsyconv.3			\
	doc/man/man3/dsyconv.f.3		\
	doc/man/man3/dsyequb.3			\
	doc/man/man3/dsyequb.f.3		\
	doc/man/man3/dsyev.3			\
	doc/man/man3/dsyevd.3			\
	doc/man/man3/dsyevd.f.3			\
	doc/man/man3/dsyev.f.3			\
	doc/man/man3/dsyevr.3			\
	doc/man/man3/dsyevr.f.3			\
	doc/man/man3/dsyevx.3			\
	doc/man/man3/dsyevx.f.3			\
	doc/man/man3/dsygs2.3			\
	doc/man/man3/dsygs2.f.3			\
	doc/man/man3/dsygst.3			\
	doc/man/man3/dsygst.f.3			\
	doc/man/man3/dsygv.3			\
	doc/man/man3/dsygvd.3			\
	doc/man/man3/dsygvd.f.3			\
	doc/man/man3/dsygv.f.3			\
	doc/man/man3/dsygvx.3			\
	doc/man/man3/dsygvx.f.3			\
	doc/man/man3/dsymm.3			\
	doc/man/man3/dsymm.f.3			\
	doc/man/man3/dsymv.3			\
	doc/man/man3/dsymv.f.3			\
	doc/man/man3/dsyr2.3			\
	doc/man/man3/dsyr2.f.3			\
	doc/man/man3/dsyr2k.3			\
	doc/man/man3/dsyr2k.f.3			\
	doc/man/man3/dsyr.3			\
	doc/man/man3/dsyr.f.3			\
	doc/man/man3/dsyrfs.3			\
	doc/man/man3/dsyrfs.f.3			\
	doc/man/man3/dsyrfsx.3			\
	doc/man/man3/dsyrfsx.f.3		\
	doc/man/man3/dsyrk.3			\
	doc/man/man3/dsyrk.f.3			\
	doc/man/man3/dsysv.3			\
	doc/man/man3/dsysv.f.3			\
	doc/man/man3/dsysv_rook.3		\
	doc/man/man3/dsysv_rook.f.3		\
	doc/man/man3/dsysvx.3			\
	doc/man/man3/dsysvx.f.3			\
	doc/man/man3/dsysvxx.3			\
	doc/man/man3/dsysvxx.f.3		\
	doc/man/man3/dsyswapr.3			\
	doc/man/man3/dsyswapr.f.3		\
	doc/man/man3/dsytd2.3			\
	doc/man/man3/dsytd2.f.3			\
	doc/man/man3/dsytf2.3			\
	doc/man/man3/dsytf2.f.3			\
	doc/man/man3/dsytf2_rook.3		\
	doc/man/man3/dsytf2_rook.f.3		\
	doc/man/man3/dsytrd.3			\
	doc/man/man3/dsytrd.f.3			\
	doc/man/man3/dsytrf.3			\
	doc/man/man3/dsytrf.f.3			\
	doc/man/man3/dsytrf_rook.3		\
	doc/man/man3/dsytrf_rook.f.3		\
	doc/man/man3/dsytri2.3			\
	doc/man/man3/dsytri2.f.3		\
	doc/man/man3/dsytri2x.3			\
	doc/man/man3/dsytri2x.f.3		\
	doc/man/man3/dsytri.3			\
	doc/man/man3/dsytri.f.3			\
	doc/man/man3/dsytri_rook.3		\
	doc/man/man3/dsytri_rook.f.3		\
	doc/man/man3/dsytrs2.3			\
	doc/man/man3/dsytrs2.f.3		\
	doc/man/man3/dsytrs.3			\
	doc/man/man3/dsytrs.f.3			\
	doc/man/man3/dsytrs_rook.3		\
	doc/man/man3/dsytrs_rook.f.3		\
	doc/man/man3/dtbcon.3			\
	doc/man/man3/dtbcon.f.3			\
	doc/man/man3/dtbmv.3			\
	doc/man/man3/dtbmv.f.3			\
	doc/man/man3/dtbrfs.3			\
	doc/man/man3/dtbrfs.f.3			\
	doc/man/man3/dtbsv.3			\
	doc/man/man3/dtbsv.f.3			\
	doc/man/man3/dtbtrs.3			\
	doc/man/man3/dtbtrs.f.3			\
	doc/man/man3/dtfsm.3			\
	doc/man/man3/dtfsm.f.3			\
	doc/man/man3/dtftri.3			\
	doc/man/man3/dtftri.f.3			\
	doc/man/man3/dtfttp.3			\
	doc/man/man3/dtfttp.f.3			\
	doc/man/man3/dtfttr.3			\
	doc/man/man3/dtfttr.f.3			\
	doc/man/man3/dtgevc.3			\
	doc/man/man3/dtgevc.f.3			\
	doc/man/man3/dtgex2.3			\
	doc/man/man3/dtgex2.f.3			\
	doc/man/man3/dtgexc.3			\
	doc/man/man3/dtgexc.f.3			\
	doc/man/man3/dtgsen.3			\
	doc/man/man3/dtgsen.f.3			\
	doc/man/man3/dtgsja.3			\
	doc/man/man3/dtgsja.f.3			\
	doc/man/man3/dtgsna.3			\
	doc/man/man3/dtgsna.f.3			\
	doc/man/man3/dtgsy2.3			\
	doc/man/man3/dtgsy2.f.3			\
	doc/man/man3/dtgsyl.3			\
	doc/man/man3/dtgsyl.f.3			\
	doc/man/man3/dtpcon.3			\
	doc/man/man3/dtpcon.f.3			\
	doc/man/man3/dtpmqrt.3			\
	doc/man/man3/dtpmqrt.f.3		\
	doc/man/man3/dtpmv.3			\
	doc/man/man3/dtpmv.f.3			\
	doc/man/man3/dtpqrt2.3			\
	doc/man/man3/dtpqrt2.f.3		\
	doc/man/man3/dtpqrt.3			\
	doc/man/man3/dtpqrt.f.3			\
	doc/man/man3/dtprfb.3			\
	doc/man/man3/dtprfb.f.3			\
	doc/man/man3/dtprfs.3			\
	doc/man/man3/dtprfs.f.3			\
	doc/man/man3/dtpsv.3			\
	doc/man/man3/dtpsv.f.3			\
	doc/man/man3/dtptri.3			\
	doc/man/man3/dtptri.f.3			\
	doc/man/man3/dtptrs.3			\
	doc/man/man3/dtptrs.f.3			\
	doc/man/man3/dtpttf.3			\
	doc/man/man3/dtpttf.f.3			\
	doc/man/man3/dtpttr.3			\
	doc/man/man3/dtpttr.f.3			\
	doc/man/man3/dtrcon.3			\
	doc/man/man3/dtrcon.f.3			\
	doc/man/man3/dtrevc.3			\
	doc/man/man3/dtrevc.f.3			\
	doc/man/man3/dtrexc.3			\
	doc/man/man3/dtrexc.f.3			\
	doc/man/man3/dtrmm.3			\
	doc/man/man3/dtrmm.f.3			\
	doc/man/man3/dtrmv.3			\
	doc/man/man3/dtrmv.f.3			\
	doc/man/man3/dtrrfs.3			\
	doc/man/man3/dtrrfs.f.3			\
	doc/man/man3/dtrsen.3			\
	doc/man/man3/dtrsen.f.3			\
	doc/man/man3/dtrsm.3			\
	doc/man/man3/dtrsm.f.3			\
	doc/man/man3/dtrsna.3			\
	doc/man/man3/dtrsna.f.3			\
	doc/man/man3/dtrsv.3			\
	doc/man/man3/dtrsv.f.3			\
	doc/man/man3/dtrsyl.3			\
	doc/man/man3/dtrsyl.f.3			\
	doc/man/man3/dtrti2.3			\
	doc/man/man3/dtrti2.f.3			\
	doc/man/man3/dtrtri.3			\
	doc/man/man3/dtrtri.f.3			\
	doc/man/man3/dtrtrs.3			\
	doc/man/man3/dtrtrs.f.3			\
	doc/man/man3/dtrttf.3			\
	doc/man/man3/dtrttf.f.3			\
	doc/man/man3/dtrttp.3			\
	doc/man/man3/dtrttp.f.3			\
	doc/man/man3/dtzrqf.3			\
	doc/man/man3/dtzrqf.f.3			\
	doc/man/man3/dtzrzf.3			\
	doc/man/man3/dtzrzf.f.3			\
	doc/man/man3/dzasum.3			\
	doc/man/man3/dzasum.f.3			\
	doc/man/man3/dznrm2.3			\
	doc/man/man3/dznrm2.f.3			\
	doc/man/man3/dzsum1.3			\
	doc/man/man3/dzsum1.f.3			\
	doc/man/man3/icamax.3			\
	doc/man/man3/icamax.f.3			\
	doc/man/man3/icmax1.3			\
	doc/man/man3/icmax1.f.3			\
	doc/man/man3/idamax.3			\
	doc/man/man3/idamax.f.3			\
	doc/man/man3/ieeeck.3			\
	doc/man/man3/ieeeck.f.3			\
	doc/man/man3/ilaclc.3			\
	doc/man/man3/ilaclc.f.3			\
	doc/man/man3/ilaclr.3			\
	doc/man/man3/ilaclr.f.3			\
	doc/man/man3/iladiag.3			\
	doc/man/man3/iladiag.f.3		\
	doc/man/man3/iladlc.3			\
	doc/man/man3/iladlc.f.3			\
	doc/man/man3/iladlr.3			\
	doc/man/man3/iladlr.f.3			\
	doc/man/man3/ilaenv.3			\
	doc/man/man3/ilaenv.f.3			\
	doc/man/man3/ilaprec.3			\
	doc/man/man3/ilaprec.f.3		\
	doc/man/man3/ilaslc.3			\
	doc/man/man3/ilaslc.f.3			\
	doc/man/man3/ilaslr.3			\
	doc/man/man3/ilaslr.f.3			\
	doc/man/man3/ilatrans.3			\
	doc/man/man3/ilatrans.f.3		\
	doc/man/man3/ilauplo.3			\
	doc/man/man3/ilauplo.f.3		\
	doc/man/man3/ilaver.3			\
	doc/man/man3/ilazlc.3			\
	doc/man/man3/ilazlc.f.3			\
	doc/man/man3/ilazlr.3			\
	doc/man/man3/ilazlr.f.3			\
	doc/man/man3/INSTALL_ilaver.f.3		\
	doc/man/man3/INSTALL_lsame.f.3		\
	doc/man/man3/iparmq.3			\
	doc/man/man3/iparmq.f.3			\
	doc/man/man3/isamax.3			\
	doc/man/man3/isamax.f.3			\
	doc/man/man3/izamax.3			\
	doc/man/man3/izamax.f.3			\
	doc/man/man3/izmax1.3			\
	doc/man/man3/izmax1.f.3			\
	doc/man/man3/__lapack_version.f__.3	\
	doc/man/man3/LAPACK_version.f.3		\
	doc/man/man3/lsame.3			\
	doc/man/man3/lsamen.3			\
	doc/man/man3/lsamen.f.3			\
	doc/man/man3/__lsametst.f__.3		\
	doc/man/man3/lsametst.f.3		\
	doc/man/man3/mysub.3			\
	doc/man/man3/sasum.3			\
	doc/man/man3/sasum.f.3			\
	doc/man/man3/saxpy.3			\
	doc/man/man3/saxpy.f.3			\
	doc/man/man3/sbbcsd.3			\
	doc/man/man3/sbbcsd.f.3			\
	doc/man/man3/sbdsdc.3			\
	doc/man/man3/sbdsdc.f.3			\
	doc/man/man3/sbdsqr.3			\
	doc/man/man3/sbdsqr.f.3			\
	doc/man/man3/scabs1.3			\
	doc/man/man3/scabs1.f.3			\
	doc/man/man3/scasum.3			\
	doc/man/man3/scasum.f.3			\
	doc/man/man3/scnrm2.3			\
	doc/man/man3/scnrm2.f.3			\
	doc/man/man3/scopy.3			\
	doc/man/man3/scopy.f.3			\
	doc/man/man3/scsum1.3			\
	doc/man/man3/scsum1.f.3			\
	doc/man/man3/sdisna.3			\
	doc/man/man3/sdisna.f.3			\
	doc/man/man3/sdot.3			\
	doc/man/man3/sdot.f.3			\
	doc/man/man3/sdsdot.3			\
	doc/man/man3/sdsdot.f.3			\
	doc/man/man3/second.3			\
	doc/man/man3/second_EXT_ETIME_.f.3	\
	doc/man/man3/second_EXT_ETIME.f.3	\
	doc/man/man3/second_INT_CPU_TIME.f.3	\
	doc/man/man3/second_INT_ETIME.f.3	\
	doc/man/man3/second_NONE.f.3		\
	doc/man/man3/__secondtst.f__.3		\
	doc/man/man3/secondtst.f.3		\
	doc/man/man3/sgbbrd.3			\
	doc/man/man3/sgbbrd.f.3			\
	doc/man/man3/sgbcon.3			\
	doc/man/man3/sgbcon.f.3			\
	doc/man/man3/sgbequ.3			\
	doc/man/man3/sgbequb.3			\
	doc/man/man3/sgbequb.f.3		\
	doc/man/man3/sgbequ.f.3			\
	doc/man/man3/sgbmv.3			\
	doc/man/man3/sgbmv.f.3			\
	doc/man/man3/sgbrfs.3			\
	doc/man/man3/sgbrfs.f.3			\
	doc/man/man3/sgbrfsx.3			\
	doc/man/man3/sgbrfsx.f.3		\
	doc/man/man3/sgbsv.3			\
	doc/man/man3/sgbsv.f.3			\
	doc/man/man3/sgbsvx.3			\
	doc/man/man3/sgbsvx.f.3			\
	doc/man/man3/sgbsvxx.3			\
	doc/man/man3/sgbsvxx.f.3		\
	doc/man/man3/sgbtf2.3			\
	doc/man/man3/sgbtf2.f.3			\
	doc/man/man3/sgbtrf.3			\
	doc/man/man3/sgbtrf.f.3			\
	doc/man/man3/sgbtrs.3			\
	doc/man/man3/sgbtrs.f.3			\
	doc/man/man3/sgebak.3			\
	doc/man/man3/sgebak.f.3			\
	doc/man/man3/sgebal.3			\
	doc/man/man3/sgebal.f.3			\
	doc/man/man3/sgebd2.3			\
	doc/man/man3/sgebd2.f.3			\
	doc/man/man3/sgebrd.3			\
	doc/man/man3/sgebrd.f.3			\
	doc/man/man3/sgecon.3			\
	doc/man/man3/sgecon.f.3			\
	doc/man/man3/sgeequ.3			\
	doc/man/man3/sgeequb.3			\
	doc/man/man3/sgeequb.f.3		\
	doc/man/man3/sgeequ.f.3			\
	doc/man/man3/sgees.3			\
	doc/man/man3/sgees.f.3			\
	doc/man/man3/sgeesx.3			\
	doc/man/man3/sgeesx.f.3			\
	doc/man/man3/sgeev.3			\
	doc/man/man3/sgeev.f.3			\
	doc/man/man3/sgeevx.3			\
	doc/man/man3/sgeevx.f.3			\
	doc/man/man3/sgegs.3			\
	doc/man/man3/sgegs.f.3			\
	doc/man/man3/sgegv.3			\
	doc/man/man3/sgegv.f.3			\
	doc/man/man3/sgehd2.3			\
	doc/man/man3/sgehd2.f.3			\
	doc/man/man3/sgehrd.3			\
	doc/man/man3/sgehrd.f.3			\
	doc/man/man3/sgejsv.3			\
	doc/man/man3/sgejsv.f.3			\
	doc/man/man3/sgelq2.3			\
	doc/man/man3/sgelq2.f.3			\
	doc/man/man3/sgelqf.3			\
	doc/man/man3/sgelqf.f.3			\
	doc/man/man3/sgels.3			\
	doc/man/man3/sgelsd.3			\
	doc/man/man3/sgelsd.f.3			\
	doc/man/man3/sgels.f.3			\
	doc/man/man3/sgelss.3			\
	doc/man/man3/sgelss.f.3			\
	doc/man/man3/sgelsx.3			\
	doc/man/man3/sgelsx.f.3			\
	doc/man/man3/sgelsy.3			\
	doc/man/man3/sgelsy.f.3			\
	doc/man/man3/sgemm.3			\
	doc/man/man3/sgemm.f.3			\
	doc/man/man3/sgemqrt.3			\
	doc/man/man3/sgemqrt.f.3		\
	doc/man/man3/sgemv.3			\
	doc/man/man3/sgemv.f.3			\
	doc/man/man3/sgeql2.3			\
	doc/man/man3/sgeql2.f.3			\
	doc/man/man3/sgeqlf.3			\
	doc/man/man3/sgeqlf.f.3			\
	doc/man/man3/sgeqp3.3			\
	doc/man/man3/sgeqp3.f.3			\
	doc/man/man3/sgeqpf.3			\
	doc/man/man3/sgeqpf.f.3			\
	doc/man/man3/sgeqr2.3			\
	doc/man/man3/sgeqr2.f.3			\
	doc/man/man3/sgeqr2p.3			\
	doc/man/man3/sgeqr2p.f.3		\
	doc/man/man3/sgeqrf.3			\
	doc/man/man3/sgeqrf.f.3			\
	doc/man/man3/sgeqrfp.3			\
	doc/man/man3/sgeqrfp.f.3		\
	doc/man/man3/sgeqrt2.3			\
	doc/man/man3/sgeqrt2.f.3		\
	doc/man/man3/sgeqrt.3			\
	doc/man/man3/sgeqrt3.3			\
	doc/man/man3/sgeqrt3.f.3		\
	doc/man/man3/sgeqrt.f.3			\
	doc/man/man3/sger.3			\
	doc/man/man3/sger.f.3			\
	doc/man/man3/sgerfs.3			\
	doc/man/man3/sgerfs.f.3			\
	doc/man/man3/sgerfsx.3			\
	doc/man/man3/sgerfsx.f.3		\
	doc/man/man3/sgerq2.3			\
	doc/man/man3/sgerq2.f.3			\
	doc/man/man3/sgerqf.3			\
	doc/man/man3/sgerqf.f.3			\
	doc/man/man3/sgesc2.3			\
	doc/man/man3/sgesc2.f.3			\
	doc/man/man3/sgesdd.3			\
	doc/man/man3/sgesdd.f.3			\
	doc/man/man3/sgesv.3			\
	doc/man/man3/sgesvd.3			\
	doc/man/man3/sgesvd.f.3			\
	doc/man/man3/sgesv.f.3			\
	doc/man/man3/sgesvj.3			\
	doc/man/man3/sgesvj.f.3			\
	doc/man/man3/sgesvx.3			\
	doc/man/man3/sgesvx.f.3			\
	doc/man/man3/sgesvxx.3			\
	doc/man/man3/sgesvxx.f.3		\
	doc/man/man3/sgetc2.3			\
	doc/man/man3/sgetc2.f.3			\
	doc/man/man3/sgetf2.3			\
	doc/man/man3/sgetf2.f.3			\
	doc/man/man3/sgetrf.3			\
	doc/man/man3/sgetrf.f.3			\
	doc/man/man3/sgetri.3			\
	doc/man/man3/sgetri.f.3			\
	doc/man/man3/sgetrs.3			\
	doc/man/man3/sgetrs.f.3			\
	doc/man/man3/sggbak.3			\
	doc/man/man3/sggbak.f.3			\
	doc/man/man3/sggbal.3			\
	doc/man/man3/sggbal.f.3			\
	doc/man/man3/sgges.3			\
	doc/man/man3/sgges.f.3			\
	doc/man/man3/sggesx.3			\
	doc/man/man3/sggesx.f.3			\
	doc/man/man3/sggev.3			\
	doc/man/man3/sggev.f.3			\
	doc/man/man3/sggevx.3			\
	doc/man/man3/sggevx.f.3			\
	doc/man/man3/sggglm.3			\
	doc/man/man3/sggglm.f.3			\
	doc/man/man3/sgghrd.3			\
	doc/man/man3/sgghrd.f.3			\
	doc/man/man3/sgglse.3			\
	doc/man/man3/sgglse.f.3			\
	doc/man/man3/sggqrf.3			\
	doc/man/man3/sggqrf.f.3			\
	doc/man/man3/sggrqf.3			\
	doc/man/man3/sggrqf.f.3			\
	doc/man/man3/sggsvd.3			\
	doc/man/man3/sggsvd.f.3			\
	doc/man/man3/sggsvp.3			\
	doc/man/man3/sggsvp.f.3			\
	doc/man/man3/sgsvj0.3			\
	doc/man/man3/sgsvj0.f.3			\
	doc/man/man3/sgsvj1.3			\
	doc/man/man3/sgsvj1.f.3			\
	doc/man/man3/sgtcon.3			\
	doc/man/man3/sgtcon.f.3			\
	doc/man/man3/sgtrfs.3			\
	doc/man/man3/sgtrfs.f.3			\
	doc/man/man3/sgtsv.3			\
	doc/man/man3/sgtsv.f.3			\
	doc/man/man3/sgtsvx.3			\
	doc/man/man3/sgtsvx.f.3			\
	doc/man/man3/sgttrf.3			\
	doc/man/man3/sgttrf.f.3			\
	doc/man/man3/sgttrs.3			\
	doc/man/man3/sgttrs.f.3			\
	doc/man/man3/sgtts2.3			\
	doc/man/man3/sgtts2.f.3			\
	doc/man/man3/shgeqz.3			\
	doc/man/man3/shgeqz.f.3			\
	doc/man/man3/shsein.3			\
	doc/man/man3/shsein.f.3			\
	doc/man/man3/shseqr.3			\
	doc/man/man3/shseqr.f.3			\
	doc/man/man3/sisnan.3			\
	doc/man/man3/sisnan.f.3			\
	doc/man/man3/slabad.3			\
	doc/man/man3/slabad.f.3			\
	doc/man/man3/slabrd.3			\
	doc/man/man3/slabrd.f.3			\
	doc/man/man3/slacn2.3			\
	doc/man/man3/slacn2.f.3			\
	doc/man/man3/slacon.3			\
	doc/man/man3/slacon.f.3			\
	doc/man/man3/slacpy.3			\
	doc/man/man3/slacpy.f.3			\
	doc/man/man3/sladiv1.3			\
	doc/man/man3/sladiv2.3			\
	doc/man/man3/sladiv.3			\
	doc/man/man3/sladiv.f.3			\
	doc/man/man3/slae2.3			\
	doc/man/man3/slae2.f.3			\
	doc/man/man3/slaebz.3			\
	doc/man/man3/slaebz.f.3			\
	doc/man/man3/slaed0.3			\
	doc/man/man3/slaed0.f.3			\
	doc/man/man3/slaed1.3			\
	doc/man/man3/slaed1.f.3			\
	doc/man/man3/slaed2.3			\
	doc/man/man3/slaed2.f.3			\
	doc/man/man3/slaed3.3			\
	doc/man/man3/slaed3.f.3			\
	doc/man/man3/slaed4.3			\
	doc/man/man3/slaed4.f.3			\
	doc/man/man3/slaed5.3			\
	doc/man/man3/slaed5.f.3			\
	doc/man/man3/slaed6.3			\
	doc/man/man3/slaed6.f.3			\
	doc/man/man3/slaed7.3			\
	doc/man/man3/slaed7.f.3			\
	doc/man/man3/slaed8.3			\
	doc/man/man3/slaed8.f.3			\
	doc/man/man3/slaed9.3			\
	doc/man/man3/slaed9.f.3			\
	doc/man/man3/slaeda.3			\
	doc/man/man3/slaeda.f.3			\
	doc/man/man3/slaein.3			\
	doc/man/man3/slaein.f.3			\
	doc/man/man3/slaev2.3			\
	doc/man/man3/slaev2.f.3			\
	doc/man/man3/slaexc.3			\
	doc/man/man3/slaexc.f.3			\
	doc/man/man3/slag2.3			\
	doc/man/man3/slag2d.3			\
	doc/man/man3/slag2d.f.3			\
	doc/man/man3/slag2.f.3			\
	doc/man/man3/sla_gbamv.3		\
	doc/man/man3/sla_gbamv.f.3		\
	doc/man/man3/sla_gbrcond.3		\
	doc/man/man3/sla_gbrcond.f.3		\
	doc/man/man3/sla_gbrfsx_extended.3	\
	doc/man/man3/sla_gbrfsx_extended.f.3	\
	doc/man/man3/sla_gbrpvgrw.3		\
	doc/man/man3/sla_gbrpvgrw.f.3		\
	doc/man/man3/sla_geamv.3		\
	doc/man/man3/sla_geamv.f.3		\
	doc/man/man3/sla_gercond.3		\
	doc/man/man3/sla_gercond.f.3		\
	doc/man/man3/sla_gerfsx_extended.3	\
	doc/man/man3/sla_gerfsx_extended.f.3	\
	doc/man/man3/sla_gerpvgrw.3		\
	doc/man/man3/sla_gerpvgrw.f.3		\
	doc/man/man3/slags2.3			\
	doc/man/man3/slags2.f.3			\
	doc/man/man3/slagtf.3			\
	doc/man/man3/slagtf.f.3			\
	doc/man/man3/slagtm.3			\
	doc/man/man3/slagtm.f.3			\
	doc/man/man3/slagts.3			\
	doc/man/man3/slagts.f.3			\
	doc/man/man3/slagv2.3			\
	doc/man/man3/slagv2.f.3			\
	doc/man/man3/slahqr.3			\
	doc/man/man3/slahqr.f.3			\
	doc/man/man3/slahr2.3			\
	doc/man/man3/slahr2.f.3			\
	doc/man/man3/slahrd.3			\
	doc/man/man3/slahrd.f.3			\
	doc/man/man3/slaic1.3			\
	doc/man/man3/slaic1.f.3			\
	doc/man/man3/slaisnan.3			\
	doc/man/man3/slaisnan.f.3		\
	doc/man/man3/sla_lin_berr.3		\
	doc/man/man3/sla_lin_berr.f.3		\
	doc/man/man3/slaln2.3			\
	doc/man/man3/slaln2.f.3			\
	doc/man/man3/slals0.3			\
	doc/man/man3/slals0.f.3			\
	doc/man/man3/slalsa.3			\
	doc/man/man3/slalsa.f.3			\
	doc/man/man3/slalsd.3			\
	doc/man/man3/slalsd.f.3			\
	doc/man/man3/slamc1.3			\
	doc/man/man3/slamc2.3			\
	doc/man/man3/slamc3.3			\
	doc/man/man3/slamc4.3			\
	doc/man/man3/slamc5.3			\
	doc/man/man3/slamch.3			\
	doc/man/man3/slamch.f.3			\
	doc/man/man3/slamchf77.f.3		\
	doc/man/man3/__slamchtst.f__.3		\
	doc/man/man3/slamchtst.f.3		\
	doc/man/man3/slamrg.3			\
	doc/man/man3/slamrg.f.3			\
	doc/man/man3/slaneg.3			\
	doc/man/man3/slaneg.f.3			\
	doc/man/man3/slangb.3			\
	doc/man/man3/slangb.f.3			\
	doc/man/man3/slange.3			\
	doc/man/man3/slange.f.3			\
	doc/man/man3/slangt.3			\
	doc/man/man3/slangt.f.3			\
	doc/man/man3/slanhs.3			\
	doc/man/man3/slanhs.f.3			\
	doc/man/man3/slansb.3			\
	doc/man/man3/slansb.f.3			\
	doc/man/man3/slansf.3			\
	doc/man/man3/slansf.f.3			\
	doc/man/man3/slansp.3			\
	doc/man/man3/slansp.f.3			\
	doc/man/man3/slanst.3			\
	doc/man/man3/slanst.f.3			\
	doc/man/man3/slansy.3			\
	doc/man/man3/slansy.f.3			\
	doc/man/man3/slantb.3			\
	doc/man/man3/slantb.f.3			\
	doc/man/man3/slantp.3			\
	doc/man/man3/slantp.f.3			\
	doc/man/man3/slantr.3			\
	doc/man/man3/slantr.f.3			\
	doc/man/man3/slanv2.3			\
	doc/man/man3/slanv2.f.3			\
	doc/man/man3/slapll.3			\
	doc/man/man3/slapll.f.3			\
	doc/man/man3/slapmr.3			\
	doc/man/man3/slapmr.f.3			\
	doc/man/man3/slapmt.3			\
	doc/man/man3/slapmt.f.3			\
	doc/man/man3/sla_porcond.3		\
	doc/man/man3/sla_porcond.f.3		\
	doc/man/man3/sla_porfsx_extended.3	\
	doc/man/man3/sla_porfsx_extended.f.3	\
	doc/man/man3/sla_porpvgrw.3		\
	doc/man/man3/sla_porpvgrw.f.3		\
	doc/man/man3/slapy2.3			\
	doc/man/man3/slapy2.f.3			\
	doc/man/man3/slapy3.3			\
	doc/man/man3/slapy3.f.3			\
	doc/man/man3/slaqgb.3			\
	doc/man/man3/slaqgb.f.3			\
	doc/man/man3/slaqge.3			\
	doc/man/man3/slaqge.f.3			\
	doc/man/man3/slaqp2.3			\
	doc/man/man3/slaqp2.f.3			\
	doc/man/man3/slaqps.3			\
	doc/man/man3/slaqps.f.3			\
	doc/man/man3/slaqr0.3			\
	doc/man/man3/slaqr0.f.3			\
	doc/man/man3/slaqr1.3			\
	doc/man/man3/slaqr1.f.3			\
	doc/man/man3/slaqr2.3			\
	doc/man/man3/slaqr2.f.3			\
	doc/man/man3/slaqr3.3			\
	doc/man/man3/slaqr3.f.3			\
	doc/man/man3/slaqr4.3			\
	doc/man/man3/slaqr4.f.3			\
	doc/man/man3/slaqr5.3			\
	doc/man/man3/slaqr5.f.3			\
	doc/man/man3/slaqsb.3			\
	doc/man/man3/slaqsb.f.3			\
	doc/man/man3/slaqsp.3			\
	doc/man/man3/slaqsp.f.3			\
	doc/man/man3/slaqsy.3			\
	doc/man/man3/slaqsy.f.3			\
	doc/man/man3/slaqtr.3			\
	doc/man/man3/slaqtr.f.3			\
	doc/man/man3/slar1v.3			\
	doc/man/man3/slar1v.f.3			\
	doc/man/man3/slar2v.3			\
	doc/man/man3/slar2v.f.3			\
	doc/man/man3/slarf.3			\
	doc/man/man3/slarfb.3			\
	doc/man/man3/slarfb.f.3			\
	doc/man/man3/slarf.f.3			\
	doc/man/man3/slarfg.3			\
	doc/man/man3/slarfg.f.3			\
	doc/man/man3/slarfgp.3			\
	doc/man/man3/slarfgp.f.3		\
	doc/man/man3/slarft.3			\
	doc/man/man3/slarft.f.3			\
	doc/man/man3/slarfx.3			\
	doc/man/man3/slarfx.f.3			\
	doc/man/man3/slargv.3			\
	doc/man/man3/slargv.f.3			\
	doc/man/man3/slarnv.3			\
	doc/man/man3/slarnv.f.3			\
	doc/man/man3/slarra.3			\
	doc/man/man3/slarra.f.3			\
	doc/man/man3/slarrb.3			\
	doc/man/man3/slarrb.f.3			\
	doc/man/man3/slarrc.3			\
	doc/man/man3/slarrc.f.3			\
	doc/man/man3/slarrd.3			\
	doc/man/man3/slarrd.f.3			\
	doc/man/man3/slarre.3			\
	doc/man/man3/slarre.f.3			\
	doc/man/man3/slarrf.3			\
	doc/man/man3/slarrf.f.3			\
	doc/man/man3/slarrj.3			\
	doc/man/man3/slarrj.f.3			\
	doc/man/man3/slarrk.3			\
	doc/man/man3/slarrk.f.3			\
	doc/man/man3/slarrr.3			\
	doc/man/man3/slarrr.f.3			\
	doc/man/man3/slarrv.3			\
	doc/man/man3/slarrv.f.3			\
	doc/man/man3/slarscl2.3			\
	doc/man/man3/slarscl2.f.3		\
	doc/man/man3/slartg.3			\
	doc/man/man3/slartg.f.3			\
	doc/man/man3/slartgp.3			\
	doc/man/man3/slartgp.f.3		\
	doc/man/man3/slartgs.3			\
	doc/man/man3/slartgs.f.3		\
	doc/man/man3/slartv.3			\
	doc/man/man3/slartv.f.3			\
	doc/man/man3/slaruv.3			\
	doc/man/man3/slaruv.f.3			\
	doc/man/man3/slarz.3			\
	doc/man/man3/slarzb.3			\
	doc/man/man3/slarzb.f.3			\
	doc/man/man3/slarz.f.3			\
	doc/man/man3/slarzt.3			\
	doc/man/man3/slarzt.f.3			\
	doc/man/man3/slas2.3			\
	doc/man/man3/slas2.f.3			\
	doc/man/man3/slascl2.3			\
	doc/man/man3/slascl2.f.3		\
	doc/man/man3/slascl.3			\
	doc/man/man3/slascl.f.3			\
	doc/man/man3/slasd0.3			\
	doc/man/man3/slasd0.f.3			\
	doc/man/man3/slasd1.3			\
	doc/man/man3/slasd1.f.3			\
	doc/man/man3/slasd2.3			\
	doc/man/man3/slasd2.f.3			\
	doc/man/man3/slasd3.3			\
	doc/man/man3/slasd3.f.3			\
	doc/man/man3/slasd4.3			\
	doc/man/man3/slasd4.f.3			\
	doc/man/man3/slasd5.3			\
	doc/man/man3/slasd5.f.3			\
	doc/man/man3/slasd6.3			\
	doc/man/man3/slasd6.f.3			\
	doc/man/man3/slasd7.3			\
	doc/man/man3/slasd7.f.3			\
	doc/man/man3/slasd8.3			\
	doc/man/man3/slasd8.f.3			\
	doc/man/man3/slasda.3			\
	doc/man/man3/slasda.f.3			\
	doc/man/man3/slasdq.3			\
	doc/man/man3/slasdq.f.3			\
	doc/man/man3/slasdt.3			\
	doc/man/man3/slasdt.f.3			\
	doc/man/man3/slaset.3			\
	doc/man/man3/slaset.f.3			\
	doc/man/man3/slasq1.3			\
	doc/man/man3/slasq1.f.3			\
	doc/man/man3/slasq2.3			\
	doc/man/man3/slasq2.f.3			\
	doc/man/man3/slasq3.3			\
	doc/man/man3/slasq3.f.3			\
	doc/man/man3/slasq4.3			\
	doc/man/man3/slasq4.f.3			\
	doc/man/man3/slasq5.3			\
	doc/man/man3/slasq5.f.3			\
	doc/man/man3/slasq6.3			\
	doc/man/man3/slasq6.f.3			\
	doc/man/man3/slasr.3			\
	doc/man/man3/slasr.f.3			\
	doc/man/man3/slasrt.3			\
	doc/man/man3/slasrt.f.3			\
	doc/man/man3/slassq.3			\
	doc/man/man3/slassq.f.3			\
	doc/man/man3/slasv2.3			\
	doc/man/man3/slasv2.f.3			\
	doc/man/man3/slaswp.3			\
	doc/man/man3/slaswp.f.3			\
	doc/man/man3/slasy2.3			\
	doc/man/man3/slasy2.f.3			\
	doc/man/man3/sla_syamv.3		\
	doc/man/man3/sla_syamv.f.3		\
	doc/man/man3/slasyf.3			\
	doc/man/man3/slasyf.f.3			\
	doc/man/man3/slasyf_rook.3		\
	doc/man/man3/slasyf_rook.f.3		\
	doc/man/man3/sla_syrcond.3		\
	doc/man/man3/sla_syrcond.f.3		\
	doc/man/man3/sla_syrfsx_extended.3	\
	doc/man/man3/sla_syrfsx_extended.f.3	\
	doc/man/man3/sla_syrpvgrw.3		\
	doc/man/man3/sla_syrpvgrw.f.3		\
	doc/man/man3/slatbs.3			\
	doc/man/man3/slatbs.f.3			\
	doc/man/man3/slatdf.3			\
	doc/man/man3/slatdf.f.3			\
	doc/man/man3/slatps.3			\
	doc/man/man3/slatps.f.3			\
	doc/man/man3/slatrd.3			\
	doc/man/man3/slatrd.f.3			\
	doc/man/man3/slatrs.3			\
	doc/man/man3/slatrs.f.3			\
	doc/man/man3/slatrz.3			\
	doc/man/man3/slatrz.f.3			\
	doc/man/man3/slatzm.3			\
	doc/man/man3/slatzm.f.3			\
	doc/man/man3/slauu2.3			\
	doc/man/man3/slauu2.f.3			\
	doc/man/man3/slauum.3			\
	doc/man/man3/slauum.f.3			\
	doc/man/man3/sla_wwaddw.3		\
	doc/man/man3/sla_wwaddw.f.3		\
	doc/man/man3/snrm2.3			\
	doc/man/man3/snrm2.f.3			\
	doc/man/man3/sopgtr.3			\
	doc/man/man3/sopgtr.f.3			\
	doc/man/man3/sopmtr.3			\
	doc/man/man3/sopmtr.f.3			\
	doc/man/man3/sorbdb1.3			\
	doc/man/man3/sorbdb1.f.3		\
	doc/man/man3/sorbdb2.3			\
	doc/man/man3/sorbdb2.f.3		\
	doc/man/man3/sorbdb.3			\
	doc/man/man3/sorbdb3.3			\
	doc/man/man3/sorbdb3.f.3		\
	doc/man/man3/sorbdb4.3			\
	doc/man/man3/sorbdb4.f.3		\
	doc/man/man3/sorbdb5.3			\
	doc/man/man3/sorbdb5.f.3		\
	doc/man/man3/sorbdb6.3			\
	doc/man/man3/sorbdb6.f.3		\
	doc/man/man3/sorbdb.f.3			\
	doc/man/man3/sorcsd2by1.3		\
	doc/man/man3/sorcsd2by1.f.3		\
	doc/man/man3/sorcsd.3			\
	doc/man/man3/sorcsd.f.3			\
	doc/man/man3/sorg2l.3			\
	doc/man/man3/sorg2l.f.3			\
	doc/man/man3/sorg2r.3			\
	doc/man/man3/sorg2r.f.3			\
	doc/man/man3/sorgbr.3			\
	doc/man/man3/sorgbr.f.3			\
	doc/man/man3/sorghr.3			\
	doc/man/man3/sorghr.f.3			\
	doc/man/man3/sorgl2.3			\
	doc/man/man3/sorgl2.f.3			\
	doc/man/man3/sorglq.3			\
	doc/man/man3/sorglq.f.3			\
	doc/man/man3/sorgql.3			\
	doc/man/man3/sorgql.f.3			\
	doc/man/man3/sorgqr.3			\
	doc/man/man3/sorgqr.f.3			\
	doc/man/man3/sorgr2.3			\
	doc/man/man3/sorgr2.f.3			\
	doc/man/man3/sorgrq.3			\
	doc/man/man3/sorgrq.f.3			\
	doc/man/man3/sorgtr.3			\
	doc/man/man3/sorgtr.f.3			\
	doc/man/man3/sorm2l.3			\
	doc/man/man3/sorm2l.f.3			\
	doc/man/man3/sorm2r.3			\
	doc/man/man3/sorm2r.f.3			\
	doc/man/man3/sormbr.3			\
	doc/man/man3/sormbr.f.3			\
	doc/man/man3/sormhr.3			\
	doc/man/man3/sormhr.f.3			\
	doc/man/man3/sorml2.3			\
	doc/man/man3/sorml2.f.3			\
	doc/man/man3/sormlq.3			\
	doc/man/man3/sormlq.f.3			\
	doc/man/man3/sormql.3			\
	doc/man/man3/sormql.f.3			\
	doc/man/man3/sormqr.3			\
	doc/man/man3/sormqr.f.3			\
	doc/man/man3/sormr2.3			\
	doc/man/man3/sormr2.f.3			\
	doc/man/man3/sormr3.3			\
	doc/man/man3/sormr3.f.3			\
	doc/man/man3/sormrq.3			\
	doc/man/man3/sormrq.f.3			\
	doc/man/man3/sormrz.3			\
	doc/man/man3/sormrz.f.3			\
	doc/man/man3/sormtr.3			\
	doc/man/man3/sormtr.f.3			\
	doc/man/man3/spbcon.3			\
	doc/man/man3/spbcon.f.3			\
	doc/man/man3/spbequ.3			\
	doc/man/man3/spbequ.f.3			\
	doc/man/man3/spbrfs.3			\
	doc/man/man3/spbrfs.f.3			\
	doc/man/man3/spbstf.3			\
	doc/man/man3/spbstf.f.3			\
	doc/man/man3/spbsv.3			\
	doc/man/man3/spbsv.f.3			\
	doc/man/man3/spbsvx.3			\
	doc/man/man3/spbsvx.f.3			\
	doc/man/man3/spbtf2.3			\
	doc/man/man3/spbtf2.f.3			\
	doc/man/man3/spbtrf.3			\
	doc/man/man3/spbtrf.f.3			\
	doc/man/man3/spbtrs.3			\
	doc/man/man3/spbtrs.f.3			\
	doc/man/man3/spftrf.3			\
	doc/man/man3/spftrf.f.3			\
	doc/man/man3/spftri.3			\
	doc/man/man3/spftri.f.3			\
	doc/man/man3/spftrs.3			\
	doc/man/man3/spftrs.f.3			\
	doc/man/man3/spocon.3			\
	doc/man/man3/spocon.f.3			\
	doc/man/man3/spoequ.3			\
	doc/man/man3/spoequb.3			\
	doc/man/man3/spoequb.f.3		\
	doc/man/man3/spoequ.f.3			\
	doc/man/man3/sporfs.3			\
	doc/man/man3/sporfs.f.3			\
	doc/man/man3/sporfsx.3			\
	doc/man/man3/sporfsx.f.3		\
	doc/man/man3/sposv.3			\
	doc/man/man3/sposv.f.3			\
	doc/man/man3/sposvx.3			\
	doc/man/man3/sposvx.f.3			\
	doc/man/man3/sposvxx.3			\
	doc/man/man3/sposvxx.f.3		\
	doc/man/man3/spotf2.3			\
	doc/man/man3/spotf2.f.3			\
	doc/man/man3/spotrf.3			\
	doc/man/man3/spotrf.f.3			\
	doc/man/man3/spotri.3			\
	doc/man/man3/spotri.f.3			\
	doc/man/man3/spotrs.3			\
	doc/man/man3/spotrs.f.3			\
	doc/man/man3/sppcon.3			\
	doc/man/man3/sppcon.f.3			\
	doc/man/man3/sppequ.3			\
	doc/man/man3/sppequ.f.3			\
	doc/man/man3/spprfs.3			\
	doc/man/man3/spprfs.f.3			\
	doc/man/man3/sppsv.3			\
	doc/man/man3/sppsv.f.3			\
	doc/man/man3/sppsvx.3			\
	doc/man/man3/sppsvx.f.3			\
	doc/man/man3/spptrf.3			\
	doc/man/man3/spptrf.f.3			\
	doc/man/man3/spptri.3			\
	doc/man/man3/spptri.f.3			\
	doc/man/man3/spptrs.3			\
	doc/man/man3/spptrs.f.3			\
	doc/man/man3/spstf2.3			\
	doc/man/man3/spstf2.f.3			\
	doc/man/man3/spstrf.3			\
	doc/man/man3/spstrf.f.3			\
	doc/man/man3/sptcon.3			\
	doc/man/man3/sptcon.f.3			\
	doc/man/man3/spteqr.3			\
	doc/man/man3/spteqr.f.3			\
	doc/man/man3/sptrfs.3			\
	doc/man/man3/sptrfs.f.3			\
	doc/man/man3/sptsv.3			\
	doc/man/man3/sptsv.f.3			\
	doc/man/man3/sptsvx.3			\
	doc/man/man3/sptsvx.f.3			\
	doc/man/man3/spttrf.3			\
	doc/man/man3/spttrf.f.3			\
	doc/man/man3/spttrs.3			\
	doc/man/man3/spttrs.f.3			\
	doc/man/man3/sptts2.3			\
	doc/man/man3/sptts2.f.3			\
	doc/man/man3/SRC_ilaver.f.3		\
	doc/man/man3/SRC_xerbla_array.f.3	\
	doc/man/man3/SRC_xerbla.f.3		\
	doc/man/man3/srot.3			\
	doc/man/man3/srot.f.3			\
	doc/man/man3/srotg.3			\
	doc/man/man3/srotg.f.3			\
	doc/man/man3/srotm.3			\
	doc/man/man3/srotm.f.3			\
	doc/man/man3/srotmg.3			\
	doc/man/man3/srotmg.f.3			\
	doc/man/man3/srscl.3			\
	doc/man/man3/srscl.f.3			\
	doc/man/man3/ssbev.3			\
	doc/man/man3/ssbevd.3			\
	doc/man/man3/ssbevd.f.3			\
	doc/man/man3/ssbev.f.3			\
	doc/man/man3/ssbevx.3			\
	doc/man/man3/ssbevx.f.3			\
	doc/man/man3/ssbgst.3			\
	doc/man/man3/ssbgst.f.3			\
	doc/man/man3/ssbgv.3			\
	doc/man/man3/ssbgvd.3			\
	doc/man/man3/ssbgvd.f.3			\
	doc/man/man3/ssbgv.f.3			\
	doc/man/man3/ssbgvx.3			\
	doc/man/man3/ssbgvx.f.3			\
	doc/man/man3/ssbmv.3			\
	doc/man/man3/ssbmv.f.3			\
	doc/man/man3/ssbtrd.3			\
	doc/man/man3/ssbtrd.f.3			\
	doc/man/man3/sscal.3			\
	doc/man/man3/sscal.f.3			\
	doc/man/man3/ssfrk.3			\
	doc/man/man3/ssfrk.f.3			\
	doc/man/man3/sspcon.3			\
	doc/man/man3/sspcon.f.3			\
	doc/man/man3/sspev.3			\
	doc/man/man3/sspevd.3			\
	doc/man/man3/sspevd.f.3			\
	doc/man/man3/sspev.f.3			\
	doc/man/man3/sspevx.3			\
	doc/man/man3/sspevx.f.3			\
	doc/man/man3/sspgst.3			\
	doc/man/man3/sspgst.f.3			\
	doc/man/man3/sspgv.3			\
	doc/man/man3/sspgvd.3			\
	doc/man/man3/sspgvd.f.3			\
	doc/man/man3/sspgv.f.3			\
	doc/man/man3/sspgvx.3			\
	doc/man/man3/sspgvx.f.3			\
	doc/man/man3/sspmv.3			\
	doc/man/man3/sspmv.f.3			\
	doc/man/man3/sspr2.3			\
	doc/man/man3/sspr2.f.3			\
	doc/man/man3/sspr.3			\
	doc/man/man3/sspr.f.3			\
	doc/man/man3/ssprfs.3			\
	doc/man/man3/ssprfs.f.3			\
	doc/man/man3/sspsv.3			\
	doc/man/man3/sspsv.f.3			\
	doc/man/man3/sspsvx.3			\
	doc/man/man3/sspsvx.f.3			\
	doc/man/man3/ssptrd.3			\
	doc/man/man3/ssptrd.f.3			\
	doc/man/man3/ssptrf.3			\
	doc/man/man3/ssptrf.f.3			\
	doc/man/man3/ssptri.3			\
	doc/man/man3/ssptri.f.3			\
	doc/man/man3/ssptrs.3			\
	doc/man/man3/ssptrs.f.3			\
	doc/man/man3/sstebz.3			\
	doc/man/man3/sstebz.f.3			\
	doc/man/man3/sstedc.3			\
	doc/man/man3/sstedc.f.3			\
	doc/man/man3/sstegr.3			\
	doc/man/man3/sstegr.f.3			\
	doc/man/man3/sstein.3			\
	doc/man/man3/sstein.f.3			\
	doc/man/man3/sstemr.3			\
	doc/man/man3/sstemr.f.3			\
	doc/man/man3/ssteqr.3			\
	doc/man/man3/ssteqr.f.3			\
	doc/man/man3/ssterf.3			\
	doc/man/man3/ssterf.f.3			\
	doc/man/man3/sstev.3			\
	doc/man/man3/sstevd.3			\
	doc/man/man3/sstevd.f.3			\
	doc/man/man3/sstev.f.3			\
	doc/man/man3/sstevr.3			\
	doc/man/man3/sstevr.f.3			\
	doc/man/man3/sstevx.3			\
	doc/man/man3/sstevx.f.3			\
	doc/man/man3/sswap.3			\
	doc/man/man3/sswap.f.3			\
	doc/man/man3/ssycon.3			\
	doc/man/man3/ssycon.f.3			\
	doc/man/man3/ssycon_rook.3		\
	doc/man/man3/ssycon_rook.f.3		\
	doc/man/man3/ssyconv.3			\
	doc/man/man3/ssyconv.f.3		\
	doc/man/man3/ssyequb.3			\
	doc/man/man3/ssyequb.f.3		\
	doc/man/man3/ssyev.3			\
	doc/man/man3/ssyevd.3			\
	doc/man/man3/ssyevd.f.3			\
	doc/man/man3/ssyev.f.3			\
	doc/man/man3/ssyevr.3			\
	doc/man/man3/ssyevr.f.3			\
	doc/man/man3/ssyevx.3			\
	doc/man/man3/ssyevx.f.3			\
	doc/man/man3/ssygs2.3			\
	doc/man/man3/ssygs2.f.3			\
	doc/man/man3/ssygst.3			\
	doc/man/man3/ssygst.f.3			\
	doc/man/man3/ssygv.3			\
	doc/man/man3/ssygvd.3			\
	doc/man/man3/ssygvd.f.3			\
	doc/man/man3/ssygv.f.3			\
	doc/man/man3/ssygvx.3			\
	doc/man/man3/ssygvx.f.3			\
	doc/man/man3/ssymm.3			\
	doc/man/man3/ssymm.f.3			\
	doc/man/man3/ssymv.3			\
	doc/man/man3/ssymv.f.3			\
	doc/man/man3/ssyr2.3			\
	doc/man/man3/ssyr2.f.3			\
	doc/man/man3/ssyr2k.3			\
	doc/man/man3/ssyr2k.f.3			\
	doc/man/man3/ssyr.3			\
	doc/man/man3/ssyr.f.3			\
	doc/man/man3/ssyrfs.3			\
	doc/man/man3/ssyrfs.f.3			\
	doc/man/man3/ssyrfsx.3			\
	doc/man/man3/ssyrfsx.f.3		\
	doc/man/man3/ssyrk.3			\
	doc/man/man3/ssyrk.f.3			\
	doc/man/man3/ssysv.3			\
	doc/man/man3/ssysv.f.3			\
	doc/man/man3/ssysv_rook.3		\
	doc/man/man3/ssysv_rook.f.3		\
	doc/man/man3/ssysvx.3			\
	doc/man/man3/ssysvx.f.3			\
	doc/man/man3/ssysvxx.3			\
	doc/man/man3/ssysvxx.f.3		\
	doc/man/man3/ssyswapr.3			\
	doc/man/man3/ssyswapr.f.3		\
	doc/man/man3/ssytd2.3			\
	doc/man/man3/ssytd2.f.3			\
	doc/man/man3/ssytf2.3			\
	doc/man/man3/ssytf2.f.3			\
	doc/man/man3/ssytf2_rook.3		\
	doc/man/man3/ssytf2_rook.f.3		\
	doc/man/man3/ssytrd.3			\
	doc/man/man3/ssytrd.f.3			\
	doc/man/man3/ssytrf.3			\
	doc/man/man3/ssytrf.f.3			\
	doc/man/man3/ssytrf_rook.3		\
	doc/man/man3/ssytrf_rook.f.3		\
	doc/man/man3/ssytri2.3			\
	doc/man/man3/ssytri2.f.3		\
	doc/man/man3/ssytri2x.3			\
	doc/man/man3/ssytri2x.f.3		\
	doc/man/man3/ssytri.3			\
	doc/man/man3/ssytri.f.3			\
	doc/man/man3/ssytri_rook.3		\
	doc/man/man3/ssytri_rook.f.3		\
	doc/man/man3/ssytrs2.3			\
	doc/man/man3/ssytrs2.f.3		\
	doc/man/man3/ssytrs.3			\
	doc/man/man3/ssytrs.f.3			\
	doc/man/man3/ssytrs_rook.3		\
	doc/man/man3/ssytrs_rook.f.3		\
	doc/man/man3/stbcon.3			\
	doc/man/man3/stbcon.f.3			\
	doc/man/man3/stbmv.3			\
	doc/man/man3/stbmv.f.3			\
	doc/man/man3/stbrfs.3			\
	doc/man/man3/stbrfs.f.3			\
	doc/man/man3/stbsv.3			\
	doc/man/man3/stbsv.f.3			\
	doc/man/man3/stbtrs.3			\
	doc/man/man3/stbtrs.f.3			\
	doc/man/man3/stfsm.3			\
	doc/man/man3/stfsm.f.3			\
	doc/man/man3/stftri.3			\
	doc/man/man3/stftri.f.3			\
	doc/man/man3/stfttp.3			\
	doc/man/man3/stfttp.f.3			\
	doc/man/man3/stfttr.3			\
	doc/man/man3/stfttr.f.3			\
	doc/man/man3/stgevc.3			\
	doc/man/man3/stgevc.f.3			\
	doc/man/man3/stgex2.3			\
	doc/man/man3/stgex2.f.3			\
	doc/man/man3/stgexc.3			\
	doc/man/man3/stgexc.f.3			\
	doc/man/man3/stgsen.3			\
	doc/man/man3/stgsen.f.3			\
	doc/man/man3/stgsja.3			\
	doc/man/man3/stgsja.f.3			\
	doc/man/man3/stgsna.3			\
	doc/man/man3/stgsna.f.3			\
	doc/man/man3/stgsy2.3			\
	doc/man/man3/stgsy2.f.3			\
	doc/man/man3/stgsyl.3			\
	doc/man/man3/stgsyl.f.3			\
	doc/man/man3/stpcon.3			\
	doc/man/man3/stpcon.f.3			\
	doc/man/man3/stpmqrt.3			\
	doc/man/man3/stpmqrt.f.3		\
	doc/man/man3/stpmv.3			\
	doc/man/man3/stpmv.f.3			\
	doc/man/man3/stpqrt2.3			\
	doc/man/man3/stpqrt2.f.3		\
	doc/man/man3/stpqrt.3			\
	doc/man/man3/stpqrt.f.3			\
	doc/man/man3/stprfb.3			\
	doc/man/man3/stprfb.f.3			\
	doc/man/man3/stprfs.3			\
	doc/man/man3/stprfs.f.3			\
	doc/man/man3/stpsv.3			\
	doc/man/man3/stpsv.f.3			\
	doc/man/man3/stptri.3			\
	doc/man/man3/stptri.f.3			\
	doc/man/man3/stptrs.3			\
	doc/man/man3/stptrs.f.3			\
	doc/man/man3/stpttf.3			\
	doc/man/man3/stpttf.f.3			\
	doc/man/man3/stpttr.3			\
	doc/man/man3/stpttr.f.3			\
	doc/man/man3/strcon.3			\
	doc/man/man3/strcon.f.3			\
	doc/man/man3/strevc.3			\
	doc/man/man3/strevc.f.3			\
	doc/man/man3/strexc.3			\
	doc/man/man3/strexc.f.3			\
	doc/man/man3/strmm.3			\
	doc/man/man3/strmm.f.3			\
	doc/man/man3/strmv.3			\
	doc/man/man3/strmv.f.3			\
	doc/man/man3/strrfs.3			\
	doc/man/man3/strrfs.f.3			\
	doc/man/man3/strsen.3			\
	doc/man/man3/strsen.f.3			\
	doc/man/man3/strsm.3			\
	doc/man/man3/strsm.f.3			\
	doc/man/man3/strsna.3			\
	doc/man/man3/strsna.f.3			\
	doc/man/man3/strsv.3			\
	doc/man/man3/strsv.f.3			\
	doc/man/man3/strsyl.3			\
	doc/man/man3/strsyl.f.3			\
	doc/man/man3/strti2.3			\
	doc/man/man3/strti2.f.3			\
	doc/man/man3/strtri.3			\
	doc/man/man3/strtri.f.3			\
	doc/man/man3/strtrs.3			\
	doc/man/man3/strtrs.f.3			\
	doc/man/man3/strttf.3			\
	doc/man/man3/strttf.f.3			\
	doc/man/man3/strttp.3			\
	doc/man/man3/strttp.f.3			\
	doc/man/man3/stzrqf.3			\
	doc/man/man3/stzrqf.f.3			\
	doc/man/man3/stzrzf.3			\
	doc/man/man3/stzrzf.f.3			\
	doc/man/man3/tstiee.3			\
	doc/man/man3/tstiee.f.3			\
	doc/man/man3/_Users_julie_Documents_Boulot_lapack-dev_lapack_trunk_BLAS_.3		      \
	doc/man/man3/_Users_julie_Documents_Boulot_lapack-dev_lapack_trunk_BLAS_SRC_.3		      \
	doc/man/man3/_Users_julie_Documents_Boulot_lapack-dev_lapack_trunk_INSTALL_.3		      \
	doc/man/man3/_Users_julie_Documents_Boulot_lapack-dev_lapack_trunk_SRC_.3		      \
	doc/man/man3/xerbla.3			\
	doc/man/man3/xerbla_array.3		\
	doc/man/man3/zaxpy.3			\
	doc/man/man3/zaxpy.f.3			\
	doc/man/man3/zbbcsd.3			\
	doc/man/man3/zbbcsd.f.3			\
	doc/man/man3/zbdsqr.3			\
	doc/man/man3/zbdsqr.f.3			\
	doc/man/man3/zcgesv.3			\
	doc/man/man3/zcgesv.f.3			\
	doc/man/man3/zcopy.3			\
	doc/man/man3/zcopy.f.3			\
	doc/man/man3/zcposv.3			\
	doc/man/man3/zcposv.f.3			\
	doc/man/man3/zdotc.3			\
	doc/man/man3/zdotc.f.3			\
	doc/man/man3/zdotu.3			\
	doc/man/man3/zdotu.f.3			\
	doc/man/man3/zdrot.3			\
	doc/man/man3/zdrot.f.3			\
	doc/man/man3/zdrscl.3			\
	doc/man/man3/zdrscl.f.3			\
	doc/man/man3/zdscal.3			\
	doc/man/man3/zdscal.f.3			\
	doc/man/man3/zgbbrd.3			\
	doc/man/man3/zgbbrd.f.3			\
	doc/man/man3/zgbcon.3			\
	doc/man/man3/zgbcon.f.3			\
	doc/man/man3/zgbequ.3			\
	doc/man/man3/zgbequb.3			\
	doc/man/man3/zgbequb.f.3		\
	doc/man/man3/zgbequ.f.3			\
	doc/man/man3/zgbmv.3			\
	doc/man/man3/zgbmv.f.3			\
	doc/man/man3/zgbrfs.3			\
	doc/man/man3/zgbrfs.f.3			\
	doc/man/man3/zgbrfsx.3			\
	doc/man/man3/zgbrfsx.f.3		\
	doc/man/man3/zgbsv.3			\
	doc/man/man3/zgbsv.f.3			\
	doc/man/man3/zgbsvx.3			\
	doc/man/man3/zgbsvx.f.3			\
	doc/man/man3/zgbsvxx.3			\
	doc/man/man3/zgbsvxx.f.3		\
	doc/man/man3/zgbtf2.3			\
	doc/man/man3/zgbtf2.f.3			\
	doc/man/man3/zgbtrf.3			\
	doc/man/man3/zgbtrf.f.3			\
	doc/man/man3/zgbtrs.3			\
	doc/man/man3/zgbtrs.f.3			\
	doc/man/man3/zgebak.3			\
	doc/man/man3/zgebak.f.3			\
	doc/man/man3/zgebal.3			\
	doc/man/man3/zgebal.f.3			\
	doc/man/man3/zgebd2.3			\
	doc/man/man3/zgebd2.f.3			\
	doc/man/man3/zgebrd.3			\
	doc/man/man3/zgebrd.f.3			\
	doc/man/man3/zgecon.3			\
	doc/man/man3/zgecon.f.3			\
	doc/man/man3/zgeequ.3			\
	doc/man/man3/zgeequb.3			\
	doc/man/man3/zgeequb.f.3		\
	doc/man/man3/zgeequ.f.3			\
	doc/man/man3/zgees.3			\
	doc/man/man3/zgees.f.3			\
	doc/man/man3/zgeesx.3			\
	doc/man/man3/zgeesx.f.3			\
	doc/man/man3/zgeev.3			\
	doc/man/man3/zgeev.f.3			\
	doc/man/man3/zgeevx.3			\
	doc/man/man3/zgeevx.f.3			\
	doc/man/man3/zgegs.3			\
	doc/man/man3/zgegs.f.3			\
	doc/man/man3/zgegv.3			\
	doc/man/man3/zgegv.f.3			\
	doc/man/man3/zgehd2.3			\
	doc/man/man3/zgehd2.f.3			\
	doc/man/man3/zgehrd.3			\
	doc/man/man3/zgehrd.f.3			\
	doc/man/man3/zgelq2.3			\
	doc/man/man3/zgelq2.f.3			\
	doc/man/man3/zgelqf.3			\
	doc/man/man3/zgelqf.f.3			\
	doc/man/man3/zgels.3			\
	doc/man/man3/zgelsd.3			\
	doc/man/man3/zgelsd.f.3			\
	doc/man/man3/zgels.f.3			\
	doc/man/man3/zgelss.3			\
	doc/man/man3/zgelss.f.3			\
	doc/man/man3/zgelsx.3			\
	doc/man/man3/zgelsx.f.3			\
	doc/man/man3/zgelsy.3			\
	doc/man/man3/zgelsy.f.3			\
	doc/man/man3/zgemm.3			\
	doc/man/man3/zgemm.f.3			\
	doc/man/man3/zgemqrt.3			\
	doc/man/man3/zgemqrt.f.3		\
	doc/man/man3/zgemv.3			\
	doc/man/man3/zgemv.f.3			\
	doc/man/man3/zgeql2.3			\
	doc/man/man3/zgeql2.f.3			\
	doc/man/man3/zgeqlf.3			\
	doc/man/man3/zgeqlf.f.3			\
	doc/man/man3/zgeqp3.3			\
	doc/man/man3/zgeqp3.f.3			\
	doc/man/man3/zgeqpf.3			\
	doc/man/man3/zgeqpf.f.3			\
	doc/man/man3/zgeqr2.3			\
	doc/man/man3/zgeqr2.f.3			\
	doc/man/man3/zgeqr2p.3			\
	doc/man/man3/zgeqr2p.f.3		\
	doc/man/man3/zgeqrf.3			\
	doc/man/man3/zgeqrf.f.3			\
	doc/man/man3/zgeqrfp.3			\
	doc/man/man3/zgeqrfp.f.3		\
	doc/man/man3/zgeqrt2.3			\
	doc/man/man3/zgeqrt2.f.3		\
	doc/man/man3/zgeqrt.3			\
	doc/man/man3/zgeqrt3.3			\
	doc/man/man3/zgeqrt3.f.3		\
	doc/man/man3/zgeqrt.f.3			\
	doc/man/man3/zgerc.3			\
	doc/man/man3/zgerc.f.3			\
	doc/man/man3/zgerfs.3			\
	doc/man/man3/zgerfs.f.3			\
	doc/man/man3/zgerfsx.3			\
	doc/man/man3/zgerfsx.f.3		\
	doc/man/man3/zgerq2.3			\
	doc/man/man3/zgerq2.f.3			\
	doc/man/man3/zgerqf.3			\
	doc/man/man3/zgerqf.f.3			\
	doc/man/man3/zgeru.3			\
	doc/man/man3/zgeru.f.3			\
	doc/man/man3/zgesc2.3			\
	doc/man/man3/zgesc2.f.3			\
	doc/man/man3/zgesdd.3			\
	doc/man/man3/zgesdd.f.3			\
	doc/man/man3/zgesv.3			\
	doc/man/man3/zgesvd.3			\
	doc/man/man3/zgesvd.f.3			\
	doc/man/man3/zgesv.f.3			\
	doc/man/man3/zgesvx.3			\
	doc/man/man3/zgesvx.f.3			\
	doc/man/man3/zgesvxx.3			\
	doc/man/man3/zgesvxx.f.3		\
	doc/man/man3/zgetc2.3			\
	doc/man/man3/zgetc2.f.3			\
	doc/man/man3/zgetf2.3			\
	doc/man/man3/zgetf2.f.3			\
	doc/man/man3/zgetrf.3			\
	doc/man/man3/zgetrf.f.3			\
	doc/man/man3/zgetri.3			\
	doc/man/man3/zgetri.f.3			\
	doc/man/man3/zgetrs.3			\
	doc/man/man3/zgetrs.f.3			\
	doc/man/man3/zggbak.3			\
	doc/man/man3/zggbak.f.3			\
	doc/man/man3/zggbal.3			\
	doc/man/man3/zggbal.f.3			\
	doc/man/man3/zgges.3			\
	doc/man/man3/zgges.f.3			\
	doc/man/man3/zggesx.3			\
	doc/man/man3/zggesx.f.3			\
	doc/man/man3/zggev.3			\
	doc/man/man3/zggev.f.3			\
	doc/man/man3/zggevx.3			\
	doc/man/man3/zggevx.f.3			\
	doc/man/man3/zggglm.3			\
	doc/man/man3/zggglm.f.3			\
	doc/man/man3/zgghrd.3			\
	doc/man/man3/zgghrd.f.3			\
	doc/man/man3/zgglse.3			\
	doc/man/man3/zgglse.f.3			\
	doc/man/man3/zggqrf.3			\
	doc/man/man3/zggqrf.f.3			\
	doc/man/man3/zggrqf.3			\
	doc/man/man3/zggrqf.f.3			\
	doc/man/man3/zggsvd.3			\
	doc/man/man3/zggsvd.f.3			\
	doc/man/man3/zggsvp.3			\
	doc/man/man3/zggsvp.f.3			\
	doc/man/man3/zgtcon.3			\
	doc/man/man3/zgtcon.f.3			\
	doc/man/man3/zgtrfs.3			\
	doc/man/man3/zgtrfs.f.3			\
	doc/man/man3/zgtsv.3			\
	doc/man/man3/zgtsv.f.3			\
	doc/man/man3/zgtsvx.3			\
	doc/man/man3/zgtsvx.f.3			\
	doc/man/man3/zgttrf.3			\
	doc/man/man3/zgttrf.f.3			\
	doc/man/man3/zgttrs.3			\
	doc/man/man3/zgttrs.f.3			\
	doc/man/man3/zgtts2.3			\
	doc/man/man3/zgtts2.f.3			\
	doc/man/man3/zhbev.3			\
	doc/man/man3/zhbevd.3			\
	doc/man/man3/zhbevd.f.3			\
	doc/man/man3/zhbev.f.3			\
	doc/man/man3/zhbevx.3			\
	doc/man/man3/zhbevx.f.3			\
	doc/man/man3/zhbgst.3			\
	doc/man/man3/zhbgst.f.3			\
	doc/man/man3/zhbgv.3			\
	doc/man/man3/zhbgvd.3			\
	doc/man/man3/zhbgvd.f.3			\
	doc/man/man3/zhbgv.f.3			\
	doc/man/man3/zhbgvx.3			\
	doc/man/man3/zhbgvx.f.3			\
	doc/man/man3/zhbmv.3			\
	doc/man/man3/zhbmv.f.3			\
	doc/man/man3/zhbtrd.3			\
	doc/man/man3/zhbtrd.f.3			\
	doc/man/man3/zhecon.3			\
	doc/man/man3/zhecon.f.3			\
	doc/man/man3/zhecon_rook.3		\
	doc/man/man3/zhecon_rook.f.3		\
	doc/man/man3/zheequb.3			\
	doc/man/man3/zheequb.f.3		\
	doc/man/man3/zheev.3			\
	doc/man/man3/zheevd.3			\
	doc/man/man3/zheevd.f.3			\
	doc/man/man3/zheev.f.3			\
	doc/man/man3/zheevr.3			\
	doc/man/man3/zheevr.f.3			\
	doc/man/man3/zheevx.3			\
	doc/man/man3/zheevx.f.3			\
	doc/man/man3/zhegs2.3			\
	doc/man/man3/zhegs2.f.3			\
	doc/man/man3/zhegst.3			\
	doc/man/man3/zhegst.f.3			\
	doc/man/man3/zhegv.3			\
	doc/man/man3/zhegvd.3			\
	doc/man/man3/zhegvd.f.3			\
	doc/man/man3/zhegv.f.3			\
	doc/man/man3/zhegvx.3			\
	doc/man/man3/zhegvx.f.3			\
	doc/man/man3/zhemm.3			\
	doc/man/man3/zhemm.f.3			\
	doc/man/man3/zhemv.3			\
	doc/man/man3/zhemv.f.3			\
	doc/man/man3/zher2.3			\
	doc/man/man3/zher2.f.3			\
	doc/man/man3/zher2k.3			\
	doc/man/man3/zher2k.f.3			\
	doc/man/man3/zher.3			\
	doc/man/man3/zher.f.3			\
	doc/man/man3/zherfs.3			\
	doc/man/man3/zherfs.f.3			\
	doc/man/man3/zherfsx.3			\
	doc/man/man3/zherfsx.f.3		\
	doc/man/man3/zherk.3			\
	doc/man/man3/zherk.f.3			\
	doc/man/man3/zhesv.3			\
	doc/man/man3/zhesv.f.3			\
	doc/man/man3/zhesv_rook.3		\
	doc/man/man3/zhesv_rook.f.3		\
	doc/man/man3/zhesvx.3			\
	doc/man/man3/zhesvx.f.3			\
	doc/man/man3/zhesvxx.3			\
	doc/man/man3/zhesvxx.f.3		\
	doc/man/man3/zheswapr.3			\
	doc/man/man3/zheswapr.f.3		\
	doc/man/man3/zhetd2.3			\
	doc/man/man3/zhetd2.f.3			\
	doc/man/man3/zhetf2.3			\
	doc/man/man3/zhetf2.f.3			\
	doc/man/man3/zhetf2_rook.3		\
	doc/man/man3/zhetf2_rook.f.3		\
	doc/man/man3/zhetrd.3			\
	doc/man/man3/zhetrd.f.3			\
	doc/man/man3/zhetrf.3			\
	doc/man/man3/zhetrf.f.3			\
	doc/man/man3/zhetrf_rook.3		\
	doc/man/man3/zhetrf_rook.f.3		\
	doc/man/man3/zhetri2.3			\
	doc/man/man3/zhetri2.f.3		\
	doc/man/man3/zhetri2x.3			\
	doc/man/man3/zhetri2x.f.3		\
	doc/man/man3/zhetri.3			\
	doc/man/man3/zhetri.f.3			\
	doc/man/man3/zhetri_rook.3		\
	doc/man/man3/zhetri_rook.f.3		\
	doc/man/man3/zhetrs2.3			\
	doc/man/man3/zhetrs2.f.3		\
	doc/man/man3/zhetrs.3			\
	doc/man/man3/zhetrs.f.3			\
	doc/man/man3/zhetrs_rook.3		\
	doc/man/man3/zhetrs_rook.f.3		\
	doc/man/man3/zhfrk.3			\
	doc/man/man3/zhfrk.f.3			\
	doc/man/man3/zhgeqz.3			\
	doc/man/man3/zhgeqz.f.3			\
	doc/man/man3/zhpcon.3			\
	doc/man/man3/zhpcon.f.3			\
	doc/man/man3/zhpev.3			\
	doc/man/man3/zhpevd.3			\
	doc/man/man3/zhpevd.f.3			\
	doc/man/man3/zhpev.f.3			\
	doc/man/man3/zhpevx.3			\
	doc/man/man3/zhpevx.f.3			\
	doc/man/man3/zhpgst.3			\
	doc/man/man3/zhpgst.f.3			\
	doc/man/man3/zhpgv.3			\
	doc/man/man3/zhpgvd.3			\
	doc/man/man3/zhpgvd.f.3			\
	doc/man/man3/zhpgv.f.3			\
	doc/man/man3/zhpgvx.3			\
	doc/man/man3/zhpgvx.f.3			\
	doc/man/man3/zhpmv.3			\
	doc/man/man3/zhpmv.f.3			\
	doc/man/man3/zhpr2.3			\
	doc/man/man3/zhpr2.f.3			\
	doc/man/man3/zhpr.3			\
	doc/man/man3/zhpr.f.3			\
	doc/man/man3/zhprfs.3			\
	doc/man/man3/zhprfs.f.3			\
	doc/man/man3/zhpsv.3			\
	doc/man/man3/zhpsv.f.3			\
	doc/man/man3/zhpsvx.3			\
	doc/man/man3/zhpsvx.f.3			\
	doc/man/man3/zhptrd.3			\
	doc/man/man3/zhptrd.f.3			\
	doc/man/man3/zhptrf.3			\
	doc/man/man3/zhptrf.f.3			\
	doc/man/man3/zhptri.3			\
	doc/man/man3/zhptri.f.3			\
	doc/man/man3/zhptrs.3			\
	doc/man/man3/zhptrs.f.3			\
	doc/man/man3/zhsein.3			\
	doc/man/man3/zhsein.f.3			\
	doc/man/man3/zhseqr.3			\
	doc/man/man3/zhseqr.f.3			\
	doc/man/man3/zlabrd.3			\
	doc/man/man3/zlabrd.f.3			\
	doc/man/man3/zlacgv.3			\
	doc/man/man3/zlacgv.f.3			\
	doc/man/man3/zlacn2.3			\
	doc/man/man3/zlacn2.f.3			\
	doc/man/man3/zlacon.3			\
	doc/man/man3/zlacon.f.3			\
	doc/man/man3/zlacp2.3			\
	doc/man/man3/zlacp2.f.3			\
	doc/man/man3/zlacpy.3			\
	doc/man/man3/zlacpy.f.3			\
	doc/man/man3/zlacrm.3			\
	doc/man/man3/zlacrm.f.3			\
	doc/man/man3/zlacrt.3			\
	doc/man/man3/zlacrt.f.3			\
	doc/man/man3/zladiv.3			\
	doc/man/man3/zladiv.f.3			\
	doc/man/man3/zlaed0.3			\
	doc/man/man3/zlaed0.f.3			\
	doc/man/man3/zlaed7.3			\
	doc/man/man3/zlaed7.f.3			\
	doc/man/man3/zlaed8.3			\
	doc/man/man3/zlaed8.f.3			\
	doc/man/man3/zlaein.3			\
	doc/man/man3/zlaein.f.3			\
	doc/man/man3/zlaesy.3			\
	doc/man/man3/zlaesy.f.3			\
	doc/man/man3/zlaev2.3			\
	doc/man/man3/zlaev2.f.3			\
	doc/man/man3/zlag2c.3			\
	doc/man/man3/zlag2c.f.3			\
	doc/man/man3/zla_gbamv.3		\
	doc/man/man3/zla_gbamv.f.3		\
	doc/man/man3/zla_gbrcond_c.3		\
	doc/man/man3/zla_gbrcond_c.f.3		\
	doc/man/man3/zla_gbrcond_x.3		\
	doc/man/man3/zla_gbrcond_x.f.3		\
	doc/man/man3/zla_gbrfsx_extended.3	\
	doc/man/man3/zla_gbrfsx_extended.f.3	\
	doc/man/man3/zla_gbrpvgrw.3		\
	doc/man/man3/zla_gbrpvgrw.f.3		\
	doc/man/man3/zla_geamv.3		\
	doc/man/man3/zla_geamv.f.3		\
	doc/man/man3/zla_gercond_c.3		\
	doc/man/man3/zla_gercond_c.f.3		\
	doc/man/man3/zla_gercond_x.3		\
	doc/man/man3/zla_gercond_x.f.3		\
	doc/man/man3/zla_gerfsx_extended.3	\
	doc/man/man3/zla_gerfsx_extended.f.3	\
	doc/man/man3/zla_gerpvgrw.3		\
	doc/man/man3/zla_gerpvgrw.f.3		\
	doc/man/man3/zlags2.3			\
	doc/man/man3/zlags2.f.3			\
	doc/man/man3/zlagtm.3			\
	doc/man/man3/zlagtm.f.3			\
	doc/man/man3/zla_heamv.3		\
	doc/man/man3/zla_heamv.f.3		\
	doc/man/man3/zlahef.3			\
	doc/man/man3/zlahef.f.3			\
	doc/man/man3/zlahef_rook.3		\
	doc/man/man3/zlahef_rook.f.3		\
	doc/man/man3/zla_hercond_c.3		\
	doc/man/man3/zla_hercond_c.f.3		\
	doc/man/man3/zla_hercond_x.3		\
	doc/man/man3/zla_hercond_x.f.3		\
	doc/man/man3/zla_herfsx_extended.3	\
	doc/man/man3/zla_herfsx_extended.f.3	\
	doc/man/man3/zla_herpvgrw.3		\
	doc/man/man3/zla_herpvgrw.f.3		\
	doc/man/man3/zlahqr.3			\
	doc/man/man3/zlahqr.f.3			\
	doc/man/man3/zlahr2.3			\
	doc/man/man3/zlahr2.f.3			\
	doc/man/man3/zlahrd.3			\
	doc/man/man3/zlahrd.f.3			\
	doc/man/man3/zlaic1.3			\
	doc/man/man3/zlaic1.f.3			\
	doc/man/man3/zla_lin_berr.3		\
	doc/man/man3/zla_lin_berr.f.3		\
	doc/man/man3/zlals0.3			\
	doc/man/man3/zlals0.f.3			\
	doc/man/man3/zlalsa.3			\
	doc/man/man3/zlalsa.f.3			\
	doc/man/man3/zlalsd.3			\
	doc/man/man3/zlalsd.f.3			\
	doc/man/man3/zlangb.3			\
	doc/man/man3/zlangb.f.3			\
	doc/man/man3/zlange.3			\
	doc/man/man3/zlange.f.3			\
	doc/man/man3/zlangt.3			\
	doc/man/man3/zlangt.f.3			\
	doc/man/man3/zlanhb.3			\
	doc/man/man3/zlanhb.f.3			\
	doc/man/man3/zlanhe.3			\
	doc/man/man3/zlanhe.f.3			\
	doc/man/man3/zlanhf.3			\
	doc/man/man3/zlanhf.f.3			\
	doc/man/man3/zlanhp.3			\
	doc/man/man3/zlanhp.f.3			\
	doc/man/man3/zlanhs.3			\
	doc/man/man3/zlanhs.f.3			\
	doc/man/man3/zlanht.3			\
	doc/man/man3/zlanht.f.3			\
	doc/man/man3/zlansb.3			\
	doc/man/man3/zlansb.f.3			\
	doc/man/man3/zlansp.3			\
	doc/man/man3/zlansp.f.3			\
	doc/man/man3/zlansy.3			\
	doc/man/man3/zlansy.f.3			\
	doc/man/man3/zlantb.3			\
	doc/man/man3/zlantb.f.3			\
	doc/man/man3/zlantp.3			\
	doc/man/man3/zlantp.f.3			\
	doc/man/man3/zlantr.3			\
	doc/man/man3/zlantr.f.3			\
	doc/man/man3/zlapll.3			\
	doc/man/man3/zlapll.f.3			\
	doc/man/man3/zlapmr.3			\
	doc/man/man3/zlapmr.f.3			\
	doc/man/man3/zlapmt.3			\
	doc/man/man3/zlapmt.f.3			\
	doc/man/man3/zla_porcond_c.3		\
	doc/man/man3/zla_porcond_c.f.3		\
	doc/man/man3/zla_porcond_x.3		\
	doc/man/man3/zla_porcond_x.f.3		\
	doc/man/man3/zla_porfsx_extended.3	\
	doc/man/man3/zla_porfsx_extended.f.3	\
	doc/man/man3/zla_porpvgrw.3		\
	doc/man/man3/zla_porpvgrw.f.3		\
	doc/man/man3/zlaqgb.3			\
	doc/man/man3/zlaqgb.f.3			\
	doc/man/man3/zlaqge.3			\
	doc/man/man3/zlaqge.f.3			\
	doc/man/man3/zlaqhb.3			\
	doc/man/man3/zlaqhb.f.3			\
	doc/man/man3/zlaqhe.3			\
	doc/man/man3/zlaqhe.f.3			\
	doc/man/man3/zlaqhp.3			\
	doc/man/man3/zlaqhp.f.3			\
	doc/man/man3/zlaqp2.3			\
	doc/man/man3/zlaqp2.f.3			\
	doc/man/man3/zlaqps.3			\
	doc/man/man3/zlaqps.f.3			\
	doc/man/man3/zlaqr0.3			\
	doc/man/man3/zlaqr0.f.3			\
	doc/man/man3/zlaqr1.3			\
	doc/man/man3/zlaqr1.f.3			\
	doc/man/man3/zlaqr2.3			\
	doc/man/man3/zlaqr2.f.3			\
	doc/man/man3/zlaqr3.3			\
	doc/man/man3/zlaqr3.f.3			\
	doc/man/man3/zlaqr4.3			\
	doc/man/man3/zlaqr4.f.3			\
	doc/man/man3/zlaqr5.3			\
	doc/man/man3/zlaqr5.f.3			\
	doc/man/man3/zlaqsb.3			\
	doc/man/man3/zlaqsb.f.3			\
	doc/man/man3/zlaqsp.3			\
	doc/man/man3/zlaqsp.f.3			\
	doc/man/man3/zlaqsy.3			\
	doc/man/man3/zlaqsy.f.3			\
	doc/man/man3/zlar1v.3			\
	doc/man/man3/zlar1v.f.3			\
	doc/man/man3/zlar2v.3			\
	doc/man/man3/zlar2v.f.3			\
	doc/man/man3/zlarcm.3			\
	doc/man/man3/zlarcm.f.3			\
	doc/man/man3/zlarf.3			\
	doc/man/man3/zlarfb.3			\
	doc/man/man3/zlarfb.f.3			\
	doc/man/man3/zlarf.f.3			\
	doc/man/man3/zlarfg.3			\
	doc/man/man3/zlarfg.f.3			\
	doc/man/man3/zlarfgp.3			\
	doc/man/man3/zlarfgp.f.3		\
	doc/man/man3/zlarft.3			\
	doc/man/man3/zlarft.f.3			\
	doc/man/man3/zlarfx.3			\
	doc/man/man3/zlarfx.f.3			\
	doc/man/man3/zlargv.3			\
	doc/man/man3/zlargv.f.3			\
	doc/man/man3/zlarnv.3			\
	doc/man/man3/zlarnv.f.3			\
	doc/man/man3/zlarrv.3			\
	doc/man/man3/zlarrv.f.3			\
	doc/man/man3/zlarscl2.3			\
	doc/man/man3/zlarscl2.f.3		\
	doc/man/man3/zlartg.3			\
	doc/man/man3/zlartg.f.3			\
	doc/man/man3/zlartv.3			\
	doc/man/man3/zlartv.f.3			\
	doc/man/man3/zlarz.3			\
	doc/man/man3/zlarzb.3			\
	doc/man/man3/zlarzb.f.3			\
	doc/man/man3/zlarz.f.3			\
	doc/man/man3/zlarzt.3			\
	doc/man/man3/zlarzt.f.3			\
	doc/man/man3/zlascl2.3			\
	doc/man/man3/zlascl2.f.3		\
	doc/man/man3/zlascl.3			\
	doc/man/man3/zlascl.f.3			\
	doc/man/man3/zlaset.3			\
	doc/man/man3/zlaset.f.3			\
	doc/man/man3/zlasr.3			\
	doc/man/man3/zlasr.f.3			\
	doc/man/man3/zlassq.3			\
	doc/man/man3/zlassq.f.3			\
	doc/man/man3/zlaswp.3			\
	doc/man/man3/zlaswp.f.3			\
	doc/man/man3/zla_syamv.3		\
	doc/man/man3/zla_syamv.f.3		\
	doc/man/man3/zlasyf.3			\
	doc/man/man3/zlasyf.f.3			\
	doc/man/man3/zlasyf_rook.3		\
	doc/man/man3/zlasyf_rook.f.3		\
	doc/man/man3/zla_syrcond_c.3		\
	doc/man/man3/zla_syrcond_c.f.3		\
	doc/man/man3/zla_syrcond_x.3		\
	doc/man/man3/zla_syrcond_x.f.3		\
	doc/man/man3/zla_syrfsx_extended.3	\
	doc/man/man3/zla_syrfsx_extended.f.3	\
	doc/man/man3/zla_syrpvgrw.3		\
	doc/man/man3/zla_syrpvgrw.f.3		\
	doc/man/man3/zlat2c.3			\
	doc/man/man3/zlat2c.f.3			\
	doc/man/man3/zlatbs.3			\
	doc/man/man3/zlatbs.f.3			\
	doc/man/man3/zlatdf.3			\
	doc/man/man3/zlatdf.f.3			\
	doc/man/man3/zlatps.3			\
	doc/man/man3/zlatps.f.3			\
	doc/man/man3/zlatrd.3			\
	doc/man/man3/zlatrd.f.3			\
	doc/man/man3/zlatrs.3			\
	doc/man/man3/zlatrs.f.3			\
	doc/man/man3/zlatrz.3			\
	doc/man/man3/zlatrz.f.3			\
	doc/man/man3/zlatzm.3			\
	doc/man/man3/zlatzm.f.3			\
	doc/man/man3/zlauu2.3			\
	doc/man/man3/zlauu2.f.3			\
	doc/man/man3/zlauum.3			\
	doc/man/man3/zlauum.f.3			\
	doc/man/man3/zla_wwaddw.3		\
	doc/man/man3/zla_wwaddw.f.3		\
	doc/man/man3/zpbcon.3			\
	doc/man/man3/zpbcon.f.3			\
	doc/man/man3/zpbequ.3			\
	doc/man/man3/zpbequ.f.3			\
	doc/man/man3/zpbrfs.3			\
	doc/man/man3/zpbrfs.f.3			\
	doc/man/man3/zpbstf.3			\
	doc/man/man3/zpbstf.f.3			\
	doc/man/man3/zpbsv.3			\
	doc/man/man3/zpbsv.f.3			\
	doc/man/man3/zpbsvx.3			\
	doc/man/man3/zpbsvx.f.3			\
	doc/man/man3/zpbtf2.3			\
	doc/man/man3/zpbtf2.f.3			\
	doc/man/man3/zpbtrf.3			\
	doc/man/man3/zpbtrf.f.3			\
	doc/man/man3/zpbtrs.3			\
	doc/man/man3/zpbtrs.f.3			\
	doc/man/man3/zpftrf.3			\
	doc/man/man3/zpftrf.f.3			\
	doc/man/man3/zpftri.3			\
	doc/man/man3/zpftri.f.3			\
	doc/man/man3/zpftrs.3			\
	doc/man/man3/zpftrs.f.3			\
	doc/man/man3/zpocon.3			\
	doc/man/man3/zpocon.f.3			\
	doc/man/man3/zpoequ.3			\
	doc/man/man3/zpoequb.3			\
	doc/man/man3/zpoequb.f.3		\
	doc/man/man3/zpoequ.f.3			\
	doc/man/man3/zporfs.3			\
	doc/man/man3/zporfs.f.3			\
	doc/man/man3/zporfsx.3			\
	doc/man/man3/zporfsx.f.3		\
	doc/man/man3/zposv.3			\
	doc/man/man3/zposv.f.3			\
	doc/man/man3/zposvx.3			\
	doc/man/man3/zposvx.f.3			\
	doc/man/man3/zposvxx.3			\
	doc/man/man3/zposvxx.f.3		\
	doc/man/man3/zpotf2.3			\
	doc/man/man3/zpotf2.f.3			\
	doc/man/man3/zpotrf.3			\
	doc/man/man3/zpotrf.f.3			\
	doc/man/man3/zpotri.3			\
	doc/man/man3/zpotri.f.3			\
	doc/man/man3/zpotrs.3			\
	doc/man/man3/zpotrs.f.3			\
	doc/man/man3/zppcon.3			\
	doc/man/man3/zppcon.f.3			\
	doc/man/man3/zppequ.3			\
	doc/man/man3/zppequ.f.3			\
	doc/man/man3/zpprfs.3			\
	doc/man/man3/zpprfs.f.3			\
	doc/man/man3/zppsv.3			\
	doc/man/man3/zppsv.f.3			\
	doc/man/man3/zppsvx.3			\
	doc/man/man3/zppsvx.f.3			\
	doc/man/man3/zpptrf.3			\
	doc/man/man3/zpptrf.f.3			\
	doc/man/man3/zpptri.3			\
	doc/man/man3/zpptri.f.3			\
	doc/man/man3/zpptrs.3			\
	doc/man/man3/zpptrs.f.3			\
	doc/man/man3/zpstf2.3			\
	doc/man/man3/zpstf2.f.3			\
	doc/man/man3/zpstrf.3			\
	doc/man/man3/zpstrf.f.3			\
	doc/man/man3/zptcon.3			\
	doc/man/man3/zptcon.f.3			\
	doc/man/man3/zpteqr.3			\
	doc/man/man3/zpteqr.f.3			\
	doc/man/man3/zptrfs.3			\
	doc/man/man3/zptrfs.f.3			\
	doc/man/man3/zptsv.3			\
	doc/man/man3/zptsv.f.3			\
	doc/man/man3/zptsvx.3			\
	doc/man/man3/zptsvx.f.3			\
	doc/man/man3/zpttrf.3			\
	doc/man/man3/zpttrf.f.3			\
	doc/man/man3/zpttrs.3			\
	doc/man/man3/zpttrs.f.3			\
	doc/man/man3/zptts2.3			\
	doc/man/man3/zptts2.f.3			\
	doc/man/man3/zrot.3			\
	doc/man/man3/zrot.f.3			\
	doc/man/man3/zrotg.3			\
	doc/man/man3/zrotg.f.3			\
	doc/man/man3/zscal.3			\
	doc/man/man3/zscal.f.3			\
	doc/man/man3/zspcon.3			\
	doc/man/man3/zspcon.f.3			\
	doc/man/man3/zspmv.3			\
	doc/man/man3/zspmv.f.3			\
	doc/man/man3/zspr.3			\
	doc/man/man3/zspr.f.3			\
	doc/man/man3/zsprfs.3			\
	doc/man/man3/zsprfs.f.3			\
	doc/man/man3/zspsv.3			\
	doc/man/man3/zspsv.f.3			\
	doc/man/man3/zspsvx.3			\
	doc/man/man3/zspsvx.f.3			\
	doc/man/man3/zsptrf.3			\
	doc/man/man3/zsptrf.f.3			\
	doc/man/man3/zsptri.3			\
	doc/man/man3/zsptri.f.3			\
	doc/man/man3/zsptrs.3			\
	doc/man/man3/zsptrs.f.3			\
	doc/man/man3/zstedc.3			\
	doc/man/man3/zstedc.f.3			\
	doc/man/man3/zstegr.3			\
	doc/man/man3/zstegr.f.3			\
	doc/man/man3/zstein.3			\
	doc/man/man3/zstein.f.3			\
	doc/man/man3/zstemr.3			\
	doc/man/man3/zstemr.f.3			\
	doc/man/man3/zsteqr.3			\
	doc/man/man3/zsteqr.f.3			\
	doc/man/man3/zswap.3			\
	doc/man/man3/zswap.f.3			\
	doc/man/man3/zsycon.3			\
	doc/man/man3/zsycon.f.3			\
	doc/man/man3/zsycon_rook.3		\
	doc/man/man3/zsycon_rook.f.3		\
	doc/man/man3/zsyconv.3			\
	doc/man/man3/zsyconv.f.3		\
	doc/man/man3/zsyequb.3			\
	doc/man/man3/zsyequb.f.3		\
	doc/man/man3/zsymm.3			\
	doc/man/man3/zsymm.f.3			\
	doc/man/man3/zsymv.3			\
	doc/man/man3/zsymv.f.3			\
	doc/man/man3/zsyr2k.3			\
	doc/man/man3/zsyr2k.f.3			\
	doc/man/man3/zsyr.3			\
	doc/man/man3/zsyr.f.3			\
	doc/man/man3/zsyrfs.3			\
	doc/man/man3/zsyrfs.f.3			\
	doc/man/man3/zsyrfsx.3			\
	doc/man/man3/zsyrfsx.f.3		\
	doc/man/man3/zsyrk.3			\
	doc/man/man3/zsyrk.f.3			\
	doc/man/man3/zsysv.3			\
	doc/man/man3/zsysv.f.3			\
	doc/man/man3/zsysv_rook.3		\
	doc/man/man3/zsysv_rook.f.3		\
	doc/man/man3/zsysvx.3			\
	doc/man/man3/zsysvx.f.3			\
	doc/man/man3/zsysvxx.3			\
	doc/man/man3/zsysvxx.f.3		\
	doc/man/man3/zsyswapr.3			\
	doc/man/man3/zsyswapr.f.3		\
	doc/man/man3/zsytf2.3			\
	doc/man/man3/zsytf2.f.3			\
	doc/man/man3/zsytf2_rook.3		\
	doc/man/man3/zsytf2_rook.f.3		\
	doc/man/man3/zsytrf.3			\
	doc/man/man3/zsytrf.f.3			\
	doc/man/man3/zsytrf_rook.3		\
	doc/man/man3/zsytrf_rook.f.3		\
	doc/man/man3/zsytri2.3			\
	doc/man/man3/zsytri2.f.3		\
	doc/man/man3/zsytri2x.3			\
	doc/man/man3/zsytri2x.f.3		\
	doc/man/man3/zsytri.3			\
	doc/man/man3/zsytri.f.3			\
	doc/man/man3/zsytri_rook.3		\
	doc/man/man3/zsytri_rook.f.3		\
	doc/man/man3/zsytrs2.3			\
	doc/man/man3/zsytrs2.f.3		\
	doc/man/man3/zsytrs.3			\
	doc/man/man3/zsytrs.f.3			\
	doc/man/man3/zsytrs_rook.3		\
	doc/man/man3/zsytrs_rook.f.3		\
	doc/man/man3/ztbcon.3			\
	doc/man/man3/ztbcon.f.3			\
	doc/man/man3/ztbmv.3			\
	doc/man/man3/ztbmv.f.3			\
	doc/man/man3/ztbrfs.3			\
	doc/man/man3/ztbrfs.f.3			\
	doc/man/man3/ztbsv.3			\
	doc/man/man3/ztbsv.f.3			\
	doc/man/man3/ztbtrs.3			\
	doc/man/man3/ztbtrs.f.3			\
	doc/man/man3/ztfsm.3			\
	doc/man/man3/ztfsm.f.3			\
	doc/man/man3/ztftri.3			\
	doc/man/man3/ztftri.f.3			\
	doc/man/man3/ztfttp.3			\
	doc/man/man3/ztfttp.f.3			\
	doc/man/man3/ztfttr.3			\
	doc/man/man3/ztfttr.f.3			\
	doc/man/man3/ztgevc.3			\
	doc/man/man3/ztgevc.f.3			\
	doc/man/man3/ztgex2.3			\
	doc/man/man3/ztgex2.f.3			\
	doc/man/man3/ztgexc.3			\
	doc/man/man3/ztgexc.f.3			\
	doc/man/man3/ztgsen.3			\
	doc/man/man3/ztgsen.f.3			\
	doc/man/man3/ztgsja.3			\
	doc/man/man3/ztgsja.f.3			\
	doc/man/man3/ztgsna.3			\
	doc/man/man3/ztgsna.f.3			\
	doc/man/man3/ztgsy2.3			\
	doc/man/man3/ztgsy2.f.3			\
	doc/man/man3/ztgsyl.3			\
	doc/man/man3/ztgsyl.f.3			\
	doc/man/man3/ztpcon.3			\
	doc/man/man3/ztpcon.f.3			\
	doc/man/man3/ztpmqrt.3			\
	doc/man/man3/ztpmqrt.f.3		\
	doc/man/man3/ztpmv.3			\
	doc/man/man3/ztpmv.f.3			\
	doc/man/man3/ztpqrt2.3			\
	doc/man/man3/ztpqrt2.f.3		\
	doc/man/man3/ztpqrt.3			\
	doc/man/man3/ztpqrt.f.3			\
	doc/man/man3/ztprfb.3			\
	doc/man/man3/ztprfb.f.3			\
	doc/man/man3/ztprfs.3			\
	doc/man/man3/ztprfs.f.3			\
	doc/man/man3/ztpsv.3			\
	doc/man/man3/ztpsv.f.3			\
	doc/man/man3/ztptri.3			\
	doc/man/man3/ztptri.f.3			\
	doc/man/man3/ztptrs.3			\
	doc/man/man3/ztptrs.f.3			\
	doc/man/man3/ztpttf.3			\
	doc/man/man3/ztpttf.f.3			\
	doc/man/man3/ztpttr.3			\
	doc/man/man3/ztpttr.f.3			\
	doc/man/man3/ztrcon.3			\
	doc/man/man3/ztrcon.f.3			\
	doc/man/man3/ztrevc.3			\
	doc/man/man3/ztrevc.f.3			\
	doc/man/man3/ztrexc.3			\
	doc/man/man3/ztrexc.f.3			\
	doc/man/man3/ztrmm.3			\
	doc/man/man3/ztrmm.f.3			\
	doc/man/man3/ztrmv.3			\
	doc/man/man3/ztrmv.f.3			\
	doc/man/man3/ztrrfs.3			\
	doc/man/man3/ztrrfs.f.3			\
	doc/man/man3/ztrsen.3			\
	doc/man/man3/ztrsen.f.3			\
	doc/man/man3/ztrsm.3			\
	doc/man/man3/ztrsm.f.3			\
	doc/man/man3/ztrsna.3			\
	doc/man/man3/ztrsna.f.3			\
	doc/man/man3/ztrsv.3			\
	doc/man/man3/ztrsv.f.3			\
	doc/man/man3/ztrsyl.3			\
	doc/man/man3/ztrsyl.f.3			\
	doc/man/man3/ztrti2.3			\
	doc/man/man3/ztrti2.f.3			\
	doc/man/man3/ztrtri.3			\
	doc/man/man3/ztrtri.f.3			\
	doc/man/man3/ztrtrs.3			\
	doc/man/man3/ztrtrs.f.3			\
	doc/man/man3/ztrttf.3			\
	doc/man/man3/ztrttf.f.3			\
	doc/man/man3/ztrttp.3			\
	doc/man/man3/ztrttp.f.3			\
	doc/man/man3/ztzrqf.3			\
	doc/man/man3/ztzrqf.f.3			\
	doc/man/man3/ztzrzf.3			\
	doc/man/man3/ztzrzf.f.3			\
	doc/man/man3/zunbdb1.3			\
	doc/man/man3/zunbdb1.f.3		\
	doc/man/man3/zunbdb2.3			\
	doc/man/man3/zunbdb2.f.3		\
	doc/man/man3/zunbdb.3			\
	doc/man/man3/zunbdb3.3			\
	doc/man/man3/zunbdb3.f.3		\
	doc/man/man3/zunbdb4.3			\
	doc/man/man3/zunbdb4.f.3		\
	doc/man/man3/zunbdb5.3			\
	doc/man/man3/zunbdb5.f.3		\
	doc/man/man3/zunbdb6.3			\
	doc/man/man3/zunbdb6.f.3		\
	doc/man/man3/zunbdb.f.3			\
	doc/man/man3/zuncsd2by1.3		\
	doc/man/man3/zuncsd2by1.f.3		\
	doc/man/man3/zuncsd.3			\
	doc/man/man3/zuncsd.f.3			\
	doc/man/man3/zung2l.3			\
	doc/man/man3/zung2l.f.3			\
	doc/man/man3/zung2r.3			\
	doc/man/man3/zung2r.f.3			\
	doc/man/man3/zungbr.3			\
	doc/man/man3/zungbr.f.3			\
	doc/man/man3/zunghr.3			\
	doc/man/man3/zunghr.f.3			\
	doc/man/man3/zungl2.3			\
	doc/man/man3/zungl2.f.3			\
	doc/man/man3/zunglq.3			\
	doc/man/man3/zunglq.f.3			\
	doc/man/man3/zungql.3			\
	doc/man/man3/zungql.f.3			\
	doc/man/man3/zungqr.3			\
	doc/man/man3/zungqr.f.3			\
	doc/man/man3/zungr2.3			\
	doc/man/man3/zungr2.f.3			\
	doc/man/man3/zungrq.3			\
	doc/man/man3/zungrq.f.3			\
	doc/man/man3/zungtr.3			\
	doc/man/man3/zungtr.f.3			\
	doc/man/man3/zunm2l.3			\
	doc/man/man3/zunm2l.f.3			\
	doc/man/man3/zunm2r.3			\
	doc/man/man3/zunm2r.f.3			\
	doc/man/man3/zunmbr.3			\
	doc/man/man3/zunmbr.f.3			\
	doc/man/man3/zunmhr.3			\
	doc/man/man3/zunmhr.f.3			\
	doc/man/man3/zunml2.3			\
	doc/man/man3/zunml2.f.3			\
	doc/man/man3/zunmlq.3			\
	doc/man/man3/zunmlq.f.3			\
	doc/man/man3/zunmql.3			\
	doc/man/man3/zunmql.f.3			\
	doc/man/man3/zunmqr.3			\
	doc/man/man3/zunmqr.f.3			\
	doc/man/man3/zunmr2.3			\
	doc/man/man3/zunmr2.f.3			\
	doc/man/man3/zunmr3.3			\
	doc/man/man3/zunmr3.f.3			\
	doc/man/man3/zunmrq.3			\
	doc/man/man3/zunmrq.f.3			\
	doc/man/man3/zunmrz.3			\
	doc/man/man3/zunmrz.f.3			\
	doc/man/man3/zunmtr.3			\
	doc/man/man3/zunmtr.f.3			\
	doc/man/man3/zupgtr.3			\
	doc/man/man3/zupgtr.f.3			\
	doc/man/man3/zupmtr.3			\
	doc/man/man3/zupmtr.f.3

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
