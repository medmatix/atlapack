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
#### tests

## Process this file with automake to produce Makefile.in

check_PROGRAMS	=
LDADD		= liblapacke.la
TESTS		= $(check_PROGRAMS)

## --------------------------------------------------------------------
## Linear algebra tests.
## --------------------------------------------------------------------

LINDIR	= tests/lin

ALINTST = \
	$(LINDIR)/aladhd.f	$(LINDIR)/alaerh.f	\
	$(LINDIR)/alaesm.f	$(LINDIR)/alahd.f	\
	$(LINDIR)/alareq.f	$(LINDIR)/alasum.f	\
	$(LINDIR)/alasvm.f	$(LINDIR)/chkxer.f	\
	$(LINDIR)/icopy.f	$(LINDIR)/ilaenv.f	\
	$(LINDIR)/xlaenv.f	$(LINDIR)/xerbla.f

SCLNTST	= $(LINDIR)/slaord.f

DZLNTST	= $(LINDIR)/dlaord.f

SLINTST	= \
	$(LINDIR)/schkaa.f	$(LINDIR)/schkeq.f	\
	$(LINDIR)/schkgb.f	$(LINDIR)/schkge.f	\
	$(LINDIR)/schkgt.f	$(LINDIR)/schklq.f	\
	$(LINDIR)/schkpb.f	$(LINDIR)/schkpo.f	\
	$(LINDIR)/schkps.f	$(LINDIR)/schkpp.f	\
	$(LINDIR)/schkpt.f	$(LINDIR)/schkq3.f	\
	$(LINDIR)/schkql.f	$(LINDIR)/schkqp.f	\
	$(LINDIR)/schkqr.f	$(LINDIR)/schkrq.f	\
	$(LINDIR)/schksp.f	$(LINDIR)/schksy.f	\
	$(LINDIR)/schksy_rook.f	$(LINDIR)/schktb.f	\
	$(LINDIR)/schktp.f	$(LINDIR)/schktr.f	\
	$(LINDIR)/schktz.f	$(LINDIR)/sdrvgt.f	\
	$(LINDIR)/sdrvls.f	$(LINDIR)/sdrvpb.f	\
	$(LINDIR)/sdrvpp.f	$(LINDIR)/sdrvpt.f	\
	$(LINDIR)/sdrvsp.f	$(LINDIR)/sdrvsy_rook.f	\
	$(LINDIR)/serrgt.f	$(LINDIR)/serrlq.f	\
	$(LINDIR)/serrls.f	$(LINDIR)/serrps.f	\
	$(LINDIR)/serrql.f	$(LINDIR)/serrqp.f	\
	$(LINDIR)/serrqr.f	$(LINDIR)/serrrq.f	\
	$(LINDIR)/serrtr.f	$(LINDIR)/serrtz.f	\
	$(LINDIR)/sgbt01.f	$(LINDIR)/sgbt02.f	\
	$(LINDIR)/sgbt05.f	$(LINDIR)/sgelqs.f	\
	$(LINDIR)/sgeqls.f	$(LINDIR)/sgeqrs.f	\
	$(LINDIR)/sgerqs.f	$(LINDIR)/sget01.f	\
	$(LINDIR)/sget02.f	$(LINDIR)/sget03.f	\
	$(LINDIR)/sget04.f	$(LINDIR)/sget06.f	\
	$(LINDIR)/sget07.f	$(LINDIR)/sgtt01.f	\
	$(LINDIR)/sgtt02.f	$(LINDIR)/sgtt05.f	\
	$(LINDIR)/slaptm.f	$(LINDIR)/slarhs.f	\
	$(LINDIR)/slatb4.f	$(LINDIR)/slatb5.f	\
	$(LINDIR)/slattb.f	$(LINDIR)/slattp.f	\
	$(LINDIR)/slattr.f	$(LINDIR)/slavsp.f	\
	$(LINDIR)/slavsy.f	$(LINDIR)/slavsy_rook.f	\
	$(LINDIR)/slqt01.f	$(LINDIR)/slqt02.f	\
	$(LINDIR)/slqt03.f	$(LINDIR)/spbt01.f	\
	$(LINDIR)/spbt02.f	$(LINDIR)/spbt05.f	\
	$(LINDIR)/spot01.f	$(LINDIR)/spot02.f	\
	$(LINDIR)/spot03.f	$(LINDIR)/spot05.f	\
	$(LINDIR)/spst01.f	$(LINDIR)/sppt01.f	\
	$(LINDIR)/sppt02.f	$(LINDIR)/sppt03.f	\
	$(LINDIR)/sppt05.f	$(LINDIR)/sptt01.f	\
	$(LINDIR)/sptt02.f	$(LINDIR)/sptt05.f	\
	$(LINDIR)/sqlt01.f	$(LINDIR)/sqlt02.f	\
	$(LINDIR)/sqlt03.f	$(LINDIR)/sqpt01.f	\
	$(LINDIR)/sqrt01.f	$(LINDIR)/sqrt01p.f	\
	$(LINDIR)/sqrt02.f	$(LINDIR)/sqrt03.f	\
	$(LINDIR)/sqrt11.f	$(LINDIR)/sqrt12.f	\
	$(LINDIR)/sqrt13.f	$(LINDIR)/sqrt14.f	\
	$(LINDIR)/sqrt15.f	$(LINDIR)/sqrt16.f	\
	$(LINDIR)/sqrt17.f	$(LINDIR)/srqt01.f	\
	$(LINDIR)/srqt02.f	$(LINDIR)/srqt03.f	\
	$(LINDIR)/srzt01.f	$(LINDIR)/srzt02.f	\
	$(LINDIR)/sspt01.f	$(LINDIR)/ssyt01.f	\
	$(LINDIR)/ssyt01_rook.f	$(LINDIR)/stbt02.f	\
	$(LINDIR)/stbt03.f	$(LINDIR)/stbt05.f	\
	$(LINDIR)/stbt06.f	$(LINDIR)/stpt01.f	\
	$(LINDIR)/stpt02.f	$(LINDIR)/stpt03.f	\
	$(LINDIR)/stpt05.f	$(LINDIR)/stpt06.f	\
	$(LINDIR)/strt01.f	$(LINDIR)/strt02.f	\
	$(LINDIR)/strt03.f	$(LINDIR)/strt05.f	\
	$(LINDIR)/strt06.f	$(LINDIR)/stzt01.f	\
	$(LINDIR)/stzt02.f	$(LINDIR)/sgennd.f	\
	$(LINDIR)/sqrt04.f	$(LINDIR)/sqrt05.f	\
	$(LINDIR)/schkqrt.f	$(LINDIR)/serrqrt.f	\
	$(LINDIR)/schkqrtp.f	$(LINDIR)/serrqrtp.f

## --------------------------------------------------------------------

if USEXBLAS
SLINTST += 	\
	$(LINDIR)/serrvxx.f	$(LINDIR)/sdrvgex.f	\
	$(LINDIR)/sdrvsyx.f	$(LINDIR)/serrgex.f	\
	$(LINDIR)/sdrvgbx.f	$(LINDIR)/sdrvpox.f	\
	$(LINDIR)/sebchvxx.f	$(LINDIR)/serrsyx.f	\
	$(LINDIR)/serrpox.f

else
SLINTST += 	\
	$(LINDIR)/serrvx.f	$(LINDIR)/sdrvge.f	\
	$(LINDIR)/sdrvsy.f	$(LINDIR)/serrge.f	\
	$(LINDIR)/sdrvgb.f	$(LINDIR)/sdrvpo.f	\
	$(LINDIR)/serrsy.f	$(LINDIR)/serrpo.f
endif

CLINTST = 	\
	$(LINDIR)/cchkaa.f	$(LINDIR)/cchkeq.f	\
	$(LINDIR)/cchkgb.f	$(LINDIR)/cchkge.f	\
	$(LINDIR)/cchkgt.f	$(LINDIR)/cchkhe.f	\
	$(LINDIR)/cchkhe_rook.f	$(LINDIR)/cchkhp.f	\
	$(LINDIR)/cchklq.f	$(LINDIR)/cchkpb.f	\
	$(LINDIR)/cchkpo.f	$(LINDIR)/cchkps.f	\
	$(LINDIR)/cchkpp.f	$(LINDIR)/cchkpt.f	\
	$(LINDIR)/cchkq3.f	$(LINDIR)/cchkql.f	\
	$(LINDIR)/cchkqp.f	$(LINDIR)/cchkqr.f	\
	$(LINDIR)/cchkrq.f	$(LINDIR)/cchksp.f	\
	$(LINDIR)/cchksy.f	$(LINDIR)/cchksy_rook.f	\
	$(LINDIR)/cchktb.f	$(LINDIR)/cchktp.f	\
	$(LINDIR)/cchktr.f	$(LINDIR)/cchktz.f	\
	$(LINDIR)/cdrvgt.f	$(LINDIR)/cdrvhe_rook.f	\
	$(LINDIR)/cdrvhp.f	$(LINDIR)/cdrvls.f	\
	$(LINDIR)/cdrvpb.f	$(LINDIR)/cdrvpp.f	\
	$(LINDIR)/cdrvpt.f	$(LINDIR)/cdrvsp.f	\
	$(LINDIR)/cdrvsy_rook.f	$(LINDIR)/cerrgt.f	\
	$(LINDIR)/cerrlq.f	$(LINDIR)/cerrls.f	\
	$(LINDIR)/cerrps.f	$(LINDIR)/cerrql.f	\
	$(LINDIR)/cerrqp.f	$(LINDIR)/cerrqr.f	\
	$(LINDIR)/cerrrq.f	$(LINDIR)/cerrtr.f	\
	$(LINDIR)/cerrtz.f	$(LINDIR)/cgbt01.f	\
	$(LINDIR)/cgbt02.f	$(LINDIR)/cgbt05.f	\
	$(LINDIR)/cgelqs.f	$(LINDIR)/cgeqls.f	\
	$(LINDIR)/cgeqrs.f	$(LINDIR)/cgerqs.f	\
	$(LINDIR)/cget01.f	$(LINDIR)/cget02.f	\
	$(LINDIR)/cget03.f	$(LINDIR)/cget04.f	\
	$(LINDIR)/cget07.f	$(LINDIR)/cgtt01.f	\
	$(LINDIR)/cgtt02.f	$(LINDIR)/cgtt05.f	\
	$(LINDIR)/chet01.f	$(LINDIR)/chet01_rook.f	\
	$(LINDIR)/chpt01.f	$(LINDIR)/claipd.f	\
	$(LINDIR)/claptm.f	$(LINDIR)/clarhs.f	\
	$(LINDIR)/clatb4.f	$(LINDIR)/clatb5.f	\
	$(LINDIR)/clatsp.f	$(LINDIR)/clatsy.f	\
	$(LINDIR)/clattb.f	$(LINDIR)/clattp.f	\
	$(LINDIR)/clattr.f	$(LINDIR)/clavhe.f	\
	$(LINDIR)/clavhe_rook.f	$(LINDIR)/clavhp.f	\
	$(LINDIR)/clavsp.f	$(LINDIR)/clavsy.f	\
	$(LINDIR)/clavsy_rook.f	$(LINDIR)/clqt01.f	\
	$(LINDIR)/clqt02.f	$(LINDIR)/clqt03.f	\
	$(LINDIR)/cpbt01.f	$(LINDIR)/cpbt02.f	\
	$(LINDIR)/cpbt05.f	$(LINDIR)/cpot01.f	\
	$(LINDIR)/cpot02.f	$(LINDIR)/cpot03.f	\
	$(LINDIR)/cpot05.f	$(LINDIR)/cpst01.f	\
	$(LINDIR)/cppt01.f	$(LINDIR)/cppt02.f	\
	$(LINDIR)/cppt03.f	$(LINDIR)/cppt05.f	\
	$(LINDIR)/cptt01.f	$(LINDIR)/cptt02.f	\
	$(LINDIR)/cptt05.f	$(LINDIR)/cqlt01.f	\
	$(LINDIR)/cqlt02.f	$(LINDIR)/cqlt03.f	\
	$(LINDIR)/cqpt01.f	$(LINDIR)/cqrt01.f	\
	$(LINDIR)/cqrt01p.f	$(LINDIR)/cqrt02.f	\
	$(LINDIR)/cqrt03.f	$(LINDIR)/cqrt11.f	\
	$(LINDIR)/cqrt12.f	$(LINDIR)/cqrt13.f	\
	$(LINDIR)/cqrt14.f	$(LINDIR)/cqrt15.f	\
	$(LINDIR)/cqrt16.f	$(LINDIR)/cqrt17.f	\
	$(LINDIR)/crqt01.f	$(LINDIR)/crqt02.f	\
	$(LINDIR)/crqt03.f	$(LINDIR)/crzt01.f	\
	$(LINDIR)/crzt02.f	$(LINDIR)/csbmv.f	\
	$(LINDIR)/cspt01.f	$(LINDIR)/cspt02.f	\
	$(LINDIR)/cspt03.f	$(LINDIR)/csyt01.f	\
	$(LINDIR)/csyt01_rook.f	$(LINDIR)/csyt02.f	\
	$(LINDIR)/csyt03.f	$(LINDIR)/ctbt02.f	\
	$(LINDIR)/ctbt03.f	$(LINDIR)/ctbt05.f	\
	$(LINDIR)/ctbt06.f	$(LINDIR)/ctpt01.f	\
	$(LINDIR)/ctpt02.f	$(LINDIR)/ctpt03.f	\
	$(LINDIR)/ctpt05.f	$(LINDIR)/ctpt06.f	\
	$(LINDIR)/ctrt01.f	$(LINDIR)/ctrt02.f	\
	$(LINDIR)/ctrt03.f	$(LINDIR)/ctrt05.f	\
	$(LINDIR)/ctrt06.f	$(LINDIR)/ctzt01.f	\
	$(LINDIR)/ctzt02.f	$(LINDIR)/sget06.f	\
	$(LINDIR)/cgennd.f	$(LINDIR)/cqrt04.f	\
	$(LINDIR)/cqrt05.f	$(LINDIR)/cchkqrt.f	\
	$(LINDIR)/cerrqrt.f	$(LINDIR)/cchkqrtp.f	\
	$(LINDIR)/cerrqrtp.f

if USEXBLAS
CLINTST += 	\
	$(LINDIR)/cerrvxx.f	$(LINDIR)/cdrvgex.f	\
	$(LINDIR)/cdrvsyx.f	$(LINDIR)/cdrvgbx.f	\
	$(LINDIR)/cerrgex.f	$(LINDIR)/cdrvpox.f	\
	$(LINDIR)/cdrvhex.f	$(LINDIR)/cerrpox.f	\
	$(LINDIR)/cebchvxx.f	$(LINDIR)/cerrsyx.f	\
	$(LINDIR)/cerrhex.f
else
CLINTST += 	\
	$(LINDIR)/cerrvx.f	$(LINDIR)/cdrvge.f	\
	$(LINDIR)/cdrvsy.f	$(LINDIR)/cdrvgb.f	\
	$(LINDIR)/cerrge.f	$(LINDIR)/cdrvpo.f	\
	$(LINDIR)/cdrvhe.f	$(LINDIR)/cerrpo.f	\
	$(LINDIR)/cerrsy.f	$(LINDIR)/cerrhe.f
endif

DLINTST = 	\
	$(LINDIR)/dchkaa.f	$(LINDIR)/dchkeq.f	\
	$(LINDIR)/dchkgb.f	$(LINDIR)/dchkge.f	\
	$(LINDIR)/dchkgt.f	$(LINDIR)/dchklq.f	\
	$(LINDIR)/dchkpb.f	$(LINDIR)/dchkpo.f	\
	$(LINDIR)/dchkps.f	$(LINDIR)/dchkpp.f	\
	$(LINDIR)/dchkpt.f	$(LINDIR)/dchkq3.f	\
	$(LINDIR)/dchkql.f	$(LINDIR)/dchkqp.f	\
	$(LINDIR)/dchkqr.f	$(LINDIR)/dchkrq.f	\
	$(LINDIR)/dchksp.f	$(LINDIR)/dchksy.f	\
	$(LINDIR)/dchksy_rook.f	$(LINDIR)/dchktb.f	\
	$(LINDIR)/dchktp.f	$(LINDIR)/dchktr.f	\
	$(LINDIR)/dchktz.f	$(LINDIR)/ddrvgt.f	\
	$(LINDIR)/ddrvls.f	$(LINDIR)/ddrvpb.f	\
	$(LINDIR)/ddrvpp.f	$(LINDIR)/ddrvpt.f	\
	$(LINDIR)/ddrvsp.f	$(LINDIR)/ddrvsy_rook.f	\
	$(LINDIR)/derrgt.f	$(LINDIR)/derrlq.f	\
	$(LINDIR)/derrls.f	$(LINDIR)/derrps.f	\
	$(LINDIR)/derrql.f	$(LINDIR)/derrqp.f	\
	$(LINDIR)/derrqr.f	$(LINDIR)/derrrq.f	\
	$(LINDIR)/derrtr.f	$(LINDIR)/derrtz.f	\
	$(LINDIR)/dgbt01.f	$(LINDIR)/dgbt02.f	\
	$(LINDIR)/dgbt05.f	$(LINDIR)/dgelqs.f	\
	$(LINDIR)/dgeqls.f	$(LINDIR)/dgeqrs.f	\
	$(LINDIR)/dgerqs.f	$(LINDIR)/dget01.f	\
	$(LINDIR)/dget02.f	$(LINDIR)/dget03.f	\
	$(LINDIR)/dget04.f	$(LINDIR)/dget06.f	\
	$(LINDIR)/dget07.f	$(LINDIR)/dgtt01.f	\
	$(LINDIR)/dgtt02.f	$(LINDIR)/dgtt05.f	\
	$(LINDIR)/dlaptm.f	$(LINDIR)/dlarhs.f	\
	$(LINDIR)/dlatb4.f	$(LINDIR)/dlatb5.f	\
	$(LINDIR)/dlattb.f	$(LINDIR)/dlattp.f	\
	$(LINDIR)/dlattr.f	$(LINDIR)/dlavsp.f	\
	$(LINDIR)/dlavsy.f	$(LINDIR)/dlavsy_rook.f	\
	$(LINDIR)/dlqt01.f	$(LINDIR)/dlqt02.f	\
	$(LINDIR)/dlqt03.f	$(LINDIR)/dpbt01.f	\
	$(LINDIR)/dpbt02.f	$(LINDIR)/dpbt05.f	\
	$(LINDIR)/dpot01.f	$(LINDIR)/dpot02.f	\
	$(LINDIR)/dpot03.f	$(LINDIR)/dpot05.f	\
	$(LINDIR)/dpst01.f	$(LINDIR)/dppt01.f	\
	$(LINDIR)/dppt02.f	$(LINDIR)/dppt03.f	\
	$(LINDIR)/dppt05.f	$(LINDIR)/dptt01.f	\
	$(LINDIR)/dptt02.f	$(LINDIR)/dptt05.f	\
	$(LINDIR)/dqlt01.f	$(LINDIR)/dqlt02.f	\
	$(LINDIR)/dqlt03.f	$(LINDIR)/dqpt01.f	\
	$(LINDIR)/dqrt01.f	$(LINDIR)/dqrt01p.f	\
	$(LINDIR)/dqrt02.f	$(LINDIR)/dqrt03.f	\
	$(LINDIR)/dqrt11.f	$(LINDIR)/dqrt12.f	\
	$(LINDIR)/dqrt13.f	$(LINDIR)/dqrt14.f	\
	$(LINDIR)/dqrt15.f	$(LINDIR)/dqrt16.f	\
	$(LINDIR)/dqrt17.f	$(LINDIR)/drqt01.f	\
	$(LINDIR)/drqt02.f	$(LINDIR)/drqt03.f	\
	$(LINDIR)/drzt01.f	$(LINDIR)/drzt02.f	\
	$(LINDIR)/dspt01.f	$(LINDIR)/dsyt01.f	\
	$(LINDIR)/dsyt01_rook.f	$(LINDIR)/dtbt02.f	\
	$(LINDIR)/dtbt03.f	$(LINDIR)/dtbt05.f	\
	$(LINDIR)/dtbt06.f	$(LINDIR)/dtpt01.f	\
	$(LINDIR)/dtpt02.f	$(LINDIR)/dtpt03.f	\
	$(LINDIR)/dtpt05.f	$(LINDIR)/dtpt06.f	\
	$(LINDIR)/dtrt01.f	$(LINDIR)/dtrt02.f	\
	$(LINDIR)/dtrt03.f	$(LINDIR)/dtrt05.f	\
	$(LINDIR)/dtrt06.f	$(LINDIR)/dtzt01.f	\
	$(LINDIR)/dtzt02.f	$(LINDIR)/dgennd.f	\
	$(LINDIR)/dqrt04.f	$(LINDIR)/dqrt05.f	\
	$(LINDIR)/dchkqrt.f	$(LINDIR)/derrqrt.f	\
	$(LINDIR)/dchkqrtp.f	$(LINDIR)/derrqrtp.f


if USEXBLAS
DLINTST += 	\
	$(LINDIR)/derrvxx.f	$(LINDIR)/ddrvgex.f	\
	$(LINDIR)/ddrvsyx.f	$(LINDIR)/ddrvgbx.f	\
	$(LINDIR)/derrgex.f	$(LINDIR)/ddrvpox.f	\
	$(LINDIR)/derrpox.f	$(LINDIR)/debchvxx.f	\
	$(LINDIR)/derrsyx.f
else
DLINTST += 	\
	$(LINDIR)/derrvx.f	$(LINDIR)/ddrvge.f	\
	$(LINDIR)/ddrvsy.f	$(LINDIR)/ddrvgb.f	\
	$(LINDIR)/derrge.f	$(LINDIR)/ddrvpo.f	\
	$(LINDIR)/derrpo.f	$(LINDIR)/derrsy.f
endif

ZLINTST = 	\
	$(LINDIR)/zchkaa.f	$(LINDIR)/zchkeq.f	\
	$(LINDIR)/zchkgb.f	$(LINDIR)/zchkge.f	\
	$(LINDIR)/zchkgt.f	$(LINDIR)/zchkhe.f	\
	$(LINDIR)/zchkhe_rook.f	$(LINDIR)/zchkhp.f	\
	$(LINDIR)/zchklq.f	$(LINDIR)/zchkpb.f	\
	$(LINDIR)/zchkpo.f	$(LINDIR)/zchkps.f	\
	$(LINDIR)/zchkpp.f	$(LINDIR)/zchkpt.f	\
	$(LINDIR)/zchkq3.f	$(LINDIR)/zchkql.f	\
	$(LINDIR)/zchkqp.f	$(LINDIR)/zchkqr.f	\
	$(LINDIR)/zchkrq.f	$(LINDIR)/zchksp.f	\
	$(LINDIR)/zchksy.f	$(LINDIR)/zchksy_rook.f	\
	$(LINDIR)/zchktb.f	$(LINDIR)/zchktp.f	\
	$(LINDIR)/zchktr.f	$(LINDIR)/zchktz.f	\
	$(LINDIR)/zdrvgt.f	$(LINDIR)/zdrvhe_rook.f	\
	$(LINDIR)/zdrvhp.f	$(LINDIR)/zdrvls.f	\
	$(LINDIR)/zdrvpb.f	$(LINDIR)/zdrvpp.f	\
	$(LINDIR)/zdrvpt.f	$(LINDIR)/zdrvsp.f	\
	$(LINDIR)/zdrvsy_rook.f	$(LINDIR)/zerrgt.f	\
	$(LINDIR)/zerrlq.f	$(LINDIR)/zerrls.f	\
	$(LINDIR)/zerrps.f	$(LINDIR)/zerrql.f	\
	$(LINDIR)/zerrqp.f	$(LINDIR)/zerrqr.f	\
	$(LINDIR)/zerrrq.f	$(LINDIR)/zerrtr.f	\
	$(LINDIR)/zerrtz.f	$(LINDIR)/zgbt01.f	\
	$(LINDIR)/zgbt02.f	$(LINDIR)/zgbt05.f	\
	$(LINDIR)/zgelqs.f	$(LINDIR)/zgeqls.f	\
	$(LINDIR)/zgeqrs.f	$(LINDIR)/zgerqs.f	\
	$(LINDIR)/zget01.f	$(LINDIR)/zget02.f	\
	$(LINDIR)/zget03.f	$(LINDIR)/zget04.f	\
	$(LINDIR)/zget07.f	$(LINDIR)/zgtt01.f	\
	$(LINDIR)/zgtt02.f	$(LINDIR)/zgtt05.f	\
	$(LINDIR)/zhet01.f	$(LINDIR)/zhet01_rook.f	\
	$(LINDIR)/zhpt01.f	$(LINDIR)/zlaipd.f	\
	$(LINDIR)/zlaptm.f	$(LINDIR)/zlarhs.f	\
	$(LINDIR)/zlatb4.f	$(LINDIR)/zlatb5.f	\
	$(LINDIR)/zlatsp.f	$(LINDIR)/zlatsy.f	\
	$(LINDIR)/zlattb.f	$(LINDIR)/zlattp.f	\
	$(LINDIR)/zlattr.f	$(LINDIR)/zlavhe.f	\
	$(LINDIR)/zlavhe_rook.f	$(LINDIR)/zlavhp.f	\
	$(LINDIR)/zlavsp.f	$(LINDIR)/zlavsy.f	\
	$(LINDIR)/zlavsy_rook.f	$(LINDIR)/zlqt01.f	\
	$(LINDIR)/zlqt02.f	$(LINDIR)/zlqt03.f	\
	$(LINDIR)/zpbt01.f	$(LINDIR)/zpbt02.f	\
	$(LINDIR)/zpbt05.f	$(LINDIR)/zpot01.f	\
	$(LINDIR)/zpot02.f	$(LINDIR)/zpot03.f	\
	$(LINDIR)/zpot05.f	$(LINDIR)/zpst01.f	\
	$(LINDIR)/zppt01.f	$(LINDIR)/zppt02.f	\
	$(LINDIR)/zppt03.f	$(LINDIR)/zppt05.f	\
	$(LINDIR)/zptt01.f	$(LINDIR)/zptt02.f	\
	$(LINDIR)/zptt05.f	$(LINDIR)/zqlt01.f	\
	$(LINDIR)/zqlt02.f	$(LINDIR)/zqlt03.f	\
	$(LINDIR)/zqpt01.f	$(LINDIR)/zqrt01.f	\
	$(LINDIR)/zqrt01p.f	$(LINDIR)/zqrt02.f	\
	$(LINDIR)/zqrt03.f	$(LINDIR)/zqrt11.f	\
	$(LINDIR)/zqrt12.f	$(LINDIR)/zqrt13.f	\
	$(LINDIR)/zqrt14.f	$(LINDIR)/zqrt15.f	\
	$(LINDIR)/zqrt16.f	$(LINDIR)/zqrt17.f	\
	$(LINDIR)/zrqt01.f	$(LINDIR)/zrqt02.f	\
	$(LINDIR)/zrqt03.f	$(LINDIR)/zrzt01.f	\
	$(LINDIR)/zrzt02.f	$(LINDIR)/zsbmv.f	\
	$(LINDIR)/zspt01.f	$(LINDIR)/zspt02.f	\
	$(LINDIR)/zspt03.f	$(LINDIR)/zsyt01.f	\
	$(LINDIR)/zsyt01_rook.f	$(LINDIR)/zsyt02.f	\
	$(LINDIR)/zsyt03.f	$(LINDIR)/ztbt02.f	\
	$(LINDIR)/ztbt03.f	$(LINDIR)/ztbt05.f	\
	$(LINDIR)/ztbt06.f	$(LINDIR)/ztpt01.f	\
	$(LINDIR)/ztpt02.f	$(LINDIR)/ztpt03.f	\
	$(LINDIR)/ztpt05.f	$(LINDIR)/ztpt06.f	\
	$(LINDIR)/ztrt01.f	$(LINDIR)/ztrt02.f	\
	$(LINDIR)/ztrt03.f	$(LINDIR)/ztrt05.f	\
	$(LINDIR)/ztrt06.f	$(LINDIR)/ztzt01.f	\
	$(LINDIR)/ztzt02.f	$(LINDIR)/dget06.f	\
	$(LINDIR)/zgennd.f	$(LINDIR)/zqrt04.f	\
	$(LINDIR)/zqrt05.f	$(LINDIR)/zchkqrt.f	\
	$(LINDIR)/zerrqrt.f	$(LINDIR)/zchkqrtp.f	\
	$(LINDIR)/zerrqrtp.f

if USEXBLAS
ZLINTST += 	\
	$(LINDIR)/zerrvxx.f	$(LINDIR)/zdrvgex.f	\
	$(LINDIR)/zdrvsyx.f	$(LINDIR)/zdrvgbx.f	\
	$(LINDIR)/zerrgex.f	$(LINDIR)/zdrvpox.f	\
	$(LINDIR)/zdrvhex.f	$(LINDIR)/zerrpox.f	\
	$(LINDIR)/zebchvxx.f	$(LINDIR)/zerrsyx.f	\
	$(LINDIR)/zerrhex.f
else
ZLINTST += 	\
	$(LINDIR)/zerrvx.f	$(LINDIR)/zdrvge.f	\
	$(LINDIR)/zdrvsy.f	$(LINDIR)/zdrvgb.f	\
	$(LINDIR)/zerrge.f	$(LINDIR)/zdrvpo.f	\
	$(LINDIR)/zdrvhe.f	$(LINDIR)/zerrpo.f	\
	$(LINDIR)/zerrsy.f	$(LINDIR)/zerrhe.f
endif

DSLINTST = 	\
	$(LINDIR)/dchkab.f	$(LINDIR)/ddrvab.f	\
	$(LINDIR)/ddrvac.f	$(LINDIR)/derrab.f	\
	$(LINDIR)/derrac.f	$(LINDIR)/dget08.f	\
	$(LINDIR)/alaerh.f	$(LINDIR)/alahd.f	\
	$(LINDIR)/aladhd.f	$(LINDIR)/alareq.f	\
	$(LINDIR)/chkxer.f	$(LINDIR)/dlarhs.f	\
	$(LINDIR)/dlatb4.f	$(LINDIR)/xerbla.f	\
	$(LINDIR)/dget02.f	$(LINDIR)/dpot06.f


ZCLINTST = 	\
	$(LINDIR)/zchkab.f	$(LINDIR)/zdrvab.f	\
	$(LINDIR)/zdrvac.f	$(LINDIR)/zerrab.f	\
	$(LINDIR)/zerrac.f	$(LINDIR)/zget08.f	\
	$(LINDIR)/alaerh.f	$(LINDIR)/alahd.f	\
	$(LINDIR)/aladhd.f	$(LINDIR)/alareq.f	\
	$(LINDIR)/chkxer.f	$(LINDIR)/zget02.f	\
	$(LINDIR)/zlarhs.f	$(LINDIR)/zlatb4.f	\
	$(LINDIR)/zsbmv.f	$(LINDIR)/xerbla.f	\
	$(LINDIR)/zpot06.f	$(LINDIR)/zlaipd.f


SLINTSTRFP = 	\
	$(LINDIR)/schkrfp.f	$(LINDIR)/sdrvrfp.f	\
	$(LINDIR)/sdrvrf1.f	$(LINDIR)/sdrvrf2.f	\
	$(LINDIR)/sdrvrf3.f	$(LINDIR)/sdrvrf4.f	\
	$(LINDIR)/serrrfp.f	$(LINDIR)/slatb4.f	\
	$(LINDIR)/slarhs.f	$(LINDIR)/sget04.f	\
	$(LINDIR)/spot01.f	$(LINDIR)/spot03.f	\
	$(LINDIR)/spot02.f	$(LINDIR)/chkxer.f	\
	$(LINDIR)/xerbla.f	$(LINDIR)/alaerh.f	\
	$(LINDIR)/aladhd.f	$(LINDIR)/alahd.f	\
	$(LINDIR)/alasvm.f


DLINTSTRFP = 	\
	$(LINDIR)/dchkrfp.f	$(LINDIR)/ddrvrfp.f	\
	$(LINDIR)/ddrvrf1.f	$(LINDIR)/ddrvrf2.f	\
	$(LINDIR)/ddrvrf3.f	$(LINDIR)/ddrvrf4.f	\
	$(LINDIR)/derrrfp.f	$(LINDIR)/dlatb4.f	\
	$(LINDIR)/dlarhs.f	$(LINDIR)/dget04.f	\
	$(LINDIR)/dpot01.f	$(LINDIR)/dpot03.f	\
	$(LINDIR)/dpot02.f	$(LINDIR)/chkxer.f	\
	$(LINDIR)/xerbla.f	$(LINDIR)/alaerh.f	\
	$(LINDIR)/aladhd.f	$(LINDIR)/alahd.f	\
	$(LINDIR)/alasvm.f

CLINTSTRFP = 	\
	$(LINDIR)/cchkrfp.f	$(LINDIR)/cdrvrfp.f	\
	$(LINDIR)/cdrvrf1.f	$(LINDIR)/cdrvrf2.f	\
	$(LINDIR)/cdrvrf3.f	$(LINDIR)/cdrvrf4.f	\
	$(LINDIR)/cerrrfp.f	$(LINDIR)/claipd.f	\
	$(LINDIR)/clatb4.f	$(LINDIR)/clarhs.f	\
	$(LINDIR)/csbmv.f	$(LINDIR)/cget04.f	\
	$(LINDIR)/cpot01.f	$(LINDIR)/cpot03.f	\
	$(LINDIR)/cpot02.f	$(LINDIR)/chkxer.f	\
	$(LINDIR)/xerbla.f	$(LINDIR)/alaerh.f	\
	$(LINDIR)/aladhd.f	$(LINDIR)/alahd.f	\
	$(LINDIR)/alasvm.f

ZLINTSTRFP = 	\
	$(LINDIR)/zchkrfp.f	$(LINDIR)/zdrvrfp.f	\
	$(LINDIR)/zdrvrf1.f	$(LINDIR)/zdrvrf2.f	\
	$(LINDIR)/zdrvrf3.f	$(LINDIR)/zdrvrf4.f	\
	$(LINDIR)/zerrrfp.f	$(LINDIR)/zlatb4.f	\
	$(LINDIR)/zlaipd.f	$(LINDIR)/zlarhs.f	\
	$(LINDIR)/zsbmv.f	$(LINDIR)/zget04.f	\
	$(LINDIR)/zpot01.f	$(LINDIR)/zpot03.f	\
	$(LINDIR)/zpot02.f	$(LINDIR)/chkxer.f	\
	$(LINDIR)/xerbla.f	$(LINDIR)/alaerh.f	\
	$(LINDIR)/aladhd.f	$(LINDIR)/alahd.f	\
	$(LINDIR)/alasvm.f

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
