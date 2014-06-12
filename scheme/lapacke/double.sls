(library (lapacke double (3 5 0))
  (export
    LAPACKE_dbdsdc
    LAPACKE_dbdsqr
    LAPACKE_ddisna
    LAPACKE_dgbbrd
    LAPACKE_dgbcon
    LAPACKE_dgbequ
    LAPACKE_dgbequb
    LAPACKE_dgbrfs
    LAPACKE_dgbsv
    LAPACKE_dgbtrf
    LAPACKE_dgbtrs
    LAPACKE_dgebak
    LAPACKE_dgebal
    LAPACKE_dgebrd
    LAPACKE_dgecon
    LAPACKE_dgeequ
    LAPACKE_dgeequb
    LAPACKE_dgees
    LAPACKE_dgeev
    LAPACKE_dgehrd
    LAPACKE_dgejsv
    LAPACKE_dgelq2
    LAPACKE_dgelqf
    LAPACKE_dgels
    LAPACKE_dgelsd
    LAPACKE_dgelss
    LAPACKE_dgelsy
    LAPACKE_dgeqlf
    LAPACKE_dgeqp3
    LAPACKE_dgeqpf
    LAPACKE_dgeqr2
    LAPACKE_dgeqrf
    LAPACKE_dgeqrfp
    LAPACKE_dgerfs
    LAPACKE_dgerqf
    LAPACKE_dgesdd
    LAPACKE_dgesv
    LAPACKE_dsgesv
    LAPACKE_dgesvd
    LAPACKE_dgesvj
    LAPACKE_dgetf2
    LAPACKE_dgetrf
    LAPACKE_dgetri
    LAPACKE_dgetrs
    LAPACKE_dggbak
    LAPACKE_dggbal
    LAPACKE_dgges
    LAPACKE_dggev
    LAPACKE_dggglm
    LAPACKE_dgghrd
    LAPACKE_dgglse
    LAPACKE_dggqrf
    LAPACKE_dggrqf
    LAPACKE_dggsvd
    LAPACKE_dggsvp
    LAPACKE_dgtcon
    LAPACKE_dgtrfs
    LAPACKE_dgtsv
    LAPACKE_dgttrf
    LAPACKE_dgttrs
    LAPACKE_dhgeqz
    LAPACKE_dhsein
    LAPACKE_dhseqr
    LAPACKE_dlacn2
    LAPACKE_dlacpy
    LAPACKE_dlag2s
    LAPACKE_dlagge
    LAPACKE_dlamch
    LAPACKE_dlange
    LAPACKE_dlansy
    LAPACKE_dlantr
    LAPACKE_dlarfb
    LAPACKE_dlarfg
    LAPACKE_dlarft
    LAPACKE_dlarnv
    LAPACKE_dlaset
    LAPACKE_dlasrt
    LAPACKE_dlaswp
    LAPACKE_dlatms
    LAPACKE_dlauum
    LAPACKE_dopgtr
    LAPACKE_dopmtr
    LAPACKE_dorgbr
    LAPACKE_dorghr
    LAPACKE_dorglq
    LAPACKE_dorgql
    LAPACKE_dorgqr
    LAPACKE_dorgrq
    LAPACKE_dorgtr
    LAPACKE_dormbr
    LAPACKE_dormhr
    LAPACKE_dormlq
    LAPACKE_dormql
    LAPACKE_dormqr
    LAPACKE_dormrq
    LAPACKE_dormrz
    LAPACKE_dormtr
    LAPACKE_dpbcon
    LAPACKE_dpbequ
    LAPACKE_dpbrfs
    LAPACKE_dpbstf
    LAPACKE_dpbsv
    LAPACKE_dpbtrf
    LAPACKE_dpbtrs
    LAPACKE_dpftrf
    LAPACKE_dpftri
    LAPACKE_dpftrs
    LAPACKE_dpocon
    LAPACKE_dpoequ
    LAPACKE_dpoequb
    LAPACKE_dporfs
    LAPACKE_dposv
    LAPACKE_dsposv
    LAPACKE_dpotrf
    LAPACKE_dpotri
    LAPACKE_dpotrs
    LAPACKE_dppcon
    LAPACKE_dppequ
    LAPACKE_dpprfs
    LAPACKE_dppsv
    LAPACKE_dpptrf
    LAPACKE_dpptri
    LAPACKE_dpptrs
    LAPACKE_dpstrf
    LAPACKE_dptcon
    LAPACKE_dpteqr
    LAPACKE_dptrfs
    LAPACKE_dptsv
    LAPACKE_dpttrf
    LAPACKE_dpttrs
    LAPACKE_dsbev
    LAPACKE_dsbevd
    LAPACKE_dsbgst
    LAPACKE_dsbgv
    LAPACKE_dsbgvd
    LAPACKE_dsbtrd
    LAPACKE_dsfrk
    LAPACKE_dspcon
    LAPACKE_dspev
    LAPACKE_dspevd
    LAPACKE_dspgst
    LAPACKE_dspgv
    LAPACKE_dspgvd
    LAPACKE_dsprfs
    LAPACKE_dspsv
    LAPACKE_dsptrd
    LAPACKE_dsptrf
    LAPACKE_dsptri
    LAPACKE_dsptrs
    LAPACKE_dstebz
    LAPACKE_dstedc
    LAPACKE_dstegr
    LAPACKE_dstein
    LAPACKE_dstemr
    LAPACKE_dsteqr
    LAPACKE_dsterf
    LAPACKE_dstev
    LAPACKE_dstevd
    LAPACKE_dstevr
    LAPACKE_dsycon
    LAPACKE_dsyequb
    LAPACKE_dsyev
    LAPACKE_dsyevd
    LAPACKE_dsyevr
    LAPACKE_dsygst
    LAPACKE_dsygv
    LAPACKE_dsygvd
    LAPACKE_dsyrfs
    LAPACKE_dsysv
    LAPACKE_dsytrd
    LAPACKE_dsytrf
    LAPACKE_dsytri
    LAPACKE_dsytrs
    LAPACKE_dtbcon
    LAPACKE_dtbrfs
    LAPACKE_dtbtrs
    LAPACKE_dtfsm
    LAPACKE_dtftri
    LAPACKE_dtfttp
    LAPACKE_dtfttr
    LAPACKE_dtgevc
    LAPACKE_dtgexc
    LAPACKE_dtgsen
    LAPACKE_dtgsja
    LAPACKE_dtgsna
    LAPACKE_dtgsyl
    LAPACKE_dtpcon
    LAPACKE_dtprfs
    LAPACKE_dtptri
    LAPACKE_dtptrs
    LAPACKE_dtpttf
    LAPACKE_dtpttr
    LAPACKE_dtrcon
    LAPACKE_dtrevc
    LAPACKE_dtrexc
    LAPACKE_dtrrfs
    LAPACKE_dtrsen
    LAPACKE_dtrsna
    LAPACKE_dtrsyl
    LAPACKE_dtrtri
    LAPACKE_dtrtrs
    LAPACKE_dtrttf
    LAPACKE_dtrttp
    LAPACKE_dtzrzf
    LAPACKE_dbdsdc_work
    LAPACKE_dbdsqr_work
    LAPACKE_ddisna_work
    LAPACKE_dgbbrd_work
    LAPACKE_dgbcon_work
    LAPACKE_dgbequ_work
    LAPACKE_dgbequb_work
    LAPACKE_dgbrfs_work
    LAPACKE_dgbsv_work
    LAPACKE_dgbtrf_work
    LAPACKE_dgbtrs_work
    LAPACKE_dgebak_work
    LAPACKE_dgebal_work
    LAPACKE_dgebrd_work
    LAPACKE_dgecon_work
    LAPACKE_dgeequ_work
    LAPACKE_dgeequb_work
    LAPACKE_dgees_work
    LAPACKE_dgeev_work
    LAPACKE_dgehrd_work
    LAPACKE_dgejsv_work
    LAPACKE_dgelq2_work
    LAPACKE_dgelqf_work
    LAPACKE_dgels_work
    LAPACKE_dgelsd_work
    LAPACKE_dgelss_work
    LAPACKE_dgelsy_work
    LAPACKE_dgeqlf_work
    LAPACKE_dgeqp3_work
    LAPACKE_dgeqpf_work
    LAPACKE_dgeqr2_work
    LAPACKE_dgeqrf_work
    LAPACKE_dgeqrfp_work
    LAPACKE_dgerfs_work
    LAPACKE_dgerqf_work
    LAPACKE_dgesdd_work
    LAPACKE_dgesv_work
    LAPACKE_dsgesv_work
    LAPACKE_dgesvd_work
    LAPACKE_dgesvj_work
    LAPACKE_dgetf2_work
    LAPACKE_dgetrf_work
    LAPACKE_dgetri_work
    LAPACKE_dgetrs_work
    LAPACKE_dggbak_work
    LAPACKE_dggbal_work
    LAPACKE_dgges_work
    LAPACKE_dggev_work
    LAPACKE_dggglm_work
    LAPACKE_dgghrd_work
    LAPACKE_dgglse_work
    LAPACKE_dggqrf_work
    LAPACKE_dggrqf_work
    LAPACKE_dggsvd_work
    LAPACKE_dggsvp_work
    LAPACKE_dgtcon_work
    LAPACKE_dgtrfs_work
    LAPACKE_dgtsv_work
    LAPACKE_dgttrf_work
    LAPACKE_dgttrs_work
    LAPACKE_dhgeqz_work
    LAPACKE_dhsein_work
    LAPACKE_dhseqr_work
    LAPACKE_dlacn2_work
    LAPACKE_dlacpy_work
    LAPACKE_dlag2s_work
    LAPACKE_dlagge_work
    LAPACKE_dlagsy_work
    LAPACKE_dlapmr_work
    LAPACKE_dlartgp_work
    LAPACKE_dlartgs_work
    LAPACKE_dlapy2_work
    LAPACKE_dlapy3_work
    LAPACKE_dlamch_work
    LAPACKE_dlange_work
    LAPACKE_dlansy_work
    LAPACKE_dlantr_work
    LAPACKE_dlarfb_work
    LAPACKE_dlarfg_work
    LAPACKE_dlarft_work
    LAPACKE_dlarnv_work
    LAPACKE_dlaset_work
    LAPACKE_dlasrt_work
    LAPACKE_dlaswp_work
    LAPACKE_dlatms_work
    LAPACKE_dlauum_work
    LAPACKE_dopgtr_work
    LAPACKE_dopmtr_work
    LAPACKE_dorgbr_work
    LAPACKE_dorghr_work
    LAPACKE_dorglq_work
    LAPACKE_dorgql_work
    LAPACKE_dorgqr_work
    LAPACKE_dorgrq_work
    LAPACKE_dorgtr_work
    LAPACKE_dormbr_work
    LAPACKE_dormhr_work
    LAPACKE_dormlq_work
    LAPACKE_dormql_work
    LAPACKE_dormqr_work
    LAPACKE_dormrq_work
    LAPACKE_dormrz_work
    LAPACKE_dormtr_work
    LAPACKE_dpbcon_work
    LAPACKE_dpbequ_work
    LAPACKE_dpbrfs_work
    LAPACKE_dpbstf_work
    LAPACKE_dpbsv_work
    LAPACKE_dpbtrf_work
    LAPACKE_dpbtrs_work
    LAPACKE_dpftrf_work
    LAPACKE_dpftri_work
    LAPACKE_dpftrs_work
    LAPACKE_dpocon_work
    LAPACKE_dpoequ_work
    LAPACKE_dpoequb_work
    LAPACKE_dporfs_work
    LAPACKE_dposv_work
    LAPACKE_dsposv_work
    LAPACKE_dpotrf_work
    LAPACKE_dpotri_work
    LAPACKE_dpotrs_work
    LAPACKE_dppcon_work
    LAPACKE_dppequ_work
    LAPACKE_dpprfs_work
    LAPACKE_dppsv_work
    LAPACKE_dpptrf_work
    LAPACKE_dpptri_work
    LAPACKE_dpptrs_work
    LAPACKE_dpstrf_work
    LAPACKE_dptcon_work
    LAPACKE_dpteqr_work
    LAPACKE_dptrfs_work
    LAPACKE_dptsv_work
    LAPACKE_dpttrf_work
    LAPACKE_dpttrs_work
    LAPACKE_dsbev_work
    LAPACKE_dsbevd_work
    LAPACKE_dsbgst_work
    LAPACKE_dsbgv_work
    LAPACKE_dsbgvd_work
    LAPACKE_dsbtrd_work
    LAPACKE_dsfrk_work
    LAPACKE_dspcon_work
    LAPACKE_dspev_work
    LAPACKE_dspevd_work
    LAPACKE_dspgst_work
    LAPACKE_dspgv_work
    LAPACKE_dspgvd_work
    LAPACKE_dsprfs_work
    LAPACKE_dspsv_work
    LAPACKE_dsptrd_work
    LAPACKE_dsptrf_work
    LAPACKE_dsptri_work
    LAPACKE_dsptrs_work
    LAPACKE_dstebz_work
    LAPACKE_dstedc_work
    LAPACKE_dstegr_work
    LAPACKE_dstein_work
    LAPACKE_dstemr_work
    LAPACKE_dsteqr_work
    LAPACKE_dsterf_work
    LAPACKE_dstev_work
    LAPACKE_dstevd_work
    LAPACKE_dstevr_work
    LAPACKE_dsycon_work
    LAPACKE_dsyequb_work
    LAPACKE_dsyev_work
    LAPACKE_dsyevd_work
    LAPACKE_dsyevr_work
    LAPACKE_dsygst_work
    LAPACKE_dsygv_work
    LAPACKE_dsygvd_work
    LAPACKE_dsyrfs_work
    LAPACKE_dsysv_work
    LAPACKE_dsysv_rook_work
    LAPACKE_dsytrd_work
    LAPACKE_dsytrf_work
    LAPACKE_dsytri_work
    LAPACKE_dsytrs_work
    LAPACKE_dtbcon_work
    LAPACKE_dtbrfs_work
    LAPACKE_dtbtrs_work
    LAPACKE_dtfsm_work
    LAPACKE_dtftri_work
    LAPACKE_dtfttp_work
    LAPACKE_dtfttr_work
    LAPACKE_dtgevc_work
    LAPACKE_dtgexc_work
    LAPACKE_dtgsen_work
    LAPACKE_dtgsja_work
    LAPACKE_dtgsna_work
    LAPACKE_dtgsyl_work
    LAPACKE_dtpcon_work
    LAPACKE_dtprfs_work
    LAPACKE_dtptri_work
    LAPACKE_dtptrs_work
    LAPACKE_dtpttf_work
    LAPACKE_dtpttr_work
    LAPACKE_dtrcon_work
    LAPACKE_dtrevc_work
    LAPACKE_dtrexc_work
    LAPACKE_dtrrfs_work
    LAPACKE_dtrsen_work
    LAPACKE_dtrsna_work
    LAPACKE_dtrsyl_work
    LAPACKE_dtrtri_work
    LAPACKE_dtrtrs_work
    LAPACKE_dtrttf_work
    LAPACKE_dtrttp_work
    LAPACKE_dtzrzf_work
    LAPACKE_dlagsy
    LAPACKE_dlapmr
    LAPACKE_dlapy2
    LAPACKE_dlapy3
    LAPACKE_dlartgp
    LAPACKE_dlartgs
    LAPACKE_dbbcsd
    LAPACKE_dbbcsd_work
    LAPACKE_dorbdb
    LAPACKE_dorbdb_work
    LAPACKE_dorcsd
    LAPACKE_dorcsd_work
    LAPACKE_dsyconv
    LAPACKE_dsyconv_work
    LAPACKE_dsyswapr
    LAPACKE_dsyswapr_work
    LAPACKE_dsytri2
    LAPACKE_dsytri2_work
    LAPACKE_dsytrs2
    LAPACKE_dsytrs2_work)
  (import (rnrs (6)) (lapacke compat))
  (define-shared-object "liblapacke.so")
  (define-c-function lapack_int LAPACKE_dbdsdc (int char char lapack_int double* double* double* lapack_int double* lapack_int double* lapack_int* ))
  (define-c-function lapack_int LAPACKE_dbdsqr (int char lapack_int lapack_int lapack_int lapack_int double* double* double* lapack_int double* lapack_int double* lapack_int ))
  (define-c-function lapack_int LAPACKE_ddisna (char lapack_int lapack_int double* double* ))
  (define-c-function lapack_int LAPACKE_dgbbrd (int char lapack_int lapack_int lapack_int lapack_int lapack_int double* lapack_int double* double* double* lapack_int double* lapack_int double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dgbcon (int char lapack_int lapack_int lapack_int double* lapack_int lapack_int* double double* ))
  (define-c-function lapack_int LAPACKE_dgbequ (int lapack_int lapack_int lapack_int lapack_int double* lapack_int double* double* double* double* double* ))
  (define-c-function lapack_int LAPACKE_dgbequb (int lapack_int lapack_int lapack_int lapack_int double* lapack_int double* double* double* double* double* ))
  (define-c-function lapack_int LAPACKE_dgbrfs (int char lapack_int lapack_int lapack_int lapack_int double* lapack_int double* lapack_int lapack_int* double* lapack_int double* lapack_int double* double* ))
  (define-c-function lapack_int LAPACKE_dgbsv (int lapack_int lapack_int lapack_int lapack_int double* lapack_int lapack_int* double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dgbtrf (int lapack_int lapack_int lapack_int lapack_int double* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_dgbtrs (int char lapack_int lapack_int lapack_int lapack_int double* lapack_int lapack_int* double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dgebak (int char char lapack_int lapack_int lapack_int double* lapack_int double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dgebal (int char lapack_int double* lapack_int lapack_int* lapack_int* double* ))
  (define-c-function lapack_int LAPACKE_dgebrd (int lapack_int lapack_int double* lapack_int double* double* double* double* ))
  (define-c-function lapack_int LAPACKE_dgecon (int char lapack_int double* lapack_int double double* ))
  (define-c-function lapack_int LAPACKE_dgeequ (int lapack_int lapack_int double* lapack_int double* double* double* double* double* ))
  (define-c-function lapack_int LAPACKE_dgeequb (int lapack_int lapack_int double* lapack_int double* double* double* double* double* ))
  (define-c-function lapack_int LAPACKE_dgees (int char char LAPACK_D_SELECT2 lapack_int double* lapack_int lapack_int* double* double* double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dgeev (int char char lapack_int double* lapack_int double* double* double* lapack_int double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dgehrd (int lapack_int lapack_int lapack_int double* lapack_int double* ))
  (define-c-function lapack_int LAPACKE_dgejsv (int char char char char char char lapack_int lapack_int double* lapack_int double* double* lapack_int double* lapack_int double* lapack_int* ))
  (define-c-function lapack_int LAPACKE_dgelq2 (int lapack_int lapack_int double* lapack_int double* ))
  (define-c-function lapack_int LAPACKE_dgelqf (int lapack_int lapack_int double* lapack_int double* ))
  (define-c-function lapack_int LAPACKE_dgels (int char lapack_int lapack_int lapack_int double* lapack_int double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dgelsd (int lapack_int lapack_int lapack_int double* lapack_int double* lapack_int double* double lapack_int* ))
  (define-c-function lapack_int LAPACKE_dgelss (int lapack_int lapack_int lapack_int double* lapack_int double* lapack_int double* double lapack_int* ))
  (define-c-function lapack_int LAPACKE_dgelsy (int lapack_int lapack_int lapack_int double* lapack_int double* lapack_int lapack_int* double lapack_int* ))
  (define-c-function lapack_int LAPACKE_dgeqlf (int lapack_int lapack_int double* lapack_int double* ))
  (define-c-function lapack_int LAPACKE_dgeqp3 (int lapack_int lapack_int double* lapack_int lapack_int* double* ))
  (define-c-function lapack_int LAPACKE_dgeqpf (int lapack_int lapack_int double* lapack_int lapack_int* double* ))
  (define-c-function lapack_int LAPACKE_dgeqr2 (int lapack_int lapack_int double* lapack_int double* ))
  (define-c-function lapack_int LAPACKE_dgeqrf (int lapack_int lapack_int double* lapack_int double* ))
  (define-c-function lapack_int LAPACKE_dgeqrfp (int lapack_int lapack_int double* lapack_int double* ))
  (define-c-function lapack_int LAPACKE_dgerfs (int char lapack_int lapack_int double* lapack_int double* lapack_int lapack_int* double* lapack_int double* lapack_int double* double* ))
  (define-c-function lapack_int LAPACKE_dgerqf (int lapack_int lapack_int double* lapack_int double* ))
  (define-c-function lapack_int LAPACKE_dgesdd (int char lapack_int lapack_int double* lapack_int double* double* lapack_int double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dgesv (int lapack_int lapack_int double* lapack_int lapack_int* double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dsgesv (int lapack_int lapack_int double* lapack_int lapack_int* double* lapack_int double* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_dgesvd (int char char lapack_int lapack_int double* lapack_int double* double* lapack_int double* lapack_int double* ))
  (define-c-function lapack_int LAPACKE_dgesvj (int char char char lapack_int lapack_int double* lapack_int double* lapack_int double* lapack_int double* ))
  (define-c-function lapack_int LAPACKE_dgetf2 (int lapack_int lapack_int double* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_dgetrf (int lapack_int lapack_int double* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_dgetri (int lapack_int double* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_dgetrs (int char lapack_int lapack_int double* lapack_int lapack_int* double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dggbak (int char char lapack_int lapack_int lapack_int double* double* lapack_int double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dggbal (int char lapack_int double* lapack_int double* lapack_int lapack_int* lapack_int* double* double* ))
  (define-c-function lapack_int LAPACKE_dgges (int char char char LAPACK_D_SELECT3 lapack_int double* lapack_int double* lapack_int lapack_int* double* double* double* double* lapack_int double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dggev (int char char lapack_int double* lapack_int double* lapack_int double* double* double* double* lapack_int double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dggglm (int lapack_int lapack_int lapack_int double* lapack_int double* lapack_int double* double* double* ))
  (define-c-function lapack_int LAPACKE_dgghrd (int char char lapack_int lapack_int lapack_int double* lapack_int double* lapack_int double* lapack_int double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dgglse (int lapack_int lapack_int lapack_int double* lapack_int double* lapack_int double* double* double* ))
  (define-c-function lapack_int LAPACKE_dggqrf (int lapack_int lapack_int lapack_int double* lapack_int double* double* lapack_int double* ))
  (define-c-function lapack_int LAPACKE_dggrqf (int lapack_int lapack_int lapack_int double* lapack_int double* double* lapack_int double* ))
  (define-c-function lapack_int LAPACKE_dggsvd (int char char char lapack_int lapack_int lapack_int lapack_int* lapack_int* double* lapack_int double* lapack_int double* double* double* lapack_int double* lapack_int double* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_dggsvp (int char char char lapack_int lapack_int lapack_int double* lapack_int double* lapack_int double double lapack_int* lapack_int* double* lapack_int double* lapack_int double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dgtcon (char lapack_int double* double* double* double* lapack_int* double double* ))
  (define-c-function lapack_int LAPACKE_dgtrfs (int char lapack_int lapack_int double* double* double* double* double* double* double* lapack_int* double* lapack_int double* lapack_int double* double* ))
  (define-c-function lapack_int LAPACKE_dgtsv (int lapack_int lapack_int double* double* double* double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dgttrf (lapack_int double* double* double* double* lapack_int* ))
  (define-c-function lapack_int LAPACKE_dgttrs (int char lapack_int lapack_int double* double* double* double* lapack_int* double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dhgeqz (int char char char lapack_int lapack_int lapack_int double* lapack_int double* lapack_int double* double* double* double* lapack_int double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dhsein (int char char char lapack_logical* lapack_int double* lapack_int double* double* double* lapack_int double* lapack_int lapack_int lapack_int* lapack_int* lapack_int* ))
  (define-c-function lapack_int LAPACKE_dhseqr (int char char lapack_int lapack_int lapack_int double* lapack_int double* double* double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dlacn2 (lapack_int double* double* lapack_int* double* lapack_int* lapack_int* ))
  (define-c-function lapack_int LAPACKE_dlacpy (int char lapack_int lapack_int double* lapack_int double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dlag2s (int lapack_int lapack_int double* lapack_int float* lapack_int ))
  (define-c-function lapack_int LAPACKE_dlagge (int lapack_int lapack_int lapack_int lapack_int double* double* lapack_int lapack_int* ))
  (define-c-function double LAPACKE_dlamch (char ))
  (define-c-function double LAPACKE_dlange (int char lapack_int lapack_int double* lapack_int ))
  (define-c-function double LAPACKE_dlansy (int char char lapack_int double* lapack_int ))
  (define-c-function double LAPACKE_dlantr (int char char char lapack_int lapack_int double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dlarfb (int char char char char lapack_int lapack_int lapack_int double* lapack_int double* lapack_int double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dlarfg (lapack_int double* double* lapack_int double* ))
  (define-c-function lapack_int LAPACKE_dlarft (int char char lapack_int lapack_int double* lapack_int double* double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dlarnv (lapack_int lapack_int* lapack_int double* ))
  (define-c-function lapack_int LAPACKE_dlaset (int char lapack_int lapack_int double double double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dlasrt (char lapack_int double* ))
  (define-c-function lapack_int LAPACKE_dlaswp (int lapack_int double* lapack_int lapack_int lapack_int lapack_int* lapack_int ))
  (define-c-function lapack_int LAPACKE_dlatms (int lapack_int lapack_int char lapack_int* char double* lapack_int double double lapack_int lapack_int char double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dlauum (int char lapack_int double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dopgtr (int char lapack_int double* double* double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dopmtr (int char char char lapack_int lapack_int double* double* double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dorgbr (int char lapack_int lapack_int lapack_int double* lapack_int double* ))
  (define-c-function lapack_int LAPACKE_dorghr (int lapack_int lapack_int lapack_int double* lapack_int double* ))
  (define-c-function lapack_int LAPACKE_dorglq (int lapack_int lapack_int lapack_int double* lapack_int double* ))
  (define-c-function lapack_int LAPACKE_dorgql (int lapack_int lapack_int lapack_int double* lapack_int double* ))
  (define-c-function lapack_int LAPACKE_dorgqr (int lapack_int lapack_int lapack_int double* lapack_int double* ))
  (define-c-function lapack_int LAPACKE_dorgrq (int lapack_int lapack_int lapack_int double* lapack_int double* ))
  (define-c-function lapack_int LAPACKE_dorgtr (int char lapack_int double* lapack_int double* ))
  (define-c-function lapack_int LAPACKE_dormbr (int char char char lapack_int lapack_int lapack_int double* lapack_int double* double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dormhr (int char char lapack_int lapack_int lapack_int lapack_int double* lapack_int double* double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dormlq (int char char lapack_int lapack_int lapack_int double* lapack_int double* double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dormql (int char char lapack_int lapack_int lapack_int double* lapack_int double* double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dormqr (int char char lapack_int lapack_int lapack_int double* lapack_int double* double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dormrq (int char char lapack_int lapack_int lapack_int double* lapack_int double* double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dormrz (int char char lapack_int lapack_int lapack_int lapack_int double* lapack_int double* double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dormtr (int char char char lapack_int lapack_int double* lapack_int double* double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dpbcon (int char lapack_int lapack_int double* lapack_int double double* ))
  (define-c-function lapack_int LAPACKE_dpbequ (int char lapack_int lapack_int double* lapack_int double* double* double* ))
  (define-c-function lapack_int LAPACKE_dpbrfs (int char lapack_int lapack_int lapack_int double* lapack_int double* lapack_int double* lapack_int double* lapack_int double* double* ))
  (define-c-function lapack_int LAPACKE_dpbstf (int char lapack_int lapack_int double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dpbsv (int char lapack_int lapack_int lapack_int double* lapack_int double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dpbtrf (int char lapack_int lapack_int double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dpbtrs (int char lapack_int lapack_int lapack_int double* lapack_int double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dpftrf (int char char lapack_int double* ))
  (define-c-function lapack_int LAPACKE_dpftri (int char char lapack_int double* ))
  (define-c-function lapack_int LAPACKE_dpftrs (int char char lapack_int lapack_int double* double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dpocon (int char lapack_int double* lapack_int double double* ))
  (define-c-function lapack_int LAPACKE_dpoequ (int lapack_int double* lapack_int double* double* double* ))
  (define-c-function lapack_int LAPACKE_dpoequb (int lapack_int double* lapack_int double* double* double* ))
  (define-c-function lapack_int LAPACKE_dporfs (int char lapack_int lapack_int double* lapack_int double* lapack_int double* lapack_int double* lapack_int double* double* ))
  (define-c-function lapack_int LAPACKE_dposv (int char lapack_int lapack_int double* lapack_int double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dsposv (int char lapack_int lapack_int double* lapack_int double* lapack_int double* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_dpotrf (int char lapack_int double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dpotri (int char lapack_int double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dpotrs (int char lapack_int lapack_int double* lapack_int double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dppcon (int char lapack_int double* double double* ))
  (define-c-function lapack_int LAPACKE_dppequ (int char lapack_int double* double* double* double* ))
  (define-c-function lapack_int LAPACKE_dpprfs (int char lapack_int lapack_int double* double* double* lapack_int double* lapack_int double* double* ))
  (define-c-function lapack_int LAPACKE_dppsv (int char lapack_int lapack_int double* double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dpptrf (int char lapack_int double* ))
  (define-c-function lapack_int LAPACKE_dpptri (int char lapack_int double* ))
  (define-c-function lapack_int LAPACKE_dpptrs (int char lapack_int lapack_int double* double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dpstrf (int char lapack_int double* lapack_int lapack_int* lapack_int* double ))
  (define-c-function lapack_int LAPACKE_dptcon (lapack_int double* double* double double* ))
  (define-c-function lapack_int LAPACKE_dpteqr (int char lapack_int double* double* double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dptrfs (int lapack_int lapack_int double* double* double* double* double* lapack_int double* lapack_int double* double* ))
  (define-c-function lapack_int LAPACKE_dptsv (int lapack_int lapack_int double* double* double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dpttrf (lapack_int double* double* ))
  (define-c-function lapack_int LAPACKE_dpttrs (int lapack_int lapack_int double* double* double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dsbev (int char char lapack_int lapack_int double* lapack_int double* double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dsbevd (int char char lapack_int lapack_int double* lapack_int double* double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dsbgst (int char char lapack_int lapack_int lapack_int double* lapack_int double* lapack_int double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dsbgv (int char char lapack_int lapack_int lapack_int double* lapack_int double* lapack_int double* double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dsbgvd (int char char lapack_int lapack_int lapack_int double* lapack_int double* lapack_int double* double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dsbtrd (int char char lapack_int lapack_int double* lapack_int double* double* double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dsfrk (int char char char lapack_int lapack_int double double* lapack_int double double* ))
  (define-c-function lapack_int LAPACKE_dspcon (int char lapack_int double* lapack_int* double double* ))
  (define-c-function lapack_int LAPACKE_dspev (int char char lapack_int double* double* double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dspevd (int char char lapack_int double* double* double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dspgst (int lapack_int char lapack_int double* double* ))
  (define-c-function lapack_int LAPACKE_dspgv (int lapack_int char char lapack_int double* double* double* double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dspgvd (int lapack_int char char lapack_int double* double* double* double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dsprfs (int char lapack_int lapack_int double* double* lapack_int* double* lapack_int double* lapack_int double* double* ))
  (define-c-function lapack_int LAPACKE_dspsv (int char lapack_int lapack_int double* lapack_int* double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dsptrd (int char lapack_int double* double* double* double* ))
  (define-c-function lapack_int LAPACKE_dsptrf (int char lapack_int double* lapack_int* ))
  (define-c-function lapack_int LAPACKE_dsptri (int char lapack_int double* lapack_int* ))
  (define-c-function lapack_int LAPACKE_dsptrs (int char lapack_int lapack_int double* lapack_int* double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dstebz (char char lapack_int double double lapack_int lapack_int double double* double* lapack_int* lapack_int* double* lapack_int* lapack_int* ))
  (define-c-function lapack_int LAPACKE_dstedc (int char lapack_int double* double* double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dstegr (int char char lapack_int double* double* double double lapack_int lapack_int double lapack_int* double* double* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_dstein (int lapack_int double* double* lapack_int double* lapack_int* lapack_int* double* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_dstemr (int char char lapack_int double* double* double double lapack_int lapack_int lapack_int* double* double* lapack_int lapack_int lapack_int* lapack_logical* ))
  (define-c-function lapack_int LAPACKE_dsteqr (int char lapack_int double* double* double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dsterf (lapack_int double* double* ))
  (define-c-function lapack_int LAPACKE_dstev (int char lapack_int double* double* double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dstevd (int char lapack_int double* double* double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dstevr (int char char lapack_int double* double* double double lapack_int lapack_int double lapack_int* double* double* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_dsycon (int char lapack_int double* lapack_int lapack_int* double double* ))
  (define-c-function lapack_int LAPACKE_dsyequb (int char lapack_int double* lapack_int double* double* double* ))
  (define-c-function lapack_int LAPACKE_dsyev (int char char lapack_int double* lapack_int double* ))
  (define-c-function lapack_int LAPACKE_dsyevd (int char char lapack_int double* lapack_int double* ))
  (define-c-function lapack_int LAPACKE_dsyevr (int char char char lapack_int double* lapack_int double double lapack_int lapack_int double lapack_int* double* double* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_dsygst (int lapack_int char lapack_int double* lapack_int double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dsygv (int lapack_int char char lapack_int double* lapack_int double* lapack_int double* ))
  (define-c-function lapack_int LAPACKE_dsygvd (int lapack_int char char lapack_int double* lapack_int double* lapack_int double* ))
  (define-c-function lapack_int LAPACKE_dsyrfs (int char lapack_int lapack_int double* lapack_int double* lapack_int lapack_int* double* lapack_int double* lapack_int double* double* ))
  (define-c-function lapack_int LAPACKE_dsysv (int char lapack_int lapack_int double* lapack_int lapack_int* double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dsytrd (int char lapack_int double* lapack_int double* double* double* ))
  (define-c-function lapack_int LAPACKE_dsytrf (int char lapack_int double* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_dsytri (int char lapack_int double* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_dsytrs (int char lapack_int lapack_int double* lapack_int lapack_int* double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dtbcon (int char char char lapack_int lapack_int double* lapack_int double* ))
  (define-c-function lapack_int LAPACKE_dtbrfs (int char char char lapack_int lapack_int lapack_int double* lapack_int double* lapack_int double* lapack_int double* double* ))
  (define-c-function lapack_int LAPACKE_dtbtrs (int char char char lapack_int lapack_int lapack_int double* lapack_int double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dtfsm (int char char char char char lapack_int lapack_int double double* double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dtftri (int char char char lapack_int double* ))
  (define-c-function lapack_int LAPACKE_dtfttp (int char char lapack_int double* double* ))
  (define-c-function lapack_int LAPACKE_dtfttr (int char char lapack_int double* double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dtgevc (int char char lapack_logical* lapack_int double* lapack_int double* lapack_int double* lapack_int double* lapack_int lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_dtgexc (int lapack_logical lapack_logical lapack_int double* lapack_int double* lapack_int double* lapack_int double* lapack_int lapack_int* lapack_int* ))
  (define-c-function lapack_int LAPACKE_dtgsen (int lapack_int lapack_logical lapack_logical lapack_logical* lapack_int double* lapack_int double* lapack_int double* double* double* double* lapack_int double* lapack_int lapack_int* double* double* double* ))
  (define-c-function lapack_int LAPACKE_dtgsja (int char char char lapack_int lapack_int lapack_int lapack_int lapack_int double* lapack_int double* lapack_int double double double* double* double* lapack_int double* lapack_int double* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_dtgsna (int char char lapack_logical* lapack_int double* lapack_int double* lapack_int double* lapack_int double* lapack_int double* double* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_dtgsyl (int char lapack_int lapack_int lapack_int double* lapack_int double* lapack_int double* lapack_int double* lapack_int double* lapack_int double* lapack_int double* double* ))
  (define-c-function lapack_int LAPACKE_dtpcon (int char char char lapack_int double* double* ))
  (define-c-function lapack_int LAPACKE_dtprfs (int char char char lapack_int lapack_int double* double* lapack_int double* lapack_int double* double* ))
  (define-c-function lapack_int LAPACKE_dtptri (int char char lapack_int double* ))
  (define-c-function lapack_int LAPACKE_dtptrs (int char char char lapack_int lapack_int double* double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dtpttf (int char char lapack_int double* double* ))
  (define-c-function lapack_int LAPACKE_dtpttr (int char lapack_int double* double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dtrcon (int char char char lapack_int double* lapack_int double* ))
  (define-c-function lapack_int LAPACKE_dtrevc (int char char lapack_logical* lapack_int double* lapack_int double* lapack_int double* lapack_int lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_dtrexc (int char lapack_int double* lapack_int double* lapack_int lapack_int* lapack_int* ))
  (define-c-function lapack_int LAPACKE_dtrrfs (int char char char lapack_int lapack_int double* lapack_int double* lapack_int double* lapack_int double* double* ))
  (define-c-function lapack_int LAPACKE_dtrsen (int char char lapack_logical* lapack_int double* lapack_int double* lapack_int double* double* lapack_int* double* double* ))
  (define-c-function lapack_int LAPACKE_dtrsna (int char char lapack_logical* lapack_int double* lapack_int double* lapack_int double* lapack_int double* double* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_dtrsyl (int char char lapack_int lapack_int lapack_int double* lapack_int double* lapack_int double* lapack_int double* ))
  (define-c-function lapack_int LAPACKE_dtrtri (int char char lapack_int double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dtrtrs (int char char char lapack_int lapack_int double* lapack_int double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dtrttf (int char char lapack_int double* lapack_int double* ))
  (define-c-function lapack_int LAPACKE_dtrttp (int char lapack_int double* lapack_int double* ))
  (define-c-function lapack_int LAPACKE_dtzrzf (int lapack_int lapack_int double* lapack_int double* ))
  (define-c-function lapack_int LAPACKE_dbdsdc_work (int char char lapack_int double* double* double* lapack_int double* lapack_int double* lapack_int* double* lapack_int* ))
  (define-c-function lapack_int LAPACKE_dbdsqr_work (int char lapack_int lapack_int lapack_int lapack_int double* double* double* lapack_int double* lapack_int double* lapack_int double* ))
  (define-c-function lapack_int LAPACKE_ddisna_work (char lapack_int lapack_int double* double* ))
  (define-c-function lapack_int LAPACKE_dgbbrd_work (int char lapack_int lapack_int lapack_int lapack_int lapack_int double* lapack_int double* double* double* lapack_int double* lapack_int double* lapack_int double* ))
  (define-c-function lapack_int LAPACKE_dgbcon_work (int char lapack_int lapack_int lapack_int double* lapack_int lapack_int* double double* double* lapack_int* ))
  (define-c-function lapack_int LAPACKE_dgbequ_work (int lapack_int lapack_int lapack_int lapack_int double* lapack_int double* double* double* double* double* ))
  (define-c-function lapack_int LAPACKE_dgbequb_work (int lapack_int lapack_int lapack_int lapack_int double* lapack_int double* double* double* double* double* ))
  (define-c-function lapack_int LAPACKE_dgbrfs_work (int char lapack_int lapack_int lapack_int lapack_int double* lapack_int double* lapack_int lapack_int* double* lapack_int double* lapack_int double* double* double* lapack_int* ))
  (define-c-function lapack_int LAPACKE_dgbsv_work (int lapack_int lapack_int lapack_int lapack_int double* lapack_int lapack_int* double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dgbtrf_work (int lapack_int lapack_int lapack_int lapack_int double* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_dgbtrs_work (int char lapack_int lapack_int lapack_int lapack_int double* lapack_int lapack_int* double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dgebak_work (int char char lapack_int lapack_int lapack_int double* lapack_int double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dgebal_work (int char lapack_int double* lapack_int lapack_int* lapack_int* double* ))
  (define-c-function lapack_int LAPACKE_dgebrd_work (int lapack_int lapack_int double* lapack_int double* double* double* double* double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dgecon_work (int char lapack_int double* lapack_int double double* double* lapack_int* ))
  (define-c-function lapack_int LAPACKE_dgeequ_work (int lapack_int lapack_int double* lapack_int double* double* double* double* double* ))
  (define-c-function lapack_int LAPACKE_dgeequb_work (int lapack_int lapack_int double* lapack_int double* double* double* double* double* ))
  (define-c-function lapack_int LAPACKE_dgees_work (int char char LAPACK_D_SELECT2 lapack_int double* lapack_int lapack_int* double* double* double* lapack_int double* lapack_int lapack_logical* ))
  (define-c-function lapack_int LAPACKE_dgeev_work (int char char lapack_int double* lapack_int double* double* double* lapack_int double* lapack_int double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dgehrd_work (int lapack_int lapack_int lapack_int double* lapack_int double* double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dgejsv_work (int char char char char char char lapack_int lapack_int double* lapack_int double* double* lapack_int double* lapack_int double* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_dgelq2_work (int lapack_int lapack_int double* lapack_int double* double* ))
  (define-c-function lapack_int LAPACKE_dgelqf_work (int lapack_int lapack_int double* lapack_int double* double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dgels_work (int char lapack_int lapack_int lapack_int double* lapack_int double* lapack_int double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dgelsd_work (int lapack_int lapack_int lapack_int double* lapack_int double* lapack_int double* double lapack_int* double* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_dgelss_work (int lapack_int lapack_int lapack_int double* lapack_int double* lapack_int double* double lapack_int* double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dgelsy_work (int lapack_int lapack_int lapack_int double* lapack_int double* lapack_int lapack_int* double lapack_int* double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dgeqlf_work (int lapack_int lapack_int double* lapack_int double* double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dgeqp3_work (int lapack_int lapack_int double* lapack_int lapack_int* double* double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dgeqpf_work (int lapack_int lapack_int double* lapack_int lapack_int* double* double* ))
  (define-c-function lapack_int LAPACKE_dgeqr2_work (int lapack_int lapack_int double* lapack_int double* double* ))
  (define-c-function lapack_int LAPACKE_dgeqrf_work (int lapack_int lapack_int double* lapack_int double* double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dgeqrfp_work (int lapack_int lapack_int double* lapack_int double* double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dgerfs_work (int char lapack_int lapack_int double* lapack_int double* lapack_int lapack_int* double* lapack_int double* lapack_int double* double* double* lapack_int* ))
  (define-c-function lapack_int LAPACKE_dgerqf_work (int lapack_int lapack_int double* lapack_int double* double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dgesdd_work (int char lapack_int lapack_int double* lapack_int double* double* lapack_int double* lapack_int double* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_dgesv_work (int lapack_int lapack_int double* lapack_int lapack_int* double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dsgesv_work (int lapack_int lapack_int double* lapack_int lapack_int* double* lapack_int double* lapack_int double* float* lapack_int* ))
  (define-c-function lapack_int LAPACKE_dgesvd_work (int char char lapack_int lapack_int double* lapack_int double* double* lapack_int double* lapack_int double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dgesvj_work (int char char char lapack_int lapack_int double* lapack_int double* lapack_int double* lapack_int double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dgetf2_work (int lapack_int lapack_int double* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_dgetrf_work (int lapack_int lapack_int double* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_dgetri_work (int lapack_int double* lapack_int lapack_int* double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dgetrs_work (int char lapack_int lapack_int double* lapack_int lapack_int* double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dggbak_work (int char char lapack_int lapack_int lapack_int double* double* lapack_int double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dggbal_work (int char lapack_int double* lapack_int double* lapack_int lapack_int* lapack_int* double* double* double* ))
  (define-c-function lapack_int LAPACKE_dgges_work (int char char char LAPACK_D_SELECT3 lapack_int double* lapack_int double* lapack_int lapack_int* double* double* double* double* lapack_int double* lapack_int double* lapack_int lapack_logical* ))
  (define-c-function lapack_int LAPACKE_dggev_work (int char char lapack_int double* lapack_int double* lapack_int double* double* double* double* lapack_int double* lapack_int double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dggglm_work (int lapack_int lapack_int lapack_int double* lapack_int double* lapack_int double* double* double* double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dgghrd_work (int char char lapack_int lapack_int lapack_int double* lapack_int double* lapack_int double* lapack_int double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dgglse_work (int lapack_int lapack_int lapack_int double* lapack_int double* lapack_int double* double* double* double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dggqrf_work (int lapack_int lapack_int lapack_int double* lapack_int double* double* lapack_int double* double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dggrqf_work (int lapack_int lapack_int lapack_int double* lapack_int double* double* lapack_int double* double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dggsvd_work (int char char char lapack_int lapack_int lapack_int lapack_int* lapack_int* double* lapack_int double* lapack_int double* double* double* lapack_int double* lapack_int double* lapack_int double* lapack_int* ))
  (define-c-function lapack_int LAPACKE_dggsvp_work (int char char char lapack_int lapack_int lapack_int double* lapack_int double* lapack_int double double lapack_int* lapack_int* double* lapack_int double* lapack_int double* lapack_int lapack_int* double* double* ))
  (define-c-function lapack_int LAPACKE_dgtcon_work (char lapack_int double* double* double* double* lapack_int* double double* double* lapack_int* ))
  (define-c-function lapack_int LAPACKE_dgtrfs_work (int char lapack_int lapack_int double* double* double* double* double* double* double* lapack_int* double* lapack_int double* lapack_int double* double* double* lapack_int* ))
  (define-c-function lapack_int LAPACKE_dgtsv_work (int lapack_int lapack_int double* double* double* double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dgttrf_work (lapack_int double* double* double* double* lapack_int* ))
  (define-c-function lapack_int LAPACKE_dgttrs_work (int char lapack_int lapack_int double* double* double* double* lapack_int* double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dhgeqz_work (int char char char lapack_int lapack_int lapack_int double* lapack_int double* lapack_int double* double* double* double* lapack_int double* lapack_int double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dhsein_work (int char char char lapack_logical* lapack_int double* lapack_int double* double* double* lapack_int double* lapack_int lapack_int lapack_int* double* lapack_int* lapack_int* ))
  (define-c-function lapack_int LAPACKE_dhseqr_work (int char char lapack_int lapack_int lapack_int double* lapack_int double* double* double* lapack_int double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dlacn2_work (lapack_int double* double* lapack_int* double* lapack_int* lapack_int* ))
  (define-c-function lapack_int LAPACKE_dlacpy_work (int char lapack_int lapack_int double* lapack_int double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dlag2s_work (int lapack_int lapack_int double* lapack_int float* lapack_int ))
  (define-c-function lapack_int LAPACKE_dlagge_work (int lapack_int lapack_int lapack_int lapack_int double* double* lapack_int lapack_int* double* ))
  (define-c-function lapack_int LAPACKE_dlagsy_work (int lapack_int lapack_int double* double* lapack_int lapack_int* double* ))
  (define-c-function lapack_int LAPACKE_dlapmr_work (int lapack_logical lapack_int lapack_int double* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_dlartgp_work (double double double* double* double* ))
  (define-c-function lapack_int LAPACKE_dlartgs_work (double double double double* double* ))
  (define-c-function double LAPACKE_dlapy2_work (double double ))
  (define-c-function double LAPACKE_dlapy3_work (double double double ))
  (define-c-function double LAPACKE_dlamch_work (char ))
  (define-c-function double LAPACKE_dlange_work (int char lapack_int lapack_int double* lapack_int double* ))
  (define-c-function double LAPACKE_dlansy_work (int char char lapack_int double* lapack_int double* ))
  (define-c-function double LAPACKE_dlantr_work (int char char char lapack_int lapack_int double* lapack_int double* ))
  (define-c-function lapack_int LAPACKE_dlarfb_work (int char char char char lapack_int lapack_int lapack_int double* lapack_int double* lapack_int double* lapack_int double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dlarfg_work (lapack_int double* double* lapack_int double* ))
  (define-c-function lapack_int LAPACKE_dlarft_work (int char char lapack_int lapack_int double* lapack_int double* double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dlarnv_work (lapack_int lapack_int* lapack_int double* ))
  (define-c-function lapack_int LAPACKE_dlaset_work (int char lapack_int lapack_int double double double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dlasrt_work (char lapack_int double* ))
  (define-c-function lapack_int LAPACKE_dlaswp_work (int lapack_int double* lapack_int lapack_int lapack_int lapack_int* lapack_int ))
  (define-c-function lapack_int LAPACKE_dlatms_work (int lapack_int lapack_int char lapack_int* char double* lapack_int double double lapack_int lapack_int char double* lapack_int double* ))
  (define-c-function lapack_int LAPACKE_dlauum_work (int char lapack_int double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dopgtr_work (int char lapack_int double* double* double* lapack_int double* ))
  (define-c-function lapack_int LAPACKE_dopmtr_work (int char char char lapack_int lapack_int double* double* double* lapack_int double* ))
  (define-c-function lapack_int LAPACKE_dorgbr_work (int char lapack_int lapack_int lapack_int double* lapack_int double* double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dorghr_work (int lapack_int lapack_int lapack_int double* lapack_int double* double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dorglq_work (int lapack_int lapack_int lapack_int double* lapack_int double* double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dorgql_work (int lapack_int lapack_int lapack_int double* lapack_int double* double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dorgqr_work (int lapack_int lapack_int lapack_int double* lapack_int double* double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dorgrq_work (int lapack_int lapack_int lapack_int double* lapack_int double* double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dorgtr_work (int char lapack_int double* lapack_int double* double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dormbr_work (int char char char lapack_int lapack_int lapack_int double* lapack_int double* double* lapack_int double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dormhr_work (int char char lapack_int lapack_int lapack_int lapack_int double* lapack_int double* double* lapack_int double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dormlq_work (int char char lapack_int lapack_int lapack_int double* lapack_int double* double* lapack_int double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dormql_work (int char char lapack_int lapack_int lapack_int double* lapack_int double* double* lapack_int double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dormqr_work (int char char lapack_int lapack_int lapack_int double* lapack_int double* double* lapack_int double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dormrq_work (int char char lapack_int lapack_int lapack_int double* lapack_int double* double* lapack_int double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dormrz_work (int char char lapack_int lapack_int lapack_int lapack_int double* lapack_int double* double* lapack_int double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dormtr_work (int char char char lapack_int lapack_int double* lapack_int double* double* lapack_int double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dpbcon_work (int char lapack_int lapack_int double* lapack_int double double* double* lapack_int* ))
  (define-c-function lapack_int LAPACKE_dpbequ_work (int char lapack_int lapack_int double* lapack_int double* double* double* ))
  (define-c-function lapack_int LAPACKE_dpbrfs_work (int char lapack_int lapack_int lapack_int double* lapack_int double* lapack_int double* lapack_int double* lapack_int double* double* double* lapack_int* ))
  (define-c-function lapack_int LAPACKE_dpbstf_work (int char lapack_int lapack_int double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dpbsv_work (int char lapack_int lapack_int lapack_int double* lapack_int double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dpbtrf_work (int char lapack_int lapack_int double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dpbtrs_work (int char lapack_int lapack_int lapack_int double* lapack_int double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dpftrf_work (int char char lapack_int double* ))
  (define-c-function lapack_int LAPACKE_dpftri_work (int char char lapack_int double* ))
  (define-c-function lapack_int LAPACKE_dpftrs_work (int char char lapack_int lapack_int double* double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dpocon_work (int char lapack_int double* lapack_int double double* double* lapack_int* ))
  (define-c-function lapack_int LAPACKE_dpoequ_work (int lapack_int double* lapack_int double* double* double* ))
  (define-c-function lapack_int LAPACKE_dpoequb_work (int lapack_int double* lapack_int double* double* double* ))
  (define-c-function lapack_int LAPACKE_dporfs_work (int char lapack_int lapack_int double* lapack_int double* lapack_int double* lapack_int double* lapack_int double* double* double* lapack_int* ))
  (define-c-function lapack_int LAPACKE_dposv_work (int char lapack_int lapack_int double* lapack_int double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dsposv_work (int char lapack_int lapack_int double* lapack_int double* lapack_int double* lapack_int double* float* lapack_int* ))
  (define-c-function lapack_int LAPACKE_dpotrf_work (int char lapack_int double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dpotri_work (int char lapack_int double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dpotrs_work (int char lapack_int lapack_int double* lapack_int double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dppcon_work (int char lapack_int double* double double* double* lapack_int* ))
  (define-c-function lapack_int LAPACKE_dppequ_work (int char lapack_int double* double* double* double* ))
  (define-c-function lapack_int LAPACKE_dpprfs_work (int char lapack_int lapack_int double* double* double* lapack_int double* lapack_int double* double* double* lapack_int* ))
  (define-c-function lapack_int LAPACKE_dppsv_work (int char lapack_int lapack_int double* double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dpptrf_work (int char lapack_int double* ))
  (define-c-function lapack_int LAPACKE_dpptri_work (int char lapack_int double* ))
  (define-c-function lapack_int LAPACKE_dpptrs_work (int char lapack_int lapack_int double* double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dpstrf_work (int char lapack_int double* lapack_int lapack_int* lapack_int* double double* ))
  (define-c-function lapack_int LAPACKE_dptcon_work (lapack_int double* double* double double* double* ))
  (define-c-function lapack_int LAPACKE_dpteqr_work (int char lapack_int double* double* double* lapack_int double* ))
  (define-c-function lapack_int LAPACKE_dptrfs_work (int lapack_int lapack_int double* double* double* double* double* lapack_int double* lapack_int double* double* double* ))
  (define-c-function lapack_int LAPACKE_dptsv_work (int lapack_int lapack_int double* double* double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dpttrf_work (lapack_int double* double* ))
  (define-c-function lapack_int LAPACKE_dpttrs_work (int lapack_int lapack_int double* double* double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dsbev_work (int char char lapack_int lapack_int double* lapack_int double* double* lapack_int double* ))
  (define-c-function lapack_int LAPACKE_dsbevd_work (int char char lapack_int lapack_int double* lapack_int double* double* lapack_int double* lapack_int lapack_int* lapack_int ))
  (define-c-function lapack_int LAPACKE_dsbgst_work (int char char lapack_int lapack_int lapack_int double* lapack_int double* lapack_int double* lapack_int double* ))
  (define-c-function lapack_int LAPACKE_dsbgv_work (int char char lapack_int lapack_int lapack_int double* lapack_int double* lapack_int double* double* lapack_int double* ))
  (define-c-function lapack_int LAPACKE_dsbgvd_work (int char char lapack_int lapack_int lapack_int double* lapack_int double* lapack_int double* double* lapack_int double* lapack_int lapack_int* lapack_int ))
  (define-c-function lapack_int LAPACKE_dsbtrd_work (int char char lapack_int lapack_int double* lapack_int double* double* double* lapack_int double* ))
  (define-c-function lapack_int LAPACKE_dsfrk_work (int char char char lapack_int lapack_int double double* lapack_int double double* ))
  (define-c-function lapack_int LAPACKE_dspcon_work (int char lapack_int double* lapack_int* double double* double* lapack_int* ))
  (define-c-function lapack_int LAPACKE_dspev_work (int char char lapack_int double* double* double* lapack_int double* ))
  (define-c-function lapack_int LAPACKE_dspevd_work (int char char lapack_int double* double* double* lapack_int double* lapack_int lapack_int* lapack_int ))
  (define-c-function lapack_int LAPACKE_dspgst_work (int lapack_int char lapack_int double* double* ))
  (define-c-function lapack_int LAPACKE_dspgv_work (int lapack_int char char lapack_int double* double* double* double* lapack_int double* ))
  (define-c-function lapack_int LAPACKE_dspgvd_work (int lapack_int char char lapack_int double* double* double* double* lapack_int double* lapack_int lapack_int* lapack_int ))
  (define-c-function lapack_int LAPACKE_dsprfs_work (int char lapack_int lapack_int double* double* lapack_int* double* lapack_int double* lapack_int double* double* double* lapack_int* ))
  (define-c-function lapack_int LAPACKE_dspsv_work (int char lapack_int lapack_int double* lapack_int* double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dsptrd_work (int char lapack_int double* double* double* double* ))
  (define-c-function lapack_int LAPACKE_dsptrf_work (int char lapack_int double* lapack_int* ))
  (define-c-function lapack_int LAPACKE_dsptri_work (int char lapack_int double* lapack_int* double* ))
  (define-c-function lapack_int LAPACKE_dsptrs_work (int char lapack_int lapack_int double* lapack_int* double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dstebz_work (char char lapack_int double double lapack_int lapack_int double double* double* lapack_int* lapack_int* double* lapack_int* lapack_int* double* lapack_int* ))
  (define-c-function lapack_int LAPACKE_dstedc_work (int char lapack_int double* double* double* lapack_int double* lapack_int lapack_int* lapack_int ))
  (define-c-function lapack_int LAPACKE_dstegr_work (int char char lapack_int double* double* double double lapack_int lapack_int double lapack_int* double* double* lapack_int lapack_int* double* lapack_int lapack_int* lapack_int ))
  (define-c-function lapack_int LAPACKE_dstein_work (int lapack_int double* double* lapack_int double* lapack_int* lapack_int* double* lapack_int double* lapack_int* lapack_int* ))
  (define-c-function lapack_int LAPACKE_dstemr_work (int char char lapack_int double* double* double double lapack_int lapack_int lapack_int* double* double* lapack_int lapack_int lapack_int* lapack_logical* double* lapack_int lapack_int* lapack_int ))
  (define-c-function lapack_int LAPACKE_dsteqr_work (int char lapack_int double* double* double* lapack_int double* ))
  (define-c-function lapack_int LAPACKE_dsterf_work (lapack_int double* double* ))
  (define-c-function lapack_int LAPACKE_dstev_work (int char lapack_int double* double* double* lapack_int double* ))
  (define-c-function lapack_int LAPACKE_dstevd_work (int char lapack_int double* double* double* lapack_int double* lapack_int lapack_int* lapack_int ))
  (define-c-function lapack_int LAPACKE_dstevr_work (int char char lapack_int double* double* double double lapack_int lapack_int double lapack_int* double* double* lapack_int lapack_int* double* lapack_int lapack_int* lapack_int ))
  (define-c-function lapack_int LAPACKE_dsycon_work (int char lapack_int double* lapack_int lapack_int* double double* double* lapack_int* ))
  (define-c-function lapack_int LAPACKE_dsyequb_work (int char lapack_int double* lapack_int double* double* double* double* ))
  (define-c-function lapack_int LAPACKE_dsyev_work (int char char lapack_int double* lapack_int double* double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dsyevd_work (int char char lapack_int double* lapack_int double* double* lapack_int lapack_int* lapack_int ))
  (define-c-function lapack_int LAPACKE_dsyevr_work (int char char char lapack_int double* lapack_int double double lapack_int lapack_int double lapack_int* double* double* lapack_int lapack_int* double* lapack_int lapack_int* lapack_int ))
  (define-c-function lapack_int LAPACKE_dsygst_work (int lapack_int char lapack_int double* lapack_int double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dsygv_work (int lapack_int char char lapack_int double* lapack_int double* lapack_int double* double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dsygvd_work (int lapack_int char char lapack_int double* lapack_int double* lapack_int double* double* lapack_int lapack_int* lapack_int ))
  (define-c-function lapack_int LAPACKE_dsyrfs_work (int char lapack_int lapack_int double* lapack_int double* lapack_int lapack_int* double* lapack_int double* lapack_int double* double* double* lapack_int* ))
  (define-c-function lapack_int LAPACKE_dsysv_work (int char lapack_int lapack_int double* lapack_int lapack_int* double* lapack_int double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dsysv_rook_work (int char lapack_int lapack_int double* lapack_int lapack_int* double* lapack_int double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dsytrd_work (int char lapack_int double* lapack_int double* double* double* double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dsytrf_work (int char lapack_int double* lapack_int lapack_int* double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dsytri_work (int char lapack_int double* lapack_int lapack_int* double* ))
  (define-c-function lapack_int LAPACKE_dsytrs_work (int char lapack_int lapack_int double* lapack_int lapack_int* double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dtbcon_work (int char char char lapack_int lapack_int double* lapack_int double* double* lapack_int* ))
  (define-c-function lapack_int LAPACKE_dtbrfs_work (int char char char lapack_int lapack_int lapack_int double* lapack_int double* lapack_int double* lapack_int double* double* double* lapack_int* ))
  (define-c-function lapack_int LAPACKE_dtbtrs_work (int char char char lapack_int lapack_int lapack_int double* lapack_int double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dtfsm_work (int char char char char char lapack_int lapack_int double double* double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dtftri_work (int char char char lapack_int double* ))
  (define-c-function lapack_int LAPACKE_dtfttp_work (int char char lapack_int double* double* ))
  (define-c-function lapack_int LAPACKE_dtfttr_work (int char char lapack_int double* double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dtgevc_work (int char char lapack_logical* lapack_int double* lapack_int double* lapack_int double* lapack_int double* lapack_int lapack_int lapack_int* double* ))
  (define-c-function lapack_int LAPACKE_dtgexc_work (int lapack_logical lapack_logical lapack_int double* lapack_int double* lapack_int double* lapack_int double* lapack_int lapack_int* lapack_int* double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dtgsen_work (int lapack_int lapack_logical lapack_logical lapack_logical* lapack_int double* lapack_int double* lapack_int double* double* double* double* lapack_int double* lapack_int lapack_int* double* double* double* double* lapack_int lapack_int* lapack_int ))
  (define-c-function lapack_int LAPACKE_dtgsja_work (int char char char lapack_int lapack_int lapack_int lapack_int lapack_int double* lapack_int double* lapack_int double double double* double* double* lapack_int double* lapack_int double* lapack_int double* lapack_int* ))
  (define-c-function lapack_int LAPACKE_dtgsna_work (int char char lapack_logical* lapack_int double* lapack_int double* lapack_int double* lapack_int double* lapack_int double* double* lapack_int lapack_int* double* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_dtgsyl_work (int char lapack_int lapack_int lapack_int double* lapack_int double* lapack_int double* lapack_int double* lapack_int double* lapack_int double* lapack_int double* double* double* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_dtpcon_work (int char char char lapack_int double* double* double* lapack_int* ))
  (define-c-function lapack_int LAPACKE_dtprfs_work (int char char char lapack_int lapack_int double* double* lapack_int double* lapack_int double* double* double* lapack_int* ))
  (define-c-function lapack_int LAPACKE_dtptri_work (int char char lapack_int double* ))
  (define-c-function lapack_int LAPACKE_dtptrs_work (int char char char lapack_int lapack_int double* double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dtpttf_work (int char char lapack_int double* double* ))
  (define-c-function lapack_int LAPACKE_dtpttr_work (int char lapack_int double* double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dtrcon_work (int char char char lapack_int double* lapack_int double* double* lapack_int* ))
  (define-c-function lapack_int LAPACKE_dtrevc_work (int char char lapack_logical* lapack_int double* lapack_int double* lapack_int double* lapack_int lapack_int lapack_int* double* ))
  (define-c-function lapack_int LAPACKE_dtrexc_work (int char lapack_int double* lapack_int double* lapack_int lapack_int* lapack_int* double* ))
  (define-c-function lapack_int LAPACKE_dtrrfs_work (int char char char lapack_int lapack_int double* lapack_int double* lapack_int double* lapack_int double* double* double* lapack_int* ))
  (define-c-function lapack_int LAPACKE_dtrsen_work (int char char lapack_logical* lapack_int double* lapack_int double* lapack_int double* double* lapack_int* double* double* double* lapack_int lapack_int* lapack_int ))
  (define-c-function lapack_int LAPACKE_dtrsna_work (int char char lapack_logical* lapack_int double* lapack_int double* lapack_int double* lapack_int double* double* lapack_int lapack_int* double* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_dtrsyl_work (int char char lapack_int lapack_int lapack_int double* lapack_int double* lapack_int double* lapack_int double* ))
  (define-c-function lapack_int LAPACKE_dtrtri_work (int char char lapack_int double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dtrtrs_work (int char char char lapack_int lapack_int double* lapack_int double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dtrttf_work (int char char lapack_int double* lapack_int double* ))
  (define-c-function lapack_int LAPACKE_dtrttp_work (int char lapack_int double* lapack_int double* ))
  (define-c-function lapack_int LAPACKE_dtzrzf_work (int lapack_int lapack_int double* lapack_int double* double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dlagsy (int lapack_int lapack_int double* double* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_dlapmr (int lapack_logical lapack_int lapack_int double* lapack_int lapack_int* ))
  (define-c-function double LAPACKE_dlapy2 (double double ))
  (define-c-function double LAPACKE_dlapy3 (double double double ))
  (define-c-function lapack_int LAPACKE_dlartgp (double double double* double* double* ))
  (define-c-function lapack_int LAPACKE_dlartgs (double double double double* double* ))
  (define-c-function lapack_int LAPACKE_dbbcsd (int char char char char char lapack_int lapack_int lapack_int double* double* double* lapack_int double* lapack_int double* lapack_int double* lapack_int double* double* double* double* double* double* double* double* ))
  (define-c-function lapack_int LAPACKE_dbbcsd_work (int char char char char char lapack_int lapack_int lapack_int double* double* double* lapack_int double* lapack_int double* lapack_int double* lapack_int double* double* double* double* double* double* double* double* double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dorbdb (int char char lapack_int lapack_int lapack_int double* lapack_int double* lapack_int double* lapack_int double* lapack_int double* double* double* double* double* double* ))
  (define-c-function lapack_int LAPACKE_dorbdb_work (int char char lapack_int lapack_int lapack_int double* lapack_int double* lapack_int double* lapack_int double* lapack_int double* double* double* double* double* double* double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dorcsd (int char char char char char char lapack_int lapack_int lapack_int double* lapack_int double* lapack_int double* lapack_int double* lapack_int double* double* lapack_int double* lapack_int double* lapack_int double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dorcsd_work (int char char char char char char lapack_int lapack_int lapack_int double* lapack_int double* lapack_int double* lapack_int double* lapack_int double* double* lapack_int double* lapack_int double* lapack_int double* lapack_int double* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_dsyconv (int char char lapack_int double* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_dsyconv_work (int char char lapack_int double* lapack_int lapack_int* double* ))
  (define-c-function lapack_int LAPACKE_dsyswapr (int char lapack_int double* lapack_int lapack_int ))
  (define-c-function lapack_int LAPACKE_dsyswapr_work (int char lapack_int double* lapack_int lapack_int ))
  (define-c-function lapack_int LAPACKE_dsytri2 (int char lapack_int double* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_dsytri2_work (int char lapack_int double* lapack_int lapack_int* lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dsytrs2 (int char lapack_int lapack_int double* lapack_int lapack_int* double* lapack_int ))
  (define-c-function lapack_int LAPACKE_dsytrs2_work (int char lapack_int lapack_int double* lapack_int lapack_int* double* lapack_int double* ))
  #| end of library |#)

;;; end of file
