(library (lapacke float-complex (3 5 0))
  (export
    LAPACKE_cbdsqr
    LAPACKE_cgbbrd
    LAPACKE_cgbcon
    LAPACKE_cgbequ
    LAPACKE_cgbequb
    LAPACKE_cgbrfs
    LAPACKE_cgbsv
    LAPACKE_cgbtrf
    LAPACKE_cgbtrs
    LAPACKE_cgebak
    LAPACKE_cgebal
    LAPACKE_cgebrd
    LAPACKE_cgecon
    LAPACKE_cgeequ
    LAPACKE_cgeequb
    LAPACKE_cgees
    LAPACKE_cgeev
    LAPACKE_cgehrd
    LAPACKE_cgelq2
    LAPACKE_cgelqf
    LAPACKE_cgels
    LAPACKE_cgelsd
    LAPACKE_cgelss
    LAPACKE_cgelsy
    LAPACKE_cgeqlf
    LAPACKE_cgeqp3
    LAPACKE_cgeqpf
    LAPACKE_cgeqr2
    LAPACKE_cgeqrf
    LAPACKE_cgeqrfp
    LAPACKE_cgerfs
    LAPACKE_cgerqf
    LAPACKE_cgesdd
    LAPACKE_cgesv
    LAPACKE_cgesvd
    LAPACKE_cgetf2
    LAPACKE_cgetrf
    LAPACKE_cgetri
    LAPACKE_cgetrs
    LAPACKE_cggbak
    LAPACKE_cggbal
    LAPACKE_cgges
    LAPACKE_cggev
    LAPACKE_cggglm
    LAPACKE_cgghrd
    LAPACKE_cgglse
    LAPACKE_cggqrf
    LAPACKE_cggrqf
    LAPACKE_cggsvd
    LAPACKE_cggsvp
    LAPACKE_cgtcon
    LAPACKE_cgtrfs
    LAPACKE_cgtsv
    LAPACKE_cgttrf
    LAPACKE_cgttrs
    LAPACKE_chbev
    LAPACKE_chbevd
    LAPACKE_chbgst
    LAPACKE_chbgv
    LAPACKE_chbgvd
    LAPACKE_chbtrd
    LAPACKE_checon
    LAPACKE_cheequb
    LAPACKE_cheev
    LAPACKE_cheevd
    LAPACKE_cheevr
    LAPACKE_chegst
    LAPACKE_chegv
    LAPACKE_chegvd
    LAPACKE_cherfs
    LAPACKE_chesv
    LAPACKE_chetrd
    LAPACKE_chetrf
    LAPACKE_chetri
    LAPACKE_chetrs
    LAPACKE_chfrk
    LAPACKE_chgeqz
    LAPACKE_chpcon
    LAPACKE_chpev
    LAPACKE_chpevd
    LAPACKE_chpgst
    LAPACKE_chpgv
    LAPACKE_chpgvd
    LAPACKE_chprfs
    LAPACKE_chpsv
    LAPACKE_chptrd
    LAPACKE_chptrf
    LAPACKE_chptri
    LAPACKE_chptrs
    LAPACKE_chsein
    LAPACKE_chseqr
    LAPACKE_clacgv
    LAPACKE_clacn2
    LAPACKE_clacpy
    LAPACKE_clacp2
    LAPACKE_clag2z
    LAPACKE_clagge
    LAPACKE_clange
    LAPACKE_clanhe
    LAPACKE_clansy
    LAPACKE_clantr
    LAPACKE_clarfb
    LAPACKE_clarfg
    LAPACKE_clarft
    LAPACKE_clarnv
    LAPACKE_claset
    LAPACKE_claswp
    LAPACKE_clatms
    LAPACKE_clauum
    LAPACKE_cpbcon
    LAPACKE_cpbequ
    LAPACKE_cpbrfs
    LAPACKE_cpbstf
    LAPACKE_cpbsv
    LAPACKE_cpbtrf
    LAPACKE_cpbtrs
    LAPACKE_cpftrf
    LAPACKE_cpftri
    LAPACKE_cpftrs
    LAPACKE_cpocon
    LAPACKE_cpoequ
    LAPACKE_cpoequb
    LAPACKE_cporfs
    LAPACKE_cposv
    LAPACKE_cpotrf
    LAPACKE_cpotri
    LAPACKE_cpotrs
    LAPACKE_cppcon
    LAPACKE_cppequ
    LAPACKE_cpprfs
    LAPACKE_cppsv
    LAPACKE_cpptrf
    LAPACKE_cpptri
    LAPACKE_cpptrs
    LAPACKE_cpstrf
    LAPACKE_cptcon
    LAPACKE_cpteqr
    LAPACKE_cptrfs
    LAPACKE_cptsv
    LAPACKE_cpttrf
    LAPACKE_cpttrs
    LAPACKE_cspcon
    LAPACKE_csprfs
    LAPACKE_cspsv
    LAPACKE_csptrf
    LAPACKE_csptri
    LAPACKE_csptrs
    LAPACKE_cstedc
    LAPACKE_cstegr
    LAPACKE_cstein
    LAPACKE_cstemr
    LAPACKE_csteqr
    LAPACKE_csycon
    LAPACKE_csyequb
    LAPACKE_csyrfs
    LAPACKE_csysv
    LAPACKE_csytrf
    LAPACKE_csytri
    LAPACKE_csytrs
    LAPACKE_ctbcon
    LAPACKE_ctbrfs
    LAPACKE_ctbtrs
    LAPACKE_ctfsm
    LAPACKE_ctftri
    LAPACKE_ctfttp
    LAPACKE_ctfttr
    LAPACKE_ctgevc
    LAPACKE_ctgexc
    LAPACKE_ctgsen
    LAPACKE_ctgsja
    LAPACKE_ctgsna
    LAPACKE_ctgsyl
    LAPACKE_ctpcon
    LAPACKE_ctprfs
    LAPACKE_ctptri
    LAPACKE_ctptrs
    LAPACKE_ctpttf
    LAPACKE_ctpttr
    LAPACKE_ctrcon
    LAPACKE_ctrevc
    LAPACKE_ctrexc
    LAPACKE_ctrrfs
    LAPACKE_ctrsen
    LAPACKE_ctrsna
    LAPACKE_ctrsyl
    LAPACKE_ctrtri
    LAPACKE_ctrtrs
    LAPACKE_ctrttf
    LAPACKE_ctrttp
    LAPACKE_ctzrzf
    LAPACKE_cungbr
    LAPACKE_cunghr
    LAPACKE_cunglq
    LAPACKE_cungql
    LAPACKE_cungqr
    LAPACKE_cungrq
    LAPACKE_cungtr
    LAPACKE_cunmbr
    LAPACKE_cunmhr
    LAPACKE_cunmlq
    LAPACKE_cunmql
    LAPACKE_cunmqr
    LAPACKE_cunmrq
    LAPACKE_cunmrz
    LAPACKE_cunmtr
    LAPACKE_cupgtr
    LAPACKE_cupmtr
    LAPACKE_cbdsqr_work
    LAPACKE_cgbbrd_work
    LAPACKE_cgbcon_work
    LAPACKE_cgbequ_work
    LAPACKE_cgbequb_work
    LAPACKE_cgbrfs_work
    LAPACKE_cgbsv_work
    LAPACKE_cgbtrf_work
    LAPACKE_cgbtrs_work
    LAPACKE_cgebak_work
    LAPACKE_cgebal_work
    LAPACKE_cgebrd_work
    LAPACKE_cgecon_work
    LAPACKE_cgeequ_work
    LAPACKE_cgeequb_work
    LAPACKE_cgees_work
    LAPACKE_cgeev_work
    LAPACKE_cgehrd_work
    LAPACKE_cgelq2_work
    LAPACKE_cgelqf_work
    LAPACKE_cgels_work
    LAPACKE_cgelsd_work
    LAPACKE_cgelss_work
    LAPACKE_cgelsy_work
    LAPACKE_cgeqlf_work
    LAPACKE_cgeqp3_work
    LAPACKE_cgeqpf_work
    LAPACKE_cgeqr2_work
    LAPACKE_cgeqrf_work
    LAPACKE_cgeqrfp_work
    LAPACKE_cgerfs_work
    LAPACKE_cgerqf_work
    LAPACKE_cgesdd_work
    LAPACKE_cgesv_work
    LAPACKE_cgesvd_work
    LAPACKE_cgetf2_work
    LAPACKE_cgetrf_work
    LAPACKE_cgetri_work
    LAPACKE_cgetrs_work
    LAPACKE_cggbak_work
    LAPACKE_cggbal_work
    LAPACKE_cgges_work
    LAPACKE_cggev_work
    LAPACKE_cggglm_work
    LAPACKE_cgghrd_work
    LAPACKE_cgglse_work
    LAPACKE_cggqrf_work
    LAPACKE_cggrqf_work
    LAPACKE_cggsvd_work
    LAPACKE_cggsvp_work
    LAPACKE_cgtcon_work
    LAPACKE_cgtrfs_work
    LAPACKE_cgtsv_work
    LAPACKE_cgttrf_work
    LAPACKE_cgttrs_work
    LAPACKE_chbev_work
    LAPACKE_chbevd_work
    LAPACKE_chbgst_work
    LAPACKE_chbgv_work
    LAPACKE_chbgvd_work
    LAPACKE_chbtrd_work
    LAPACKE_checon_work
    LAPACKE_cheequb_work
    LAPACKE_cheev_work
    LAPACKE_cheevd_work
    LAPACKE_cheevr_work
    LAPACKE_chegst_work
    LAPACKE_chegv_work
    LAPACKE_chegvd_work
    LAPACKE_cherfs_work
    LAPACKE_chesv_work
    LAPACKE_chetrd_work
    LAPACKE_chetrf_work
    LAPACKE_chetri_work
    LAPACKE_chetrs_work
    LAPACKE_chfrk_work
    LAPACKE_chgeqz_work
    LAPACKE_chpcon_work
    LAPACKE_chpev_work
    LAPACKE_chpevd_work
    LAPACKE_chpgst_work
    LAPACKE_chpgv_work
    LAPACKE_chpgvd_work
    LAPACKE_chprfs_work
    LAPACKE_chpsv_work
    LAPACKE_chptrd_work
    LAPACKE_chptrf_work
    LAPACKE_chptri_work
    LAPACKE_chptrs_work
    LAPACKE_chsein_work
    LAPACKE_chseqr_work
    LAPACKE_clacgv_work
    LAPACKE_clacn2_work
    LAPACKE_clacpy_work
    LAPACKE_clacp2_work
    LAPACKE_clag2z_work
    LAPACKE_clagge_work
    LAPACKE_claghe_work
    LAPACKE_clagsy_work
    LAPACKE_clapmr_work
    LAPACKE_clange_work
    LAPACKE_clanhe_work
    LAPACKE_clansy_work
    LAPACKE_clantr_work
    LAPACKE_clarfb_work
    LAPACKE_clarfg_work
    LAPACKE_clarft_work
    LAPACKE_clarnv_work
    LAPACKE_claset_work
    LAPACKE_claswp_work
    LAPACKE_clatms_work
    LAPACKE_clauum_work
    LAPACKE_cpbcon_work
    LAPACKE_cpbequ_work
    LAPACKE_cpbrfs_work
    LAPACKE_cpbstf_work
    LAPACKE_cpbsv_work
    LAPACKE_cpbtrf_work
    LAPACKE_cpbtrs_work
    LAPACKE_cpftrf_work
    LAPACKE_cpftri_work
    LAPACKE_cpftrs_work
    LAPACKE_cpocon_work
    LAPACKE_cpoequ_work
    LAPACKE_cpoequb_work
    LAPACKE_cporfs_work
    LAPACKE_cposv_work
    LAPACKE_cpotrf_work
    LAPACKE_cpotri_work
    LAPACKE_cpotrs_work
    LAPACKE_cppcon_work
    LAPACKE_cppequ_work
    LAPACKE_cpprfs_work
    LAPACKE_cppsv_work
    LAPACKE_cpptrf_work
    LAPACKE_cpptri_work
    LAPACKE_cpptrs_work
    LAPACKE_cpstrf_work
    LAPACKE_cptcon_work
    LAPACKE_cpteqr_work
    LAPACKE_cptrfs_work
    LAPACKE_cptsv_work
    LAPACKE_cpttrf_work
    LAPACKE_cpttrs_work
    LAPACKE_cspcon_work
    LAPACKE_csprfs_work
    LAPACKE_cspsv_work
    LAPACKE_csptrf_work
    LAPACKE_csptri_work
    LAPACKE_csptrs_work
    LAPACKE_cstedc_work
    LAPACKE_cstegr_work
    LAPACKE_cstein_work
    LAPACKE_cstemr_work
    LAPACKE_csteqr_work
    LAPACKE_csycon_work
    LAPACKE_csyequb_work
    LAPACKE_csyrfs_work
    LAPACKE_csysv_work
    LAPACKE_csysv_rook_work
    LAPACKE_csytrf_work
    LAPACKE_csytri_work
    LAPACKE_csytrs_work
    LAPACKE_ctbcon_work
    LAPACKE_ctbrfs_work
    LAPACKE_ctbtrs_work
    LAPACKE_ctfsm_work
    LAPACKE_ctftri_work
    LAPACKE_ctfttp_work
    LAPACKE_ctfttr_work
    LAPACKE_ctgevc_work
    LAPACKE_ctgexc_work
    LAPACKE_ctgsen_work
    LAPACKE_ctgsja_work
    LAPACKE_ctgsna_work
    LAPACKE_ctgsyl_work
    LAPACKE_ctpcon_work
    LAPACKE_ctprfs_work
    LAPACKE_ctptri_work
    LAPACKE_ctptrs_work
    LAPACKE_ctpttf_work
    LAPACKE_ctpttr_work
    LAPACKE_ctrcon_work
    LAPACKE_ctrevc_work
    LAPACKE_ctrexc_work
    LAPACKE_ctrrfs_work
    LAPACKE_ctrsen_work
    LAPACKE_ctrsna_work
    LAPACKE_ctrsyl_work
    LAPACKE_ctrtri_work
    LAPACKE_ctrtrs_work
    LAPACKE_ctrttf_work
    LAPACKE_ctrttp_work
    LAPACKE_ctzrzf_work
    LAPACKE_cungbr_work
    LAPACKE_cunghr_work
    LAPACKE_cunglq_work
    LAPACKE_cungql_work
    LAPACKE_cungqr_work
    LAPACKE_cungrq_work
    LAPACKE_cungtr_work
    LAPACKE_cunmbr_work
    LAPACKE_cunmhr_work
    LAPACKE_cunmlq_work
    LAPACKE_cunmql_work
    LAPACKE_cunmqr_work
    LAPACKE_cunmrq_work
    LAPACKE_cunmrz_work
    LAPACKE_cunmtr_work
    LAPACKE_cupgtr_work
    LAPACKE_cupmtr_work
    LAPACKE_claghe
    LAPACKE_clagsy
    LAPACKE_clapmr
    LAPACKE_cbbcsd
    LAPACKE_cbbcsd_work
    LAPACKE_cheswapr
    LAPACKE_cheswapr_work
    LAPACKE_chetri2
    LAPACKE_chetri2_work
    LAPACKE_chetrs2
    LAPACKE_chetrs2_work
    LAPACKE_csyconv
    LAPACKE_csyconv_work
    LAPACKE_csyswapr
    LAPACKE_csyswapr_work
    LAPACKE_csytri2
    LAPACKE_csytri2_work
    LAPACKE_csytrs2
    LAPACKE_csytrs2_work
    LAPACKE_cunbdb
    LAPACKE_cunbdb_work
    LAPACKE_cuncsd
    LAPACKE_cuncsd_work)
  (import (rnrs (6)) (lapacke compat))
  (define-shared-object "liblapacke.so")
  (define-c-function lapack_int LAPACKE_cbdsqr (int char lapack_int lapack_int lapack_int lapack_int float* float* lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_cgbbrd (int char lapack_int lapack_int lapack_int lapack_int lapack_int lapack_complex_float* lapack_int float* float* lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_cgbcon (int char lapack_int lapack_int lapack_int lapack_complex_float* lapack_int lapack_int* float float* ))
  (define-c-function lapack_int LAPACKE_cgbequ (int lapack_int lapack_int lapack_int lapack_int lapack_complex_float* lapack_int float* float* float* float* float* ))
  (define-c-function lapack_int LAPACKE_cgbequb (int lapack_int lapack_int lapack_int lapack_int lapack_complex_float* lapack_int float* float* float* float* float* ))
  (define-c-function lapack_int LAPACKE_cgbrfs (int char lapack_int lapack_int lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_int* lapack_complex_float* lapack_int lapack_complex_float* lapack_int float* float* ))
  (define-c-function lapack_int LAPACKE_cgbsv (int lapack_int lapack_int lapack_int lapack_int lapack_complex_float* lapack_int lapack_int* lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_cgbtrf (int lapack_int lapack_int lapack_int lapack_int lapack_complex_float* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_cgbtrs (int char lapack_int lapack_int lapack_int lapack_int lapack_complex_float* lapack_int lapack_int* lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_cgebak (int char char lapack_int lapack_int lapack_int float* lapack_int lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_cgebal (int char lapack_int lapack_complex_float* lapack_int lapack_int* lapack_int* float* ))
  (define-c-function lapack_int LAPACKE_cgebrd (int lapack_int lapack_int lapack_complex_float* lapack_int float* float* lapack_complex_float* lapack_complex_float* ))
  (define-c-function lapack_int LAPACKE_cgecon (int char lapack_int lapack_complex_float* lapack_int float float* ))
  (define-c-function lapack_int LAPACKE_cgeequ (int lapack_int lapack_int lapack_complex_float* lapack_int float* float* float* float* float* ))
  (define-c-function lapack_int LAPACKE_cgeequb (int lapack_int lapack_int lapack_complex_float* lapack_int float* float* float* float* float* ))
  (define-c-function lapack_int LAPACKE_cgees (int char char LAPACK_C_SELECT1 lapack_int lapack_complex_float* lapack_int lapack_int* lapack_complex_float* lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_cgeev (int char char lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_complex_float* lapack_int lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_cgehrd (int lapack_int lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* ))
  (define-c-function lapack_int LAPACKE_cgelq2 (int lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* ))
  (define-c-function lapack_int LAPACKE_cgelqf (int lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* ))
  (define-c-function lapack_int LAPACKE_cgels (int char lapack_int lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_cgelsd (int lapack_int lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int float* float lapack_int* ))
  (define-c-function lapack_int LAPACKE_cgelss (int lapack_int lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int float* float lapack_int* ))
  (define-c-function lapack_int LAPACKE_cgelsy (int lapack_int lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_int* float lapack_int* ))
  (define-c-function lapack_int LAPACKE_cgeqlf (int lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* ))
  (define-c-function lapack_int LAPACKE_cgeqp3 (int lapack_int lapack_int lapack_complex_float* lapack_int lapack_int* lapack_complex_float* ))
  (define-c-function lapack_int LAPACKE_cgeqpf (int lapack_int lapack_int lapack_complex_float* lapack_int lapack_int* lapack_complex_float* ))
  (define-c-function lapack_int LAPACKE_cgeqr2 (int lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* ))
  (define-c-function lapack_int LAPACKE_cgeqrf (int lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* ))
  (define-c-function lapack_int LAPACKE_cgeqrfp (int lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* ))
  (define-c-function lapack_int LAPACKE_cgerfs (int char lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_int* lapack_complex_float* lapack_int lapack_complex_float* lapack_int float* float* ))
  (define-c-function lapack_int LAPACKE_cgerqf (int lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* ))
  (define-c-function lapack_int LAPACKE_cgesdd (int char lapack_int lapack_int lapack_complex_float* lapack_int float* lapack_complex_float* lapack_int lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_cgesv (int lapack_int lapack_int lapack_complex_float* lapack_int lapack_int* lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_cgesvd (int char char lapack_int lapack_int lapack_complex_float* lapack_int float* lapack_complex_float* lapack_int lapack_complex_float* lapack_int float* ))
  (define-c-function lapack_int LAPACKE_cgetf2 (int lapack_int lapack_int lapack_complex_float* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_cgetrf (int lapack_int lapack_int lapack_complex_float* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_cgetri (int lapack_int lapack_complex_float* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_cgetrs (int char lapack_int lapack_int lapack_complex_float* lapack_int lapack_int* lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_cggbak (int char char lapack_int lapack_int lapack_int float* float* lapack_int lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_cggbal (int char lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_int* lapack_int* float* float* ))
  (define-c-function lapack_int LAPACKE_cgges (int char char char LAPACK_C_SELECT2 lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_int* lapack_complex_float* lapack_complex_float* lapack_complex_float* lapack_int lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_cggev (int char char lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_complex_float* lapack_complex_float* lapack_int lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_cggglm (int lapack_int lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_complex_float* lapack_complex_float* ))
  (define-c-function lapack_int LAPACKE_cgghrd (int char char lapack_int lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_cgglse (int lapack_int lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_complex_float* lapack_complex_float* ))
  (define-c-function lapack_int LAPACKE_cggqrf (int lapack_int lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_complex_float* lapack_int lapack_complex_float* ))
  (define-c-function lapack_int LAPACKE_cggrqf (int lapack_int lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_complex_float* lapack_int lapack_complex_float* ))
  (define-c-function lapack_int LAPACKE_cggsvd (int char char char lapack_int lapack_int lapack_int lapack_int* lapack_int* lapack_complex_float* lapack_int lapack_complex_float* lapack_int float* float* lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_cggsvp (int char char char lapack_int lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int float float lapack_int* lapack_int* lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_cgtcon (char lapack_int lapack_complex_float* lapack_complex_float* lapack_complex_float* lapack_complex_float* lapack_int* float float* ))
  (define-c-function lapack_int LAPACKE_cgtrfs (int char lapack_int lapack_int lapack_complex_float* lapack_complex_float* lapack_complex_float* lapack_complex_float* lapack_complex_float* lapack_complex_float* lapack_complex_float* lapack_int* lapack_complex_float* lapack_int lapack_complex_float* lapack_int float* float* ))
  (define-c-function lapack_int LAPACKE_cgtsv (int lapack_int lapack_int lapack_complex_float* lapack_complex_float* lapack_complex_float* lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_cgttrf (lapack_int lapack_complex_float* lapack_complex_float* lapack_complex_float* lapack_complex_float* lapack_int* ))
  (define-c-function lapack_int LAPACKE_cgttrs (int char lapack_int lapack_int lapack_complex_float* lapack_complex_float* lapack_complex_float* lapack_complex_float* lapack_int* lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_chbev (int char char lapack_int lapack_int lapack_complex_float* lapack_int float* lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_chbevd (int char char lapack_int lapack_int lapack_complex_float* lapack_int float* lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_chbgst (int char char lapack_int lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_chbgv (int char char lapack_int lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int float* lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_chbgvd (int char char lapack_int lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int float* lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_chbtrd (int char char lapack_int lapack_int lapack_complex_float* lapack_int float* float* lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_checon (int char lapack_int lapack_complex_float* lapack_int lapack_int* float float* ))
  (define-c-function lapack_int LAPACKE_cheequb (int char lapack_int lapack_complex_float* lapack_int float* float* float* ))
  (define-c-function lapack_int LAPACKE_cheev (int char char lapack_int lapack_complex_float* lapack_int float* ))
  (define-c-function lapack_int LAPACKE_cheevd (int char char lapack_int lapack_complex_float* lapack_int float* ))
  (define-c-function lapack_int LAPACKE_cheevr (int char char char lapack_int lapack_complex_float* lapack_int float float lapack_int lapack_int float lapack_int* float* lapack_complex_float* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_chegst (int lapack_int char lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_chegv (int lapack_int char char lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int float* ))
  (define-c-function lapack_int LAPACKE_chegvd (int lapack_int char char lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int float* ))
  (define-c-function lapack_int LAPACKE_cherfs (int char lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_int* lapack_complex_float* lapack_int lapack_complex_float* lapack_int float* float* ))
  (define-c-function lapack_int LAPACKE_chesv (int char lapack_int lapack_int lapack_complex_float* lapack_int lapack_int* lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_chetrd (int char lapack_int lapack_complex_float* lapack_int float* float* lapack_complex_float* ))
  (define-c-function lapack_int LAPACKE_chetrf (int char lapack_int lapack_complex_float* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_chetri (int char lapack_int lapack_complex_float* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_chetrs (int char lapack_int lapack_int lapack_complex_float* lapack_int lapack_int* lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_chfrk (int char char char lapack_int lapack_int float lapack_complex_float* lapack_int float lapack_complex_float* ))
  (define-c-function lapack_int LAPACKE_chgeqz (int char char char lapack_int lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_complex_float* lapack_complex_float* lapack_int lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_chpcon (int char lapack_int lapack_complex_float* lapack_int* float float* ))
  (define-c-function lapack_int LAPACKE_chpev (int char char lapack_int lapack_complex_float* float* lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_chpevd (int char char lapack_int lapack_complex_float* float* lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_chpgst (int lapack_int char lapack_int lapack_complex_float* lapack_complex_float* ))
  (define-c-function lapack_int LAPACKE_chpgv (int lapack_int char char lapack_int lapack_complex_float* lapack_complex_float* float* lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_chpgvd (int lapack_int char char lapack_int lapack_complex_float* lapack_complex_float* float* lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_chprfs (int char lapack_int lapack_int lapack_complex_float* lapack_complex_float* lapack_int* lapack_complex_float* lapack_int lapack_complex_float* lapack_int float* float* ))
  (define-c-function lapack_int LAPACKE_chpsv (int char lapack_int lapack_int lapack_complex_float* lapack_int* lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_chptrd (int char lapack_int lapack_complex_float* float* float* lapack_complex_float* ))
  (define-c-function lapack_int LAPACKE_chptrf (int char lapack_int lapack_complex_float* lapack_int* ))
  (define-c-function lapack_int LAPACKE_chptri (int char lapack_int lapack_complex_float* lapack_int* ))
  (define-c-function lapack_int LAPACKE_chptrs (int char lapack_int lapack_int lapack_complex_float* lapack_int* lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_chsein (int char char char lapack_logical* lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_int lapack_int* lapack_int* lapack_int* ))
  (define-c-function lapack_int LAPACKE_chseqr (int char char lapack_int lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_clacgv (lapack_int lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_clacn2 (lapack_int lapack_complex_float* lapack_complex_float* float* lapack_int* lapack_int* ))
  (define-c-function lapack_int LAPACKE_clacpy (int char lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_clacp2 (int char lapack_int lapack_int float* lapack_int lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_clag2z (int lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_clagge (int lapack_int lapack_int lapack_int lapack_int float* lapack_complex_float* lapack_int lapack_int* ))
  (define-c-function float LAPACKE_clange (int char lapack_int lapack_int lapack_complex_float* lapack_int ))
  (define-c-function float LAPACKE_clanhe (int char char lapack_int lapack_complex_float* lapack_int ))
  (define-c-function float LAPACKE_clansy (int char char lapack_int lapack_complex_float* lapack_int ))
  (define-c-function float LAPACKE_clantr (int char char char lapack_int lapack_int lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_clarfb (int char char char char lapack_int lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_clarfg (lapack_int lapack_complex_float* lapack_complex_float* lapack_int lapack_complex_float* ))
  (define-c-function lapack_int LAPACKE_clarft (int char char lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_clarnv (lapack_int lapack_int* lapack_int lapack_complex_float* ))
  (define-c-function lapack_int LAPACKE_claset (int char lapack_int lapack_int lapack_complex_float lapack_complex_float lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_claswp (int lapack_int lapack_complex_float* lapack_int lapack_int lapack_int lapack_int* lapack_int ))
  (define-c-function lapack_int LAPACKE_clatms (int lapack_int lapack_int char lapack_int* char float* lapack_int float float lapack_int lapack_int char lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_clauum (int char lapack_int lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_cpbcon (int char lapack_int lapack_int lapack_complex_float* lapack_int float float* ))
  (define-c-function lapack_int LAPACKE_cpbequ (int char lapack_int lapack_int lapack_complex_float* lapack_int float* float* float* ))
  (define-c-function lapack_int LAPACKE_cpbrfs (int char lapack_int lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int float* float* ))
  (define-c-function lapack_int LAPACKE_cpbstf (int char lapack_int lapack_int lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_cpbsv (int char lapack_int lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_cpbtrf (int char lapack_int lapack_int lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_cpbtrs (int char lapack_int lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_cpftrf (int char char lapack_int lapack_complex_float* ))
  (define-c-function lapack_int LAPACKE_cpftri (int char char lapack_int lapack_complex_float* ))
  (define-c-function lapack_int LAPACKE_cpftrs (int char char lapack_int lapack_int lapack_complex_float* lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_cpocon (int char lapack_int lapack_complex_float* lapack_int float float* ))
  (define-c-function lapack_int LAPACKE_cpoequ (int lapack_int lapack_complex_float* lapack_int float* float* float* ))
  (define-c-function lapack_int LAPACKE_cpoequb (int lapack_int lapack_complex_float* lapack_int float* float* float* ))
  (define-c-function lapack_int LAPACKE_cporfs (int char lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int float* float* ))
  (define-c-function lapack_int LAPACKE_cposv (int char lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_cpotrf (int char lapack_int lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_cpotri (int char lapack_int lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_cpotrs (int char lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_cppcon (int char lapack_int lapack_complex_float* float float* ))
  (define-c-function lapack_int LAPACKE_cppequ (int char lapack_int lapack_complex_float* float* float* float* ))
  (define-c-function lapack_int LAPACKE_cpprfs (int char lapack_int lapack_int lapack_complex_float* lapack_complex_float* lapack_complex_float* lapack_int lapack_complex_float* lapack_int float* float* ))
  (define-c-function lapack_int LAPACKE_cppsv (int char lapack_int lapack_int lapack_complex_float* lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_cpptrf (int char lapack_int lapack_complex_float* ))
  (define-c-function lapack_int LAPACKE_cpptri (int char lapack_int lapack_complex_float* ))
  (define-c-function lapack_int LAPACKE_cpptrs (int char lapack_int lapack_int lapack_complex_float* lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_cpstrf (int char lapack_int lapack_complex_float* lapack_int lapack_int* lapack_int* float ))
  (define-c-function lapack_int LAPACKE_cptcon (lapack_int float* lapack_complex_float* float float* ))
  (define-c-function lapack_int LAPACKE_cpteqr (int char lapack_int float* float* lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_cptrfs (int char lapack_int lapack_int float* lapack_complex_float* float* lapack_complex_float* lapack_complex_float* lapack_int lapack_complex_float* lapack_int float* float* ))
  (define-c-function lapack_int LAPACKE_cptsv (int lapack_int lapack_int float* lapack_complex_float* lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_cpttrf (lapack_int float* lapack_complex_float* ))
  (define-c-function lapack_int LAPACKE_cpttrs (int char lapack_int lapack_int float* lapack_complex_float* lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_cspcon (int char lapack_int lapack_complex_float* lapack_int* float float* ))
  (define-c-function lapack_int LAPACKE_csprfs (int char lapack_int lapack_int lapack_complex_float* lapack_complex_float* lapack_int* lapack_complex_float* lapack_int lapack_complex_float* lapack_int float* float* ))
  (define-c-function lapack_int LAPACKE_cspsv (int char lapack_int lapack_int lapack_complex_float* lapack_int* lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_csptrf (int char lapack_int lapack_complex_float* lapack_int* ))
  (define-c-function lapack_int LAPACKE_csptri (int char lapack_int lapack_complex_float* lapack_int* ))
  (define-c-function lapack_int LAPACKE_csptrs (int char lapack_int lapack_int lapack_complex_float* lapack_int* lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_cstedc (int char lapack_int float* float* lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_cstegr (int char char lapack_int float* float* float float lapack_int lapack_int float lapack_int* float* lapack_complex_float* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_cstein (int lapack_int float* float* lapack_int float* lapack_int* lapack_int* lapack_complex_float* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_cstemr (int char char lapack_int float* float* float float lapack_int lapack_int lapack_int* float* lapack_complex_float* lapack_int lapack_int lapack_int* lapack_logical* ))
  (define-c-function lapack_int LAPACKE_csteqr (int char lapack_int float* float* lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_csycon (int char lapack_int lapack_complex_float* lapack_int lapack_int* float float* ))
  (define-c-function lapack_int LAPACKE_csyequb (int char lapack_int lapack_complex_float* lapack_int float* float* float* ))
  (define-c-function lapack_int LAPACKE_csyrfs (int char lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_int* lapack_complex_float* lapack_int lapack_complex_float* lapack_int float* float* ))
  (define-c-function lapack_int LAPACKE_csysv (int char lapack_int lapack_int lapack_complex_float* lapack_int lapack_int* lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_csytrf (int char lapack_int lapack_complex_float* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_csytri (int char lapack_int lapack_complex_float* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_csytrs (int char lapack_int lapack_int lapack_complex_float* lapack_int lapack_int* lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_ctbcon (int char char char lapack_int lapack_int lapack_complex_float* lapack_int float* ))
  (define-c-function lapack_int LAPACKE_ctbrfs (int char char char lapack_int lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int float* float* ))
  (define-c-function lapack_int LAPACKE_ctbtrs (int char char char lapack_int lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_ctfsm (int char char char char char lapack_int lapack_int lapack_complex_float lapack_complex_float* lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_ctftri (int char char char lapack_int lapack_complex_float* ))
  (define-c-function lapack_int LAPACKE_ctfttp (int char char lapack_int lapack_complex_float* lapack_complex_float* ))
  (define-c-function lapack_int LAPACKE_ctfttr (int char char lapack_int lapack_complex_float* lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_ctgevc (int char char lapack_logical* lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_ctgexc (int lapack_logical lapack_logical lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_int lapack_int ))
  (define-c-function lapack_int LAPACKE_ctgsen (int lapack_int lapack_logical lapack_logical lapack_logical* lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_complex_float* lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_int* float* float* float* ))
  (define-c-function lapack_int LAPACKE_ctgsja (int char char char lapack_int lapack_int lapack_int lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int float float float* float* lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_ctgsna (int char char lapack_logical* lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int float* float* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_ctgsyl (int char lapack_int lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int float* float* ))
  (define-c-function lapack_int LAPACKE_ctpcon (int char char char lapack_int lapack_complex_float* float* ))
  (define-c-function lapack_int LAPACKE_ctprfs (int char char char lapack_int lapack_int lapack_complex_float* lapack_complex_float* lapack_int lapack_complex_float* lapack_int float* float* ))
  (define-c-function lapack_int LAPACKE_ctptri (int char char lapack_int lapack_complex_float* ))
  (define-c-function lapack_int LAPACKE_ctptrs (int char char char lapack_int lapack_int lapack_complex_float* lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_ctpttf (int char char lapack_int lapack_complex_float* lapack_complex_float* ))
  (define-c-function lapack_int LAPACKE_ctpttr (int char lapack_int lapack_complex_float* lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_ctrcon (int char char char lapack_int lapack_complex_float* lapack_int float* ))
  (define-c-function lapack_int LAPACKE_ctrevc (int char char lapack_logical* lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_ctrexc (int char lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_int lapack_int ))
  (define-c-function lapack_int LAPACKE_ctrrfs (int char char char lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int float* float* ))
  (define-c-function lapack_int LAPACKE_ctrsen (int char char lapack_logical* lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int* float* float* ))
  (define-c-function lapack_int LAPACKE_ctrsna (int char char lapack_logical* lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int float* float* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_ctrsyl (int char char lapack_int lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int float* ))
  (define-c-function lapack_int LAPACKE_ctrtri (int char char lapack_int lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_ctrtrs (int char char char lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_ctrttf (int char char lapack_int lapack_complex_float* lapack_int lapack_complex_float* ))
  (define-c-function lapack_int LAPACKE_ctrttp (int char lapack_int lapack_complex_float* lapack_int lapack_complex_float* ))
  (define-c-function lapack_int LAPACKE_ctzrzf (int lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* ))
  (define-c-function lapack_int LAPACKE_cungbr (int char lapack_int lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* ))
  (define-c-function lapack_int LAPACKE_cunghr (int lapack_int lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* ))
  (define-c-function lapack_int LAPACKE_cunglq (int lapack_int lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* ))
  (define-c-function lapack_int LAPACKE_cungql (int lapack_int lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* ))
  (define-c-function lapack_int LAPACKE_cungqr (int lapack_int lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* ))
  (define-c-function lapack_int LAPACKE_cungrq (int lapack_int lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* ))
  (define-c-function lapack_int LAPACKE_cungtr (int char lapack_int lapack_complex_float* lapack_int lapack_complex_float* ))
  (define-c-function lapack_int LAPACKE_cunmbr (int char char char lapack_int lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_cunmhr (int char char lapack_int lapack_int lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_cunmlq (int char char lapack_int lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_cunmql (int char char lapack_int lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_cunmqr (int char char lapack_int lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_cunmrq (int char char lapack_int lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_cunmrz (int char char lapack_int lapack_int lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_cunmtr (int char char char lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_cupgtr (int char lapack_int lapack_complex_float* lapack_complex_float* lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_cupmtr (int char char char lapack_int lapack_int lapack_complex_float* lapack_complex_float* lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_cbdsqr_work (int char lapack_int lapack_int lapack_int lapack_int float* float* lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int float* ))
  (define-c-function lapack_int LAPACKE_cgbbrd_work (int char lapack_int lapack_int lapack_int lapack_int lapack_int lapack_complex_float* lapack_int float* float* lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_complex_float* float* ))
  (define-c-function lapack_int LAPACKE_cgbcon_work (int char lapack_int lapack_int lapack_int lapack_complex_float* lapack_int lapack_int* float float* lapack_complex_float* float* ))
  (define-c-function lapack_int LAPACKE_cgbequ_work (int lapack_int lapack_int lapack_int lapack_int lapack_complex_float* lapack_int float* float* float* float* float* ))
  (define-c-function lapack_int LAPACKE_cgbequb_work (int lapack_int lapack_int lapack_int lapack_int lapack_complex_float* lapack_int float* float* float* float* float* ))
  (define-c-function lapack_int LAPACKE_cgbrfs_work (int char lapack_int lapack_int lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_int* lapack_complex_float* lapack_int lapack_complex_float* lapack_int float* float* lapack_complex_float* float* ))
  (define-c-function lapack_int LAPACKE_cgbsv_work (int lapack_int lapack_int lapack_int lapack_int lapack_complex_float* lapack_int lapack_int* lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_cgbtrf_work (int lapack_int lapack_int lapack_int lapack_int lapack_complex_float* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_cgbtrs_work (int char lapack_int lapack_int lapack_int lapack_int lapack_complex_float* lapack_int lapack_int* lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_cgebak_work (int char char lapack_int lapack_int lapack_int float* lapack_int lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_cgebal_work (int char lapack_int lapack_complex_float* lapack_int lapack_int* lapack_int* float* ))
  (define-c-function lapack_int LAPACKE_cgebrd_work (int lapack_int lapack_int lapack_complex_float* lapack_int float* float* lapack_complex_float* lapack_complex_float* lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_cgecon_work (int char lapack_int lapack_complex_float* lapack_int float float* lapack_complex_float* float* ))
  (define-c-function lapack_int LAPACKE_cgeequ_work (int lapack_int lapack_int lapack_complex_float* lapack_int float* float* float* float* float* ))
  (define-c-function lapack_int LAPACKE_cgeequb_work (int lapack_int lapack_int lapack_complex_float* lapack_int float* float* float* float* float* ))
  (define-c-function lapack_int LAPACKE_cgees_work (int char char LAPACK_C_SELECT1 lapack_int lapack_complex_float* lapack_int lapack_int* lapack_complex_float* lapack_complex_float* lapack_int lapack_complex_float* lapack_int float* lapack_logical* ))
  (define-c-function lapack_int LAPACKE_cgeev_work (int char char lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int float* ))
  (define-c-function lapack_int LAPACKE_cgehrd_work (int lapack_int lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_cgelq2_work (int lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_complex_float* ))
  (define-c-function lapack_int LAPACKE_cgelqf_work (int lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_cgels_work (int char lapack_int lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_cgelsd_work (int lapack_int lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int float* float lapack_int* lapack_complex_float* lapack_int float* lapack_int* ))
  (define-c-function lapack_int LAPACKE_cgelss_work (int lapack_int lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int float* float lapack_int* lapack_complex_float* lapack_int float* ))
  (define-c-function lapack_int LAPACKE_cgelsy_work (int lapack_int lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_int* float lapack_int* lapack_complex_float* lapack_int float* ))
  (define-c-function lapack_int LAPACKE_cgeqlf_work (int lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_cgeqp3_work (int lapack_int lapack_int lapack_complex_float* lapack_int lapack_int* lapack_complex_float* lapack_complex_float* lapack_int float* ))
  (define-c-function lapack_int LAPACKE_cgeqpf_work (int lapack_int lapack_int lapack_complex_float* lapack_int lapack_int* lapack_complex_float* lapack_complex_float* float* ))
  (define-c-function lapack_int LAPACKE_cgeqr2_work (int lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_complex_float* ))
  (define-c-function lapack_int LAPACKE_cgeqrf_work (int lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_cgeqrfp_work (int lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_cgerfs_work (int char lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_int* lapack_complex_float* lapack_int lapack_complex_float* lapack_int float* float* lapack_complex_float* float* ))
  (define-c-function lapack_int LAPACKE_cgerqf_work (int lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_cgesdd_work (int char lapack_int lapack_int lapack_complex_float* lapack_int float* lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int float* lapack_int* ))
  (define-c-function lapack_int LAPACKE_cgesv_work (int lapack_int lapack_int lapack_complex_float* lapack_int lapack_int* lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_cgesvd_work (int char char lapack_int lapack_int lapack_complex_float* lapack_int float* lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int float* ))
  (define-c-function lapack_int LAPACKE_cgetf2_work (int lapack_int lapack_int lapack_complex_float* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_cgetrf_work (int lapack_int lapack_int lapack_complex_float* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_cgetri_work (int lapack_int lapack_complex_float* lapack_int lapack_int* lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_cgetrs_work (int char lapack_int lapack_int lapack_complex_float* lapack_int lapack_int* lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_cggbak_work (int char char lapack_int lapack_int lapack_int float* float* lapack_int lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_cggbal_work (int char lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_int* lapack_int* float* float* float* ))
  (define-c-function lapack_int LAPACKE_cgges_work (int char char char LAPACK_C_SELECT2 lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_int* lapack_complex_float* lapack_complex_float* lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int float* lapack_logical* ))
  (define-c-function lapack_int LAPACKE_cggev_work (int char char lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_complex_float* lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int float* ))
  (define-c-function lapack_int LAPACKE_cggglm_work (int lapack_int lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_complex_float* lapack_complex_float* lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_cgghrd_work (int char char lapack_int lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_cgglse_work (int lapack_int lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_complex_float* lapack_complex_float* lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_cggqrf_work (int lapack_int lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_complex_float* lapack_int lapack_complex_float* lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_cggrqf_work (int lapack_int lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_complex_float* lapack_int lapack_complex_float* lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_cggsvd_work (int char char char lapack_int lapack_int lapack_int lapack_int* lapack_int* lapack_complex_float* lapack_int lapack_complex_float* lapack_int float* float* lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_complex_float* float* lapack_int* ))
  (define-c-function lapack_int LAPACKE_cggsvp_work (int char char char lapack_int lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int float float lapack_int* lapack_int* lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_int* float* lapack_complex_float* lapack_complex_float* ))
  (define-c-function lapack_int LAPACKE_cgtcon_work (char lapack_int lapack_complex_float* lapack_complex_float* lapack_complex_float* lapack_complex_float* lapack_int* float float* lapack_complex_float* ))
  (define-c-function lapack_int LAPACKE_cgtrfs_work (int char lapack_int lapack_int lapack_complex_float* lapack_complex_float* lapack_complex_float* lapack_complex_float* lapack_complex_float* lapack_complex_float* lapack_complex_float* lapack_int* lapack_complex_float* lapack_int lapack_complex_float* lapack_int float* float* lapack_complex_float* float* ))
  (define-c-function lapack_int LAPACKE_cgtsv_work (int lapack_int lapack_int lapack_complex_float* lapack_complex_float* lapack_complex_float* lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_cgttrf_work (lapack_int lapack_complex_float* lapack_complex_float* lapack_complex_float* lapack_complex_float* lapack_int* ))
  (define-c-function lapack_int LAPACKE_cgttrs_work (int char lapack_int lapack_int lapack_complex_float* lapack_complex_float* lapack_complex_float* lapack_complex_float* lapack_int* lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_chbev_work (int char char lapack_int lapack_int lapack_complex_float* lapack_int float* lapack_complex_float* lapack_int lapack_complex_float* float* ))
  (define-c-function lapack_int LAPACKE_chbevd_work (int char char lapack_int lapack_int lapack_complex_float* lapack_int float* lapack_complex_float* lapack_int lapack_complex_float* lapack_int float* lapack_int lapack_int* lapack_int ))
  (define-c-function lapack_int LAPACKE_chbgst_work (int char char lapack_int lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_complex_float* float* ))
  (define-c-function lapack_int LAPACKE_chbgv_work (int char char lapack_int lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int float* lapack_complex_float* lapack_int lapack_complex_float* float* ))
  (define-c-function lapack_int LAPACKE_chbgvd_work (int char char lapack_int lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int float* lapack_complex_float* lapack_int lapack_complex_float* lapack_int float* lapack_int lapack_int* lapack_int ))
  (define-c-function lapack_int LAPACKE_chbtrd_work (int char char lapack_int lapack_int lapack_complex_float* lapack_int float* float* lapack_complex_float* lapack_int lapack_complex_float* ))
  (define-c-function lapack_int LAPACKE_checon_work (int char lapack_int lapack_complex_float* lapack_int lapack_int* float float* lapack_complex_float* ))
  (define-c-function lapack_int LAPACKE_cheequb_work (int char lapack_int lapack_complex_float* lapack_int float* float* float* lapack_complex_float* ))
  (define-c-function lapack_int LAPACKE_cheev_work (int char char lapack_int lapack_complex_float* lapack_int float* lapack_complex_float* lapack_int float* ))
  (define-c-function lapack_int LAPACKE_cheevd_work (int char char lapack_int lapack_complex_float* lapack_int float* lapack_complex_float* lapack_int float* lapack_int lapack_int* lapack_int ))
  (define-c-function lapack_int LAPACKE_cheevr_work (int char char char lapack_int lapack_complex_float* lapack_int float float lapack_int lapack_int float lapack_int* float* lapack_complex_float* lapack_int lapack_int* lapack_complex_float* lapack_int float* lapack_int lapack_int* lapack_int ))
  (define-c-function lapack_int LAPACKE_chegst_work (int lapack_int char lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_chegv_work (int lapack_int char char lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int float* lapack_complex_float* lapack_int float* ))
  (define-c-function lapack_int LAPACKE_chegvd_work (int lapack_int char char lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int float* lapack_complex_float* lapack_int float* lapack_int lapack_int* lapack_int ))
  (define-c-function lapack_int LAPACKE_cherfs_work (int char lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_int* lapack_complex_float* lapack_int lapack_complex_float* lapack_int float* float* lapack_complex_float* float* ))
  (define-c-function lapack_int LAPACKE_chesv_work (int char lapack_int lapack_int lapack_complex_float* lapack_int lapack_int* lapack_complex_float* lapack_int lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_chetrd_work (int char lapack_int lapack_complex_float* lapack_int float* float* lapack_complex_float* lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_chetrf_work (int char lapack_int lapack_complex_float* lapack_int lapack_int* lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_chetri_work (int char lapack_int lapack_complex_float* lapack_int lapack_int* lapack_complex_float* ))
  (define-c-function lapack_int LAPACKE_chetrs_work (int char lapack_int lapack_int lapack_complex_float* lapack_int lapack_int* lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_chfrk_work (int char char char lapack_int lapack_int float lapack_complex_float* lapack_int float lapack_complex_float* ))
  (define-c-function lapack_int LAPACKE_chgeqz_work (int char char char lapack_int lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_complex_float* lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int float* ))
  (define-c-function lapack_int LAPACKE_chpcon_work (int char lapack_int lapack_complex_float* lapack_int* float float* lapack_complex_float* ))
  (define-c-function lapack_int LAPACKE_chpev_work (int char char lapack_int lapack_complex_float* float* lapack_complex_float* lapack_int lapack_complex_float* float* ))
  (define-c-function lapack_int LAPACKE_chpevd_work (int char char lapack_int lapack_complex_float* float* lapack_complex_float* lapack_int lapack_complex_float* lapack_int float* lapack_int lapack_int* lapack_int ))
  (define-c-function lapack_int LAPACKE_chpgst_work (int lapack_int char lapack_int lapack_complex_float* lapack_complex_float* ))
  (define-c-function lapack_int LAPACKE_chpgv_work (int lapack_int char char lapack_int lapack_complex_float* lapack_complex_float* float* lapack_complex_float* lapack_int lapack_complex_float* float* ))
  (define-c-function lapack_int LAPACKE_chpgvd_work (int lapack_int char char lapack_int lapack_complex_float* lapack_complex_float* float* lapack_complex_float* lapack_int lapack_complex_float* lapack_int float* lapack_int lapack_int* lapack_int ))
  (define-c-function lapack_int LAPACKE_chprfs_work (int char lapack_int lapack_int lapack_complex_float* lapack_complex_float* lapack_int* lapack_complex_float* lapack_int lapack_complex_float* lapack_int float* float* lapack_complex_float* float* ))
  (define-c-function lapack_int LAPACKE_chpsv_work (int char lapack_int lapack_int lapack_complex_float* lapack_int* lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_chptrd_work (int char lapack_int lapack_complex_float* float* float* lapack_complex_float* ))
  (define-c-function lapack_int LAPACKE_chptrf_work (int char lapack_int lapack_complex_float* lapack_int* ))
  (define-c-function lapack_int LAPACKE_chptri_work (int char lapack_int lapack_complex_float* lapack_int* lapack_complex_float* ))
  (define-c-function lapack_int LAPACKE_chptrs_work (int char lapack_int lapack_int lapack_complex_float* lapack_int* lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_chsein_work (int char char char lapack_logical* lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_int lapack_int* lapack_complex_float* float* lapack_int* lapack_int* ))
  (define-c-function lapack_int LAPACKE_chseqr_work (int char char lapack_int lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_complex_float* lapack_int lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_clacgv_work (lapack_int lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_clacn2_work (lapack_int lapack_complex_float* lapack_complex_float* float* lapack_int* lapack_int* ))
  (define-c-function lapack_int LAPACKE_clacpy_work (int char lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_clacp2_work (int char lapack_int lapack_int float* lapack_int lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_clag2z_work (int lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_clagge_work (int lapack_int lapack_int lapack_int lapack_int float* lapack_complex_float* lapack_int lapack_int* lapack_complex_float* ))
  (define-c-function lapack_int LAPACKE_claghe_work (int lapack_int lapack_int float* lapack_complex_float* lapack_int lapack_int* lapack_complex_float* ))
  (define-c-function lapack_int LAPACKE_clagsy_work (int lapack_int lapack_int float* lapack_complex_float* lapack_int lapack_int* lapack_complex_float* ))
  (define-c-function lapack_int LAPACKE_clapmr_work (int lapack_logical lapack_int lapack_int lapack_complex_float* lapack_int lapack_int* ))
  (define-c-function float LAPACKE_clange_work (int char lapack_int lapack_int lapack_complex_float* lapack_int float* ))
  (define-c-function float LAPACKE_clanhe_work (int char char lapack_int lapack_complex_float* lapack_int float* ))
  (define-c-function float LAPACKE_clansy_work (int char char lapack_int lapack_complex_float* lapack_int float* ))
  (define-c-function float LAPACKE_clantr_work (int char char char lapack_int lapack_int lapack_complex_float* lapack_int float* ))
  (define-c-function lapack_int LAPACKE_clarfb_work (int char char char char lapack_int lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_clarfg_work (lapack_int lapack_complex_float* lapack_complex_float* lapack_int lapack_complex_float* ))
  (define-c-function lapack_int LAPACKE_clarft_work (int char char lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_clarnv_work (lapack_int lapack_int* lapack_int lapack_complex_float* ))
  (define-c-function lapack_int LAPACKE_claset_work (int char lapack_int lapack_int lapack_complex_float lapack_complex_float lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_claswp_work (int lapack_int lapack_complex_float* lapack_int lapack_int lapack_int lapack_int* lapack_int ))
  (define-c-function lapack_int LAPACKE_clatms_work (int lapack_int lapack_int char lapack_int* char float* lapack_int float float lapack_int lapack_int char lapack_complex_float* lapack_int lapack_complex_float* ))
  (define-c-function lapack_int LAPACKE_clauum_work (int char lapack_int lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_cpbcon_work (int char lapack_int lapack_int lapack_complex_float* lapack_int float float* lapack_complex_float* float* ))
  (define-c-function lapack_int LAPACKE_cpbequ_work (int char lapack_int lapack_int lapack_complex_float* lapack_int float* float* float* ))
  (define-c-function lapack_int LAPACKE_cpbrfs_work (int char lapack_int lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int float* float* lapack_complex_float* float* ))
  (define-c-function lapack_int LAPACKE_cpbstf_work (int char lapack_int lapack_int lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_cpbsv_work (int char lapack_int lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_cpbtrf_work (int char lapack_int lapack_int lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_cpbtrs_work (int char lapack_int lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_cpftrf_work (int char char lapack_int lapack_complex_float* ))
  (define-c-function lapack_int LAPACKE_cpftri_work (int char char lapack_int lapack_complex_float* ))
  (define-c-function lapack_int LAPACKE_cpftrs_work (int char char lapack_int lapack_int lapack_complex_float* lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_cpocon_work (int char lapack_int lapack_complex_float* lapack_int float float* lapack_complex_float* float* ))
  (define-c-function lapack_int LAPACKE_cpoequ_work (int lapack_int lapack_complex_float* lapack_int float* float* float* ))
  (define-c-function lapack_int LAPACKE_cpoequb_work (int lapack_int lapack_complex_float* lapack_int float* float* float* ))
  (define-c-function lapack_int LAPACKE_cporfs_work (int char lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int float* float* lapack_complex_float* float* ))
  (define-c-function lapack_int LAPACKE_cposv_work (int char lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_cpotrf_work (int char lapack_int lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_cpotri_work (int char lapack_int lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_cpotrs_work (int char lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_cppcon_work (int char lapack_int lapack_complex_float* float float* lapack_complex_float* float* ))
  (define-c-function lapack_int LAPACKE_cppequ_work (int char lapack_int lapack_complex_float* float* float* float* ))
  (define-c-function lapack_int LAPACKE_cpprfs_work (int char lapack_int lapack_int lapack_complex_float* lapack_complex_float* lapack_complex_float* lapack_int lapack_complex_float* lapack_int float* float* lapack_complex_float* float* ))
  (define-c-function lapack_int LAPACKE_cppsv_work (int char lapack_int lapack_int lapack_complex_float* lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_cpptrf_work (int char lapack_int lapack_complex_float* ))
  (define-c-function lapack_int LAPACKE_cpptri_work (int char lapack_int lapack_complex_float* ))
  (define-c-function lapack_int LAPACKE_cpptrs_work (int char lapack_int lapack_int lapack_complex_float* lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_cpstrf_work (int char lapack_int lapack_complex_float* lapack_int lapack_int* lapack_int* float float* ))
  (define-c-function lapack_int LAPACKE_cptcon_work (lapack_int float* lapack_complex_float* float float* float* ))
  (define-c-function lapack_int LAPACKE_cpteqr_work (int char lapack_int float* float* lapack_complex_float* lapack_int float* ))
  (define-c-function lapack_int LAPACKE_cptrfs_work (int char lapack_int lapack_int float* lapack_complex_float* float* lapack_complex_float* lapack_complex_float* lapack_int lapack_complex_float* lapack_int float* float* lapack_complex_float* float* ))
  (define-c-function lapack_int LAPACKE_cptsv_work (int lapack_int lapack_int float* lapack_complex_float* lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_cpttrf_work (lapack_int float* lapack_complex_float* ))
  (define-c-function lapack_int LAPACKE_cpttrs_work (int char lapack_int lapack_int float* lapack_complex_float* lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_cspcon_work (int char lapack_int lapack_complex_float* lapack_int* float float* lapack_complex_float* ))
  (define-c-function lapack_int LAPACKE_csprfs_work (int char lapack_int lapack_int lapack_complex_float* lapack_complex_float* lapack_int* lapack_complex_float* lapack_int lapack_complex_float* lapack_int float* float* lapack_complex_float* float* ))
  (define-c-function lapack_int LAPACKE_cspsv_work (int char lapack_int lapack_int lapack_complex_float* lapack_int* lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_csptrf_work (int char lapack_int lapack_complex_float* lapack_int* ))
  (define-c-function lapack_int LAPACKE_csptri_work (int char lapack_int lapack_complex_float* lapack_int* lapack_complex_float* ))
  (define-c-function lapack_int LAPACKE_csptrs_work (int char lapack_int lapack_int lapack_complex_float* lapack_int* lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_cstedc_work (int char lapack_int float* float* lapack_complex_float* lapack_int lapack_complex_float* lapack_int float* lapack_int lapack_int* lapack_int ))
  (define-c-function lapack_int LAPACKE_cstegr_work (int char char lapack_int float* float* float float lapack_int lapack_int float lapack_int* float* lapack_complex_float* lapack_int lapack_int* float* lapack_int lapack_int* lapack_int ))
  (define-c-function lapack_int LAPACKE_cstein_work (int lapack_int float* float* lapack_int float* lapack_int* lapack_int* lapack_complex_float* lapack_int float* lapack_int* lapack_int* ))
  (define-c-function lapack_int LAPACKE_cstemr_work (int char char lapack_int float* float* float float lapack_int lapack_int lapack_int* float* lapack_complex_float* lapack_int lapack_int lapack_int* lapack_logical* float* lapack_int lapack_int* lapack_int ))
  (define-c-function lapack_int LAPACKE_csteqr_work (int char lapack_int float* float* lapack_complex_float* lapack_int float* ))
  (define-c-function lapack_int LAPACKE_csycon_work (int char lapack_int lapack_complex_float* lapack_int lapack_int* float float* lapack_complex_float* ))
  (define-c-function lapack_int LAPACKE_csyequb_work (int char lapack_int lapack_complex_float* lapack_int float* float* float* lapack_complex_float* ))
  (define-c-function lapack_int LAPACKE_csyrfs_work (int char lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_int* lapack_complex_float* lapack_int lapack_complex_float* lapack_int float* float* lapack_complex_float* float* ))
  (define-c-function lapack_int LAPACKE_csysv_work (int char lapack_int lapack_int lapack_complex_float* lapack_int lapack_int* lapack_complex_float* lapack_int lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_csysv_rook_work (int char lapack_int lapack_int lapack_complex_float* lapack_int lapack_int* lapack_complex_float* lapack_int lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_csytrf_work (int char lapack_int lapack_complex_float* lapack_int lapack_int* lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_csytri_work (int char lapack_int lapack_complex_float* lapack_int lapack_int* lapack_complex_float* ))
  (define-c-function lapack_int LAPACKE_csytrs_work (int char lapack_int lapack_int lapack_complex_float* lapack_int lapack_int* lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_ctbcon_work (int char char char lapack_int lapack_int lapack_complex_float* lapack_int float* lapack_complex_float* float* ))
  (define-c-function lapack_int LAPACKE_ctbrfs_work (int char char char lapack_int lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int float* float* lapack_complex_float* float* ))
  (define-c-function lapack_int LAPACKE_ctbtrs_work (int char char char lapack_int lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_ctfsm_work (int char char char char char lapack_int lapack_int lapack_complex_float lapack_complex_float* lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_ctftri_work (int char char char lapack_int lapack_complex_float* ))
  (define-c-function lapack_int LAPACKE_ctfttp_work (int char char lapack_int lapack_complex_float* lapack_complex_float* ))
  (define-c-function lapack_int LAPACKE_ctfttr_work (int char char lapack_int lapack_complex_float* lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_ctgevc_work (int char char lapack_logical* lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_int lapack_int* lapack_complex_float* float* ))
  (define-c-function lapack_int LAPACKE_ctgexc_work (int lapack_logical lapack_logical lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_int lapack_int ))
  (define-c-function lapack_int LAPACKE_ctgsen_work (int lapack_int lapack_logical lapack_logical lapack_logical* lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_complex_float* lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_int* float* float* float* lapack_complex_float* lapack_int lapack_int* lapack_int ))
  (define-c-function lapack_int LAPACKE_ctgsja_work (int char char char lapack_int lapack_int lapack_int lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int float float float* float* lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int* ))
  (define-c-function lapack_int LAPACKE_ctgsna_work (int char char lapack_logical* lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int float* float* lapack_int lapack_int* lapack_complex_float* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_ctgsyl_work (int char lapack_int lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int float* float* lapack_complex_float* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_ctpcon_work (int char char char lapack_int lapack_complex_float* float* lapack_complex_float* float* ))
  (define-c-function lapack_int LAPACKE_ctprfs_work (int char char char lapack_int lapack_int lapack_complex_float* lapack_complex_float* lapack_int lapack_complex_float* lapack_int float* float* lapack_complex_float* float* ))
  (define-c-function lapack_int LAPACKE_ctptri_work (int char char lapack_int lapack_complex_float* ))
  (define-c-function lapack_int LAPACKE_ctptrs_work (int char char char lapack_int lapack_int lapack_complex_float* lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_ctpttf_work (int char char lapack_int lapack_complex_float* lapack_complex_float* ))
  (define-c-function lapack_int LAPACKE_ctpttr_work (int char lapack_int lapack_complex_float* lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_ctrcon_work (int char char char lapack_int lapack_complex_float* lapack_int float* lapack_complex_float* float* ))
  (define-c-function lapack_int LAPACKE_ctrevc_work (int char char lapack_logical* lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_int lapack_int* lapack_complex_float* float* ))
  (define-c-function lapack_int LAPACKE_ctrexc_work (int char lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_int lapack_int ))
  (define-c-function lapack_int LAPACKE_ctrrfs_work (int char char char lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int float* float* lapack_complex_float* float* ))
  (define-c-function lapack_int LAPACKE_ctrsen_work (int char char lapack_logical* lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int* float* float* lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_ctrsna_work (int char char lapack_logical* lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int float* float* lapack_int lapack_int* lapack_complex_float* lapack_int float* ))
  (define-c-function lapack_int LAPACKE_ctrsyl_work (int char char lapack_int lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int float* ))
  (define-c-function lapack_int LAPACKE_ctrtri_work (int char char lapack_int lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_ctrtrs_work (int char char char lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_ctrttf_work (int char char lapack_int lapack_complex_float* lapack_int lapack_complex_float* ))
  (define-c-function lapack_int LAPACKE_ctrttp_work (int char lapack_int lapack_complex_float* lapack_int lapack_complex_float* ))
  (define-c-function lapack_int LAPACKE_ctzrzf_work (int lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_cungbr_work (int char lapack_int lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_cunghr_work (int lapack_int lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_cunglq_work (int lapack_int lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_cungql_work (int lapack_int lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_cungqr_work (int lapack_int lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_cungrq_work (int lapack_int lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_cungtr_work (int char lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_cunmbr_work (int char char char lapack_int lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_complex_float* lapack_int lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_cunmhr_work (int char char lapack_int lapack_int lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_complex_float* lapack_int lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_cunmlq_work (int char char lapack_int lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_complex_float* lapack_int lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_cunmql_work (int char char lapack_int lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_complex_float* lapack_int lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_cunmqr_work (int char char lapack_int lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_complex_float* lapack_int lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_cunmrq_work (int char char lapack_int lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_complex_float* lapack_int lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_cunmrz_work (int char char lapack_int lapack_int lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_complex_float* lapack_int lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_cunmtr_work (int char char char lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_complex_float* lapack_int lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_cupgtr_work (int char lapack_int lapack_complex_float* lapack_complex_float* lapack_complex_float* lapack_int lapack_complex_float* ))
  (define-c-function lapack_int LAPACKE_cupmtr_work (int char char char lapack_int lapack_int lapack_complex_float* lapack_complex_float* lapack_complex_float* lapack_int lapack_complex_float* ))
  (define-c-function lapack_int LAPACKE_claghe (int lapack_int lapack_int float* lapack_complex_float* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_clagsy (int lapack_int lapack_int float* lapack_complex_float* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_clapmr (int lapack_logical lapack_int lapack_int lapack_complex_float* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_cbbcsd (int char char char char char lapack_int lapack_int lapack_int float* float* lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int float* float* float* float* float* float* float* float* ))
  (define-c-function lapack_int LAPACKE_cbbcsd_work (int char char char char char lapack_int lapack_int lapack_int float* float* lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int float* float* float* float* float* float* float* float* float* lapack_int ))
  (define-c-function lapack_int LAPACKE_cheswapr (int char lapack_int lapack_complex_float* lapack_int lapack_int ))
  (define-c-function lapack_int LAPACKE_cheswapr_work (int char lapack_int lapack_complex_float* lapack_int lapack_int ))
  (define-c-function lapack_int LAPACKE_chetri2 (int char lapack_int lapack_complex_float* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_chetri2_work (int char lapack_int lapack_complex_float* lapack_int lapack_int* lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_chetrs2 (int char lapack_int lapack_int lapack_complex_float* lapack_int lapack_int* lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_chetrs2_work (int char lapack_int lapack_int lapack_complex_float* lapack_int lapack_int* lapack_complex_float* lapack_int lapack_complex_float* ))
  (define-c-function lapack_int LAPACKE_csyconv (int char char lapack_int lapack_complex_float* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_csyconv_work (int char char lapack_int lapack_complex_float* lapack_int lapack_int* lapack_complex_float* ))
  (define-c-function lapack_int LAPACKE_csyswapr (int char lapack_int lapack_complex_float* lapack_int lapack_int ))
  (define-c-function lapack_int LAPACKE_csyswapr_work (int char lapack_int lapack_complex_float* lapack_int lapack_int ))
  (define-c-function lapack_int LAPACKE_csytri2 (int char lapack_int lapack_complex_float* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_csytri2_work (int char lapack_int lapack_complex_float* lapack_int lapack_int* lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_csytrs2 (int char lapack_int lapack_int lapack_complex_float* lapack_int lapack_int* lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_csytrs2_work (int char lapack_int lapack_int lapack_complex_float* lapack_int lapack_int* lapack_complex_float* lapack_int lapack_complex_float* ))
  (define-c-function lapack_int LAPACKE_cunbdb (int char char lapack_int lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int float* float* lapack_complex_float* lapack_complex_float* lapack_complex_float* lapack_complex_float* ))
  (define-c-function lapack_int LAPACKE_cunbdb_work (int char char lapack_int lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int float* float* lapack_complex_float* lapack_complex_float* lapack_complex_float* lapack_complex_float* lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_cuncsd (int char char char char char char lapack_int lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int float* lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_cuncsd_work (int char char char char char char lapack_int lapack_int lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int float* lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int lapack_complex_float* lapack_int float* lapack_int lapack_int* ))
  #| end of library |#)

;;; end of file
