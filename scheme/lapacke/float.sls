(library (lapacke float (3 5 0))
  (export
    LAPACKE_sbdsdc
    LAPACKE_sbdsqr
    LAPACKE_sdisna
    LAPACKE_sgbbrd
    LAPACKE_sgbcon
    LAPACKE_sgbequ
    LAPACKE_sgbequb
    LAPACKE_sgbrfs
    LAPACKE_sgbsv
    LAPACKE_sgbtrf
    LAPACKE_sgbtrs
    LAPACKE_sgebak
    LAPACKE_sgebal
    LAPACKE_sgebrd
    LAPACKE_sgecon
    LAPACKE_sgeequ
    LAPACKE_sgeequb
    LAPACKE_sgees
    LAPACKE_sgeev
    LAPACKE_sgehrd
    LAPACKE_sgejsv
    LAPACKE_sgelq2
    LAPACKE_sgelqf
    LAPACKE_sgels
    LAPACKE_sgelsd
    LAPACKE_sgelss
    LAPACKE_sgelsy
    LAPACKE_sgeqlf
    LAPACKE_sgeqp3
    LAPACKE_sgeqpf
    LAPACKE_sgeqr2
    LAPACKE_sgeqrf
    LAPACKE_sgeqrfp
    LAPACKE_sgerfs
    LAPACKE_sgerqf
    LAPACKE_sgesdd
    LAPACKE_sgesv
    LAPACKE_sgesvd
    LAPACKE_sgesvj
    LAPACKE_sgetf2
    LAPACKE_sgetrf
    LAPACKE_sgetri
    LAPACKE_sgetrs
    LAPACKE_sggbak
    LAPACKE_sggbal
    LAPACKE_sgges
    LAPACKE_sggev
    LAPACKE_sggglm
    LAPACKE_sgghrd
    LAPACKE_sgglse
    LAPACKE_sggqrf
    LAPACKE_sggrqf
    LAPACKE_sggsvd
    LAPACKE_sggsvp
    LAPACKE_sgtcon
    LAPACKE_sgtrfs
    LAPACKE_sgtsv
    LAPACKE_sgttrf
    LAPACKE_sgttrs
    LAPACKE_shgeqz
    LAPACKE_shsein
    LAPACKE_shseqr
    LAPACKE_slacn2
    LAPACKE_slacpy
    LAPACKE_slag2d
    LAPACKE_slagge
    LAPACKE_slamch
    LAPACKE_slange
    LAPACKE_slansy
    LAPACKE_slantr
    LAPACKE_slarfb
    LAPACKE_slarfg
    LAPACKE_slarft
    LAPACKE_slarnv
    LAPACKE_slaset
    LAPACKE_slasrt
    LAPACKE_slaswp
    LAPACKE_slatms
    LAPACKE_slauum
    LAPACKE_sopgtr
    LAPACKE_sopmtr
    LAPACKE_sorgbr
    LAPACKE_sorghr
    LAPACKE_sorglq
    LAPACKE_sorgql
    LAPACKE_sorgqr
    LAPACKE_sorgrq
    LAPACKE_sorgtr
    LAPACKE_sormbr
    LAPACKE_sormhr
    LAPACKE_sormlq
    LAPACKE_sormql
    LAPACKE_sormqr
    LAPACKE_sormrq
    LAPACKE_sormrz
    LAPACKE_sormtr
    LAPACKE_spbcon
    LAPACKE_spbequ
    LAPACKE_spbrfs
    LAPACKE_spbstf
    LAPACKE_spbsv
    LAPACKE_spbtrf
    LAPACKE_spbtrs
    LAPACKE_spftrf
    LAPACKE_spftri
    LAPACKE_spftrs
    LAPACKE_spocon
    LAPACKE_spoequ
    LAPACKE_spoequb
    LAPACKE_sporfs
    LAPACKE_sposv
    LAPACKE_spotrf
    LAPACKE_spotri
    LAPACKE_spotrs
    LAPACKE_sppcon
    LAPACKE_sppequ
    LAPACKE_spprfs
    LAPACKE_sppsv
    LAPACKE_spptrf
    LAPACKE_spptri
    LAPACKE_spptrs
    LAPACKE_spstrf
    LAPACKE_sptcon
    LAPACKE_spteqr
    LAPACKE_sptrfs
    LAPACKE_sptsv
    LAPACKE_spttrf
    LAPACKE_spttrs
    LAPACKE_ssbev
    LAPACKE_ssbevd
    LAPACKE_ssbgst
    LAPACKE_ssbgv
    LAPACKE_ssbgvd
    LAPACKE_ssbtrd
    LAPACKE_ssfrk
    LAPACKE_sspcon
    LAPACKE_sspev
    LAPACKE_sspevd
    LAPACKE_sspgst
    LAPACKE_sspgv
    LAPACKE_sspgvd
    LAPACKE_ssprfs
    LAPACKE_sspsv
    LAPACKE_ssptrd
    LAPACKE_ssptrf
    LAPACKE_ssptri
    LAPACKE_ssptrs
    LAPACKE_sstebz
    LAPACKE_sstedc
    LAPACKE_sstegr
    LAPACKE_sstein
    LAPACKE_sstemr
    LAPACKE_ssteqr
    LAPACKE_ssterf
    LAPACKE_sstev
    LAPACKE_sstevd
    LAPACKE_sstevr
    LAPACKE_ssycon
    LAPACKE_ssyequb
    LAPACKE_ssyev
    LAPACKE_ssyevd
    LAPACKE_ssyevr
    LAPACKE_ssygst
    LAPACKE_ssygv
    LAPACKE_ssygvd
    LAPACKE_ssyrfs
    LAPACKE_ssysv
    LAPACKE_ssytrd
    LAPACKE_ssytrf
    LAPACKE_ssytri
    LAPACKE_ssytrs
    LAPACKE_stbcon
    LAPACKE_stbrfs
    LAPACKE_stbtrs
    LAPACKE_stfsm
    LAPACKE_stftri
    LAPACKE_stfttp
    LAPACKE_stfttr
    LAPACKE_stgevc
    LAPACKE_stgexc
    LAPACKE_stgsen
    LAPACKE_stgsja
    LAPACKE_stgsna
    LAPACKE_stgsyl
    LAPACKE_stpcon
    LAPACKE_stprfs
    LAPACKE_stptri
    LAPACKE_stptrs
    LAPACKE_stpttf
    LAPACKE_stpttr
    LAPACKE_strcon
    LAPACKE_strevc
    LAPACKE_strexc
    LAPACKE_strrfs
    LAPACKE_strsen
    LAPACKE_strsna
    LAPACKE_strsyl
    LAPACKE_strtri
    LAPACKE_strtrs
    LAPACKE_strttf
    LAPACKE_strttp
    LAPACKE_stzrzf
    LAPACKE_sbdsdc_work
    LAPACKE_sbdsqr_work
    LAPACKE_sdisna_work
    LAPACKE_sgbbrd_work
    LAPACKE_sgbcon_work
    LAPACKE_sgbequ_work
    LAPACKE_sgbequb_work
    LAPACKE_sgbrfs_work
    LAPACKE_sgbsv_work
    LAPACKE_sgbtrf_work
    LAPACKE_sgbtrs_work
    LAPACKE_sgebak_work
    LAPACKE_sgebal_work
    LAPACKE_sgebrd_work
    LAPACKE_sgecon_work
    LAPACKE_sgeequ_work
    LAPACKE_sgeequb_work
    LAPACKE_sgees_work
    LAPACKE_sgeev_work
    LAPACKE_sgehrd_work
    LAPACKE_sgejsv_work
    LAPACKE_sgelq2_work
    LAPACKE_sgelqf_work
    LAPACKE_sgels_work
    LAPACKE_sgelsd_work
    LAPACKE_sgelss_work
    LAPACKE_sgelsy_work
    LAPACKE_sgeqlf_work
    LAPACKE_sgeqp3_work
    LAPACKE_sgeqpf_work
    LAPACKE_sgeqr2_work
    LAPACKE_sgeqrf_work
    LAPACKE_sgeqrfp_work
    LAPACKE_sgerfs_work
    LAPACKE_sgerqf_work
    LAPACKE_sgesdd_work
    LAPACKE_sgesv_work
    LAPACKE_sgesvd_work
    LAPACKE_sgesvj_work
    LAPACKE_sgetf2_work
    LAPACKE_sgetrf_work
    LAPACKE_sgetri_work
    LAPACKE_sgetrs_work
    LAPACKE_sggbak_work
    LAPACKE_sggbal_work
    LAPACKE_sgges_work
    LAPACKE_sggev_work
    LAPACKE_sggglm_work
    LAPACKE_sgghrd_work
    LAPACKE_sgglse_work
    LAPACKE_sggqrf_work
    LAPACKE_sggrqf_work
    LAPACKE_sggsvd_work
    LAPACKE_sggsvp_work
    LAPACKE_sgtcon_work
    LAPACKE_sgtrfs_work
    LAPACKE_sgtsv_work
    LAPACKE_sgttrf_work
    LAPACKE_sgttrs_work
    LAPACKE_shgeqz_work
    LAPACKE_shsein_work
    LAPACKE_shseqr_work
    LAPACKE_slacn2_work
    LAPACKE_slacpy_work
    LAPACKE_slag2d_work
    LAPACKE_slagge_work
    LAPACKE_slagsy_work
    LAPACKE_slapmr_work
    LAPACKE_slartgp_work
    LAPACKE_slartgs_work
    LAPACKE_slapy2_work
    LAPACKE_slapy3_work
    LAPACKE_slamch_work
    LAPACKE_slange_work
    LAPACKE_slansy_work
    LAPACKE_slantr_work
    LAPACKE_slarfb_work
    LAPACKE_slarfg_work
    LAPACKE_slarft_work
    LAPACKE_slarnv_work
    LAPACKE_slaset_work
    LAPACKE_slasrt_work
    LAPACKE_slaswp_work
    LAPACKE_slatms_work
    LAPACKE_slauum_work
    LAPACKE_sopgtr_work
    LAPACKE_sopmtr_work
    LAPACKE_sorgbr_work
    LAPACKE_sorghr_work
    LAPACKE_sorglq_work
    LAPACKE_sorgql_work
    LAPACKE_sorgqr_work
    LAPACKE_sorgrq_work
    LAPACKE_sorgtr_work
    LAPACKE_sormbr_work
    LAPACKE_sormhr_work
    LAPACKE_sormlq_work
    LAPACKE_sormql_work
    LAPACKE_sormqr_work
    LAPACKE_sormrq_work
    LAPACKE_sormrz_work
    LAPACKE_sormtr_work
    LAPACKE_spbcon_work
    LAPACKE_spbequ_work
    LAPACKE_spbrfs_work
    LAPACKE_spbstf_work
    LAPACKE_spbsv_work
    LAPACKE_spbtrf_work
    LAPACKE_spbtrs_work
    LAPACKE_spftrf_work
    LAPACKE_spftri_work
    LAPACKE_spftrs_work
    LAPACKE_spocon_work
    LAPACKE_spoequ_work
    LAPACKE_spoequb_work
    LAPACKE_sporfs_work
    LAPACKE_sposv_work
    LAPACKE_spotrf_work
    LAPACKE_spotri_work
    LAPACKE_spotrs_work
    LAPACKE_sppcon_work
    LAPACKE_sppequ_work
    LAPACKE_spprfs_work
    LAPACKE_sppsv_work
    LAPACKE_spptrf_work
    LAPACKE_spptri_work
    LAPACKE_spptrs_work
    LAPACKE_spstrf_work
    LAPACKE_sptcon_work
    LAPACKE_spteqr_work
    LAPACKE_sptrfs_work
    LAPACKE_sptsv_work
    LAPACKE_spttrf_work
    LAPACKE_spttrs_work
    LAPACKE_ssbev_work
    LAPACKE_ssbevd_work
    LAPACKE_ssbgst_work
    LAPACKE_ssbgv_work
    LAPACKE_ssbgvd_work
    LAPACKE_ssbtrd_work
    LAPACKE_ssfrk_work
    LAPACKE_sspcon_work
    LAPACKE_sspev_work
    LAPACKE_sspevd_work
    LAPACKE_sspgst_work
    LAPACKE_sspgv_work
    LAPACKE_sspgvd_work
    LAPACKE_ssprfs_work
    LAPACKE_sspsv_work
    LAPACKE_ssptrd_work
    LAPACKE_ssptrf_work
    LAPACKE_ssptri_work
    LAPACKE_ssptrs_work
    LAPACKE_sstebz_work
    LAPACKE_sstedc_work
    LAPACKE_sstegr_work
    LAPACKE_sstein_work
    LAPACKE_sstemr_work
    LAPACKE_ssteqr_work
    LAPACKE_ssterf_work
    LAPACKE_sstev_work
    LAPACKE_sstevd_work
    LAPACKE_sstevr_work
    LAPACKE_ssycon_work
    LAPACKE_ssyequb_work
    LAPACKE_ssyev_work
    LAPACKE_ssyevd_work
    LAPACKE_ssyevr_work
    LAPACKE_ssygst_work
    LAPACKE_ssygv_work
    LAPACKE_ssygvd_work
    LAPACKE_ssyrfs_work
    LAPACKE_ssysv_work
    LAPACKE_ssysv_rook_work
    LAPACKE_ssytrd_work
    LAPACKE_ssytrf_work
    LAPACKE_ssytri_work
    LAPACKE_ssytrs_work
    LAPACKE_stbcon_work
    LAPACKE_stbrfs_work
    LAPACKE_stbtrs_work
    LAPACKE_stfsm_work
    LAPACKE_stftri_work
    LAPACKE_stfttp_work
    LAPACKE_stfttr_work
    LAPACKE_stgevc_work
    LAPACKE_stgexc_work
    LAPACKE_stgsen_work
    LAPACKE_stgsja_work
    LAPACKE_stgsna_work
    LAPACKE_stgsyl_work
    LAPACKE_stpcon_work
    LAPACKE_stprfs_work
    LAPACKE_stptri_work
    LAPACKE_stptrs_work
    LAPACKE_stpttf_work
    LAPACKE_stpttr_work
    LAPACKE_strcon_work
    LAPACKE_strevc_work
    LAPACKE_strexc_work
    LAPACKE_strrfs_work
    LAPACKE_strsen_work
    LAPACKE_strsna_work
    LAPACKE_strsyl_work
    LAPACKE_strtri_work
    LAPACKE_strtrs_work
    LAPACKE_strttf_work
    LAPACKE_strttp_work
    LAPACKE_stzrzf_work
    LAPACKE_slagsy
    LAPACKE_slapmr
    LAPACKE_slapy2
    LAPACKE_slapy3
    LAPACKE_slartgp
    LAPACKE_slartgs
    LAPACKE_sbbcsd
    LAPACKE_sbbcsd_work
    LAPACKE_sorbdb
    LAPACKE_sorbdb_work
    LAPACKE_sorcsd
    LAPACKE_sorcsd_work
    LAPACKE_ssyconv
    LAPACKE_ssyconv_work
    LAPACKE_ssyswapr
    LAPACKE_ssyswapr_work
    LAPACKE_ssytri2
    LAPACKE_ssytri2_work
    LAPACKE_ssytrs2
    LAPACKE_ssytrs2_work
    LAPACKE_sgemqrt)
  (import (rnrs (6)) (lapacke compat))
  (define-shared-object "liblapacke.so")
  (define-c-function lapack_int LAPACKE_sbdsdc (int char char lapack_int float* float* float* lapack_int float* lapack_int float* lapack_int* ))
  (define-c-function lapack_int LAPACKE_sbdsqr (int char lapack_int lapack_int lapack_int lapack_int float* float* float* lapack_int float* lapack_int float* lapack_int ))
  (define-c-function lapack_int LAPACKE_sdisna (char lapack_int lapack_int float* float* ))
  (define-c-function lapack_int LAPACKE_sgbbrd (int char lapack_int lapack_int lapack_int lapack_int lapack_int float* lapack_int float* float* float* lapack_int float* lapack_int float* lapack_int ))
  (define-c-function lapack_int LAPACKE_sgbcon (int char lapack_int lapack_int lapack_int float* lapack_int lapack_int* float float* ))
  (define-c-function lapack_int LAPACKE_sgbequ (int lapack_int lapack_int lapack_int lapack_int float* lapack_int float* float* float* float* float* ))
  (define-c-function lapack_int LAPACKE_sgbequb (int lapack_int lapack_int lapack_int lapack_int float* lapack_int float* float* float* float* float* ))
  (define-c-function lapack_int LAPACKE_sgbrfs (int char lapack_int lapack_int lapack_int lapack_int float* lapack_int float* lapack_int lapack_int* float* lapack_int float* lapack_int float* float* ))
  (define-c-function lapack_int LAPACKE_sgbsv (int lapack_int lapack_int lapack_int lapack_int float* lapack_int lapack_int* float* lapack_int ))
  (define-c-function lapack_int LAPACKE_sgbtrf (int lapack_int lapack_int lapack_int lapack_int float* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_sgbtrs (int char lapack_int lapack_int lapack_int lapack_int float* lapack_int lapack_int* float* lapack_int ))
  (define-c-function lapack_int LAPACKE_sgebak (int char char lapack_int lapack_int lapack_int float* lapack_int float* lapack_int ))
  (define-c-function lapack_int LAPACKE_sgebal (int char lapack_int float* lapack_int lapack_int* lapack_int* float* ))
  (define-c-function lapack_int LAPACKE_sgebrd (int lapack_int lapack_int float* lapack_int float* float* float* float* ))
  (define-c-function lapack_int LAPACKE_sgecon (int char lapack_int float* lapack_int float float* ))
  (define-c-function lapack_int LAPACKE_sgeequ (int lapack_int lapack_int float* lapack_int float* float* float* float* float* ))
  (define-c-function lapack_int LAPACKE_sgeequb (int lapack_int lapack_int float* lapack_int float* float* float* float* float* ))
  (define-c-function lapack_int LAPACKE_sgees (int char char LAPACK_S_SELECT2 lapack_int float* lapack_int lapack_int* float* float* float* lapack_int ))
  (define-c-function lapack_int LAPACKE_sgeev (int char char lapack_int float* lapack_int float* float* float* lapack_int float* lapack_int ))
  (define-c-function lapack_int LAPACKE_sgehrd (int lapack_int lapack_int lapack_int float* lapack_int float* ))
  (define-c-function lapack_int LAPACKE_sgejsv (int char char char char char char lapack_int lapack_int float* lapack_int float* float* lapack_int float* lapack_int float* lapack_int* ))
  (define-c-function lapack_int LAPACKE_sgelq2 (int lapack_int lapack_int float* lapack_int float* ))
  (define-c-function lapack_int LAPACKE_sgelqf (int lapack_int lapack_int float* lapack_int float* ))
  (define-c-function lapack_int LAPACKE_sgels (int char lapack_int lapack_int lapack_int float* lapack_int float* lapack_int ))
  (define-c-function lapack_int LAPACKE_sgelsd (int lapack_int lapack_int lapack_int float* lapack_int float* lapack_int float* float lapack_int* ))
  (define-c-function lapack_int LAPACKE_sgelss (int lapack_int lapack_int lapack_int float* lapack_int float* lapack_int float* float lapack_int* ))
  (define-c-function lapack_int LAPACKE_sgelsy (int lapack_int lapack_int lapack_int float* lapack_int float* lapack_int lapack_int* float lapack_int* ))
  (define-c-function lapack_int LAPACKE_sgeqlf (int lapack_int lapack_int float* lapack_int float* ))
  (define-c-function lapack_int LAPACKE_sgeqp3 (int lapack_int lapack_int float* lapack_int lapack_int* float* ))
  (define-c-function lapack_int LAPACKE_sgeqpf (int lapack_int lapack_int float* lapack_int lapack_int* float* ))
  (define-c-function lapack_int LAPACKE_sgeqr2 (int lapack_int lapack_int float* lapack_int float* ))
  (define-c-function lapack_int LAPACKE_sgeqrf (int lapack_int lapack_int float* lapack_int float* ))
  (define-c-function lapack_int LAPACKE_sgeqrfp (int lapack_int lapack_int float* lapack_int float* ))
  (define-c-function lapack_int LAPACKE_sgerfs (int char lapack_int lapack_int float* lapack_int float* lapack_int lapack_int* float* lapack_int float* lapack_int float* float* ))
  (define-c-function lapack_int LAPACKE_sgerqf (int lapack_int lapack_int float* lapack_int float* ))
  (define-c-function lapack_int LAPACKE_sgesdd (int char lapack_int lapack_int float* lapack_int float* float* lapack_int float* lapack_int ))
  (define-c-function lapack_int LAPACKE_sgesv (int lapack_int lapack_int float* lapack_int lapack_int* float* lapack_int ))
  (define-c-function lapack_int LAPACKE_sgesvd (int char char lapack_int lapack_int float* lapack_int float* float* lapack_int float* lapack_int float* ))
  (define-c-function lapack_int LAPACKE_sgesvj (int char char char lapack_int lapack_int float* lapack_int float* lapack_int float* lapack_int float* ))
  (define-c-function lapack_int LAPACKE_sgetf2 (int lapack_int lapack_int float* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_sgetrf (int lapack_int lapack_int float* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_sgetri (int lapack_int float* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_sgetrs (int char lapack_int lapack_int float* lapack_int lapack_int* float* lapack_int ))
  (define-c-function lapack_int LAPACKE_sggbak (int char char lapack_int lapack_int lapack_int float* float* lapack_int float* lapack_int ))
  (define-c-function lapack_int LAPACKE_sggbal (int char lapack_int float* lapack_int float* lapack_int lapack_int* lapack_int* float* float* ))
  (define-c-function lapack_int LAPACKE_sgges (int char char char LAPACK_S_SELECT3 lapack_int float* lapack_int float* lapack_int lapack_int* float* float* float* float* lapack_int float* lapack_int ))
  (define-c-function lapack_int LAPACKE_sggev (int char char lapack_int float* lapack_int float* lapack_int float* float* float* float* lapack_int float* lapack_int ))
  (define-c-function lapack_int LAPACKE_sggglm (int lapack_int lapack_int lapack_int float* lapack_int float* lapack_int float* float* float* ))
  (define-c-function lapack_int LAPACKE_sgghrd (int char char lapack_int lapack_int lapack_int float* lapack_int float* lapack_int float* lapack_int float* lapack_int ))
  (define-c-function lapack_int LAPACKE_sgglse (int lapack_int lapack_int lapack_int float* lapack_int float* lapack_int float* float* float* ))
  (define-c-function lapack_int LAPACKE_sggqrf (int lapack_int lapack_int lapack_int float* lapack_int float* float* lapack_int float* ))
  (define-c-function lapack_int LAPACKE_sggrqf (int lapack_int lapack_int lapack_int float* lapack_int float* float* lapack_int float* ))
  (define-c-function lapack_int LAPACKE_sggsvd (int char char char lapack_int lapack_int lapack_int lapack_int* lapack_int* float* lapack_int float* lapack_int float* float* float* lapack_int float* lapack_int float* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_sggsvp (int char char char lapack_int lapack_int lapack_int float* lapack_int float* lapack_int float float lapack_int* lapack_int* float* lapack_int float* lapack_int float* lapack_int ))
  (define-c-function lapack_int LAPACKE_sgtcon (char lapack_int float* float* float* float* lapack_int* float float* ))
  (define-c-function lapack_int LAPACKE_sgtrfs (int char lapack_int lapack_int float* float* float* float* float* float* float* lapack_int* float* lapack_int float* lapack_int float* float* ))
  (define-c-function lapack_int LAPACKE_sgtsv (int lapack_int lapack_int float* float* float* float* lapack_int ))
  (define-c-function lapack_int LAPACKE_sgttrf (lapack_int float* float* float* float* lapack_int* ))
  (define-c-function lapack_int LAPACKE_sgttrs (int char lapack_int lapack_int float* float* float* float* lapack_int* float* lapack_int ))
  (define-c-function lapack_int LAPACKE_shgeqz (int char char char lapack_int lapack_int lapack_int float* lapack_int float* lapack_int float* float* float* float* lapack_int float* lapack_int ))
  (define-c-function lapack_int LAPACKE_shsein (int char char char lapack_logical* lapack_int float* lapack_int float* float* float* lapack_int float* lapack_int lapack_int lapack_int* lapack_int* lapack_int* ))
  (define-c-function lapack_int LAPACKE_shseqr (int char char lapack_int lapack_int lapack_int float* lapack_int float* float* float* lapack_int ))
  (define-c-function lapack_int LAPACKE_slacn2 (lapack_int float* float* lapack_int* float* lapack_int* lapack_int* ))
  (define-c-function lapack_int LAPACKE_slacpy (int char lapack_int lapack_int float* lapack_int float* lapack_int ))
  (define-c-function lapack_int LAPACKE_slag2d (int lapack_int lapack_int float* lapack_int double* lapack_int ))
  (define-c-function lapack_int LAPACKE_slagge (int lapack_int lapack_int lapack_int lapack_int float* float* lapack_int lapack_int* ))
  (define-c-function float LAPACKE_slamch (char ))
  (define-c-function float LAPACKE_slange (int char lapack_int lapack_int float* lapack_int ))
  (define-c-function float LAPACKE_slansy (int char char lapack_int float* lapack_int ))
  (define-c-function float LAPACKE_slantr (int char char char lapack_int lapack_int float* lapack_int ))
  (define-c-function lapack_int LAPACKE_slarfb (int char char char char lapack_int lapack_int lapack_int float* lapack_int float* lapack_int float* lapack_int ))
  (define-c-function lapack_int LAPACKE_slarfg (lapack_int float* float* lapack_int float* ))
  (define-c-function lapack_int LAPACKE_slarft (int char char lapack_int lapack_int float* lapack_int float* float* lapack_int ))
  (define-c-function lapack_int LAPACKE_slarnv (lapack_int lapack_int* lapack_int float* ))
  (define-c-function lapack_int LAPACKE_slaset (int char lapack_int lapack_int float float float* lapack_int ))
  (define-c-function lapack_int LAPACKE_slasrt (char lapack_int float* ))
  (define-c-function lapack_int LAPACKE_slaswp (int lapack_int float* lapack_int lapack_int lapack_int lapack_int* lapack_int ))
  (define-c-function lapack_int LAPACKE_slatms (int lapack_int lapack_int char lapack_int* char float* lapack_int float float lapack_int lapack_int char float* lapack_int ))
  (define-c-function lapack_int LAPACKE_slauum (int char lapack_int float* lapack_int ))
  (define-c-function lapack_int LAPACKE_sopgtr (int char lapack_int float* float* float* lapack_int ))
  (define-c-function lapack_int LAPACKE_sopmtr (int char char char lapack_int lapack_int float* float* float* lapack_int ))
  (define-c-function lapack_int LAPACKE_sorgbr (int char lapack_int lapack_int lapack_int float* lapack_int float* ))
  (define-c-function lapack_int LAPACKE_sorghr (int lapack_int lapack_int lapack_int float* lapack_int float* ))
  (define-c-function lapack_int LAPACKE_sorglq (int lapack_int lapack_int lapack_int float* lapack_int float* ))
  (define-c-function lapack_int LAPACKE_sorgql (int lapack_int lapack_int lapack_int float* lapack_int float* ))
  (define-c-function lapack_int LAPACKE_sorgqr (int lapack_int lapack_int lapack_int float* lapack_int float* ))
  (define-c-function lapack_int LAPACKE_sorgrq (int lapack_int lapack_int lapack_int float* lapack_int float* ))
  (define-c-function lapack_int LAPACKE_sorgtr (int char lapack_int float* lapack_int float* ))
  (define-c-function lapack_int LAPACKE_sormbr (int char char char lapack_int lapack_int lapack_int float* lapack_int float* float* lapack_int ))
  (define-c-function lapack_int LAPACKE_sormhr (int char char lapack_int lapack_int lapack_int lapack_int float* lapack_int float* float* lapack_int ))
  (define-c-function lapack_int LAPACKE_sormlq (int char char lapack_int lapack_int lapack_int float* lapack_int float* float* lapack_int ))
  (define-c-function lapack_int LAPACKE_sormql (int char char lapack_int lapack_int lapack_int float* lapack_int float* float* lapack_int ))
  (define-c-function lapack_int LAPACKE_sormqr (int char char lapack_int lapack_int lapack_int float* lapack_int float* float* lapack_int ))
  (define-c-function lapack_int LAPACKE_sormrq (int char char lapack_int lapack_int lapack_int float* lapack_int float* float* lapack_int ))
  (define-c-function lapack_int LAPACKE_sormrz (int char char lapack_int lapack_int lapack_int lapack_int float* lapack_int float* float* lapack_int ))
  (define-c-function lapack_int LAPACKE_sormtr (int char char char lapack_int lapack_int float* lapack_int float* float* lapack_int ))
  (define-c-function lapack_int LAPACKE_spbcon (int char lapack_int lapack_int float* lapack_int float float* ))
  (define-c-function lapack_int LAPACKE_spbequ (int char lapack_int lapack_int float* lapack_int float* float* float* ))
  (define-c-function lapack_int LAPACKE_spbrfs (int char lapack_int lapack_int lapack_int float* lapack_int float* lapack_int float* lapack_int float* lapack_int float* float* ))
  (define-c-function lapack_int LAPACKE_spbstf (int char lapack_int lapack_int float* lapack_int ))
  (define-c-function lapack_int LAPACKE_spbsv (int char lapack_int lapack_int lapack_int float* lapack_int float* lapack_int ))
  (define-c-function lapack_int LAPACKE_spbtrf (int char lapack_int lapack_int float* lapack_int ))
  (define-c-function lapack_int LAPACKE_spbtrs (int char lapack_int lapack_int lapack_int float* lapack_int float* lapack_int ))
  (define-c-function lapack_int LAPACKE_spftrf (int char char lapack_int float* ))
  (define-c-function lapack_int LAPACKE_spftri (int char char lapack_int float* ))
  (define-c-function lapack_int LAPACKE_spftrs (int char char lapack_int lapack_int float* float* lapack_int ))
  (define-c-function lapack_int LAPACKE_spocon (int char lapack_int float* lapack_int float float* ))
  (define-c-function lapack_int LAPACKE_spoequ (int lapack_int float* lapack_int float* float* float* ))
  (define-c-function lapack_int LAPACKE_spoequb (int lapack_int float* lapack_int float* float* float* ))
  (define-c-function lapack_int LAPACKE_sporfs (int char lapack_int lapack_int float* lapack_int float* lapack_int float* lapack_int float* lapack_int float* float* ))
  (define-c-function lapack_int LAPACKE_sposv (int char lapack_int lapack_int float* lapack_int float* lapack_int ))
  (define-c-function lapack_int LAPACKE_spotrf (int char lapack_int float* lapack_int ))
  (define-c-function lapack_int LAPACKE_spotri (int char lapack_int float* lapack_int ))
  (define-c-function lapack_int LAPACKE_spotrs (int char lapack_int lapack_int float* lapack_int float* lapack_int ))
  (define-c-function lapack_int LAPACKE_sppcon (int char lapack_int float* float float* ))
  (define-c-function lapack_int LAPACKE_sppequ (int char lapack_int float* float* float* float* ))
  (define-c-function lapack_int LAPACKE_spprfs (int char lapack_int lapack_int float* float* float* lapack_int float* lapack_int float* float* ))
  (define-c-function lapack_int LAPACKE_sppsv (int char lapack_int lapack_int float* float* lapack_int ))
  (define-c-function lapack_int LAPACKE_spptrf (int char lapack_int float* ))
  (define-c-function lapack_int LAPACKE_spptri (int char lapack_int float* ))
  (define-c-function lapack_int LAPACKE_spptrs (int char lapack_int lapack_int float* float* lapack_int ))
  (define-c-function lapack_int LAPACKE_spstrf (int char lapack_int float* lapack_int lapack_int* lapack_int* float ))
  (define-c-function lapack_int LAPACKE_sptcon (lapack_int float* float* float float* ))
  (define-c-function lapack_int LAPACKE_spteqr (int char lapack_int float* float* float* lapack_int ))
  (define-c-function lapack_int LAPACKE_sptrfs (int lapack_int lapack_int float* float* float* float* float* lapack_int float* lapack_int float* float* ))
  (define-c-function lapack_int LAPACKE_sptsv (int lapack_int lapack_int float* float* float* lapack_int ))
  (define-c-function lapack_int LAPACKE_spttrf (lapack_int float* float* ))
  (define-c-function lapack_int LAPACKE_spttrs (int lapack_int lapack_int float* float* float* lapack_int ))
  (define-c-function lapack_int LAPACKE_ssbev (int char char lapack_int lapack_int float* lapack_int float* float* lapack_int ))
  (define-c-function lapack_int LAPACKE_ssbevd (int char char lapack_int lapack_int float* lapack_int float* float* lapack_int ))
  (define-c-function lapack_int LAPACKE_ssbgst (int char char lapack_int lapack_int lapack_int float* lapack_int float* lapack_int float* lapack_int ))
  (define-c-function lapack_int LAPACKE_ssbgv (int char char lapack_int lapack_int lapack_int float* lapack_int float* lapack_int float* float* lapack_int ))
  (define-c-function lapack_int LAPACKE_ssbgvd (int char char lapack_int lapack_int lapack_int float* lapack_int float* lapack_int float* float* lapack_int ))
  (define-c-function lapack_int LAPACKE_ssbtrd (int char char lapack_int lapack_int float* lapack_int float* float* float* lapack_int ))
  (define-c-function lapack_int LAPACKE_ssfrk (int char char char lapack_int lapack_int float float* lapack_int float float* ))
  (define-c-function lapack_int LAPACKE_sspcon (int char lapack_int float* lapack_int* float float* ))
  (define-c-function lapack_int LAPACKE_sspev (int char char lapack_int float* float* float* lapack_int ))
  (define-c-function lapack_int LAPACKE_sspevd (int char char lapack_int float* float* float* lapack_int ))
  (define-c-function lapack_int LAPACKE_sspgst (int lapack_int char lapack_int float* float* ))
  (define-c-function lapack_int LAPACKE_sspgv (int lapack_int char char lapack_int float* float* float* float* lapack_int ))
  (define-c-function lapack_int LAPACKE_sspgvd (int lapack_int char char lapack_int float* float* float* float* lapack_int ))
  (define-c-function lapack_int LAPACKE_ssprfs (int char lapack_int lapack_int float* float* lapack_int* float* lapack_int float* lapack_int float* float* ))
  (define-c-function lapack_int LAPACKE_sspsv (int char lapack_int lapack_int float* lapack_int* float* lapack_int ))
  (define-c-function lapack_int LAPACKE_ssptrd (int char lapack_int float* float* float* float* ))
  (define-c-function lapack_int LAPACKE_ssptrf (int char lapack_int float* lapack_int* ))
  (define-c-function lapack_int LAPACKE_ssptri (int char lapack_int float* lapack_int* ))
  (define-c-function lapack_int LAPACKE_ssptrs (int char lapack_int lapack_int float* lapack_int* float* lapack_int ))
  (define-c-function lapack_int LAPACKE_sstebz (char char lapack_int float float lapack_int lapack_int float float* float* lapack_int* lapack_int* float* lapack_int* lapack_int* ))
  (define-c-function lapack_int LAPACKE_sstedc (int char lapack_int float* float* float* lapack_int ))
  (define-c-function lapack_int LAPACKE_sstegr (int char char lapack_int float* float* float float lapack_int lapack_int float lapack_int* float* float* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_sstein (int lapack_int float* float* lapack_int float* lapack_int* lapack_int* float* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_sstemr (int char char lapack_int float* float* float float lapack_int lapack_int lapack_int* float* float* lapack_int lapack_int lapack_int* lapack_logical* ))
  (define-c-function lapack_int LAPACKE_ssteqr (int char lapack_int float* float* float* lapack_int ))
  (define-c-function lapack_int LAPACKE_ssterf (lapack_int float* float* ))
  (define-c-function lapack_int LAPACKE_sstev (int char lapack_int float* float* float* lapack_int ))
  (define-c-function lapack_int LAPACKE_sstevd (int char lapack_int float* float* float* lapack_int ))
  (define-c-function lapack_int LAPACKE_sstevr (int char char lapack_int float* float* float float lapack_int lapack_int float lapack_int* float* float* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_ssycon (int char lapack_int float* lapack_int lapack_int* float float* ))
  (define-c-function lapack_int LAPACKE_ssyequb (int char lapack_int float* lapack_int float* float* float* ))
  (define-c-function lapack_int LAPACKE_ssyev (int char char lapack_int float* lapack_int float* ))
  (define-c-function lapack_int LAPACKE_ssyevd (int char char lapack_int float* lapack_int float* ))
  (define-c-function lapack_int LAPACKE_ssyevr (int char char char lapack_int float* lapack_int float float lapack_int lapack_int float lapack_int* float* float* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_ssygst (int lapack_int char lapack_int float* lapack_int float* lapack_int ))
  (define-c-function lapack_int LAPACKE_ssygv (int lapack_int char char lapack_int float* lapack_int float* lapack_int float* ))
  (define-c-function lapack_int LAPACKE_ssygvd (int lapack_int char char lapack_int float* lapack_int float* lapack_int float* ))
  (define-c-function lapack_int LAPACKE_ssyrfs (int char lapack_int lapack_int float* lapack_int float* lapack_int lapack_int* float* lapack_int float* lapack_int float* float* ))
  (define-c-function lapack_int LAPACKE_ssysv (int char lapack_int lapack_int float* lapack_int lapack_int* float* lapack_int ))
  (define-c-function lapack_int LAPACKE_ssytrd (int char lapack_int float* lapack_int float* float* float* ))
  (define-c-function lapack_int LAPACKE_ssytrf (int char lapack_int float* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_ssytri (int char lapack_int float* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_ssytrs (int char lapack_int lapack_int float* lapack_int lapack_int* float* lapack_int ))
  (define-c-function lapack_int LAPACKE_stbcon (int char char char lapack_int lapack_int float* lapack_int float* ))
  (define-c-function lapack_int LAPACKE_stbrfs (int char char char lapack_int lapack_int lapack_int float* lapack_int float* lapack_int float* lapack_int float* float* ))
  (define-c-function lapack_int LAPACKE_stbtrs (int char char char lapack_int lapack_int lapack_int float* lapack_int float* lapack_int ))
  (define-c-function lapack_int LAPACKE_stfsm (int char char char char char lapack_int lapack_int float float* float* lapack_int ))
  (define-c-function lapack_int LAPACKE_stftri (int char char char lapack_int float* ))
  (define-c-function lapack_int LAPACKE_stfttp (int char char lapack_int float* float* ))
  (define-c-function lapack_int LAPACKE_stfttr (int char char lapack_int float* float* lapack_int ))
  (define-c-function lapack_int LAPACKE_stgevc (int char char lapack_logical* lapack_int float* lapack_int float* lapack_int float* lapack_int float* lapack_int lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_stgexc (int lapack_logical lapack_logical lapack_int float* lapack_int float* lapack_int float* lapack_int float* lapack_int lapack_int* lapack_int* ))
  (define-c-function lapack_int LAPACKE_stgsen (int lapack_int lapack_logical lapack_logical lapack_logical* lapack_int float* lapack_int float* lapack_int float* float* float* float* lapack_int float* lapack_int lapack_int* float* float* float* ))
  (define-c-function lapack_int LAPACKE_stgsja (int char char char lapack_int lapack_int lapack_int lapack_int lapack_int float* lapack_int float* lapack_int float float float* float* float* lapack_int float* lapack_int float* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_stgsna (int char char lapack_logical* lapack_int float* lapack_int float* lapack_int float* lapack_int float* lapack_int float* float* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_stgsyl (int char lapack_int lapack_int lapack_int float* lapack_int float* lapack_int float* lapack_int float* lapack_int float* lapack_int float* lapack_int float* float* ))
  (define-c-function lapack_int LAPACKE_stpcon (int char char char lapack_int float* float* ))
  (define-c-function lapack_int LAPACKE_stprfs (int char char char lapack_int lapack_int float* float* lapack_int float* lapack_int float* float* ))
  (define-c-function lapack_int LAPACKE_stptri (int char char lapack_int float* ))
  (define-c-function lapack_int LAPACKE_stptrs (int char char char lapack_int lapack_int float* float* lapack_int ))
  (define-c-function lapack_int LAPACKE_stpttf (int char char lapack_int float* float* ))
  (define-c-function lapack_int LAPACKE_stpttr (int char lapack_int float* float* lapack_int ))
  (define-c-function lapack_int LAPACKE_strcon (int char char char lapack_int float* lapack_int float* ))
  (define-c-function lapack_int LAPACKE_strevc (int char char lapack_logical* lapack_int float* lapack_int float* lapack_int float* lapack_int lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_strexc (int char lapack_int float* lapack_int float* lapack_int lapack_int* lapack_int* ))
  (define-c-function lapack_int LAPACKE_strrfs (int char char char lapack_int lapack_int float* lapack_int float* lapack_int float* lapack_int float* float* ))
  (define-c-function lapack_int LAPACKE_strsen (int char char lapack_logical* lapack_int float* lapack_int float* lapack_int float* float* lapack_int* float* float* ))
  (define-c-function lapack_int LAPACKE_strsna (int char char lapack_logical* lapack_int float* lapack_int float* lapack_int float* lapack_int float* float* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_strsyl (int char char lapack_int lapack_int lapack_int float* lapack_int float* lapack_int float* lapack_int float* ))
  (define-c-function lapack_int LAPACKE_strtri (int char char lapack_int float* lapack_int ))
  (define-c-function lapack_int LAPACKE_strtrs (int char char char lapack_int lapack_int float* lapack_int float* lapack_int ))
  (define-c-function lapack_int LAPACKE_strttf (int char char lapack_int float* lapack_int float* ))
  (define-c-function lapack_int LAPACKE_strttp (int char lapack_int float* lapack_int float* ))
  (define-c-function lapack_int LAPACKE_stzrzf (int lapack_int lapack_int float* lapack_int float* ))
  (define-c-function lapack_int LAPACKE_sbdsdc_work (int char char lapack_int float* float* float* lapack_int float* lapack_int float* lapack_int* float* lapack_int* ))
  (define-c-function lapack_int LAPACKE_sbdsqr_work (int char lapack_int lapack_int lapack_int lapack_int float* float* float* lapack_int float* lapack_int float* lapack_int float* ))
  (define-c-function lapack_int LAPACKE_sdisna_work (char lapack_int lapack_int float* float* ))
  (define-c-function lapack_int LAPACKE_sgbbrd_work (int char lapack_int lapack_int lapack_int lapack_int lapack_int float* lapack_int float* float* float* lapack_int float* lapack_int float* lapack_int float* ))
  (define-c-function lapack_int LAPACKE_sgbcon_work (int char lapack_int lapack_int lapack_int float* lapack_int lapack_int* float float* float* lapack_int* ))
  (define-c-function lapack_int LAPACKE_sgbequ_work (int lapack_int lapack_int lapack_int lapack_int float* lapack_int float* float* float* float* float* ))
  (define-c-function lapack_int LAPACKE_sgbequb_work (int lapack_int lapack_int lapack_int lapack_int float* lapack_int float* float* float* float* float* ))
  (define-c-function lapack_int LAPACKE_sgbrfs_work (int char lapack_int lapack_int lapack_int lapack_int float* lapack_int float* lapack_int lapack_int* float* lapack_int float* lapack_int float* float* float* lapack_int* ))
  (define-c-function lapack_int LAPACKE_sgbsv_work (int lapack_int lapack_int lapack_int lapack_int float* lapack_int lapack_int* float* lapack_int ))
  (define-c-function lapack_int LAPACKE_sgbtrf_work (int lapack_int lapack_int lapack_int lapack_int float* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_sgbtrs_work (int char lapack_int lapack_int lapack_int lapack_int float* lapack_int lapack_int* float* lapack_int ))
  (define-c-function lapack_int LAPACKE_sgebak_work (int char char lapack_int lapack_int lapack_int float* lapack_int float* lapack_int ))
  (define-c-function lapack_int LAPACKE_sgebal_work (int char lapack_int float* lapack_int lapack_int* lapack_int* float* ))
  (define-c-function lapack_int LAPACKE_sgebrd_work (int lapack_int lapack_int float* lapack_int float* float* float* float* float* lapack_int ))
  (define-c-function lapack_int LAPACKE_sgecon_work (int char lapack_int float* lapack_int float float* float* lapack_int* ))
  (define-c-function lapack_int LAPACKE_sgeequ_work (int lapack_int lapack_int float* lapack_int float* float* float* float* float* ))
  (define-c-function lapack_int LAPACKE_sgeequb_work (int lapack_int lapack_int float* lapack_int float* float* float* float* float* ))
  (define-c-function lapack_int LAPACKE_sgees_work (int char char LAPACK_S_SELECT2 lapack_int float* lapack_int lapack_int* float* float* float* lapack_int float* lapack_int lapack_logical* ))
  (define-c-function lapack_int LAPACKE_sgeev_work (int char char lapack_int float* lapack_int float* float* float* lapack_int float* lapack_int float* lapack_int ))
  (define-c-function lapack_int LAPACKE_sgehrd_work (int lapack_int lapack_int lapack_int float* lapack_int float* float* lapack_int ))
  (define-c-function lapack_int LAPACKE_sgejsv_work (int char char char char char char lapack_int lapack_int float* lapack_int float* float* lapack_int float* lapack_int float* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_sgelq2_work (int lapack_int lapack_int float* lapack_int float* float* ))
  (define-c-function lapack_int LAPACKE_sgelqf_work (int lapack_int lapack_int float* lapack_int float* float* lapack_int ))
  (define-c-function lapack_int LAPACKE_sgels_work (int char lapack_int lapack_int lapack_int float* lapack_int float* lapack_int float* lapack_int ))
  (define-c-function lapack_int LAPACKE_sgelsd_work (int lapack_int lapack_int lapack_int float* lapack_int float* lapack_int float* float lapack_int* float* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_sgelss_work (int lapack_int lapack_int lapack_int float* lapack_int float* lapack_int float* float lapack_int* float* lapack_int ))
  (define-c-function lapack_int LAPACKE_sgelsy_work (int lapack_int lapack_int lapack_int float* lapack_int float* lapack_int lapack_int* float lapack_int* float* lapack_int ))
  (define-c-function lapack_int LAPACKE_sgeqlf_work (int lapack_int lapack_int float* lapack_int float* float* lapack_int ))
  (define-c-function lapack_int LAPACKE_sgeqp3_work (int lapack_int lapack_int float* lapack_int lapack_int* float* float* lapack_int ))
  (define-c-function lapack_int LAPACKE_sgeqpf_work (int lapack_int lapack_int float* lapack_int lapack_int* float* float* ))
  (define-c-function lapack_int LAPACKE_sgeqr2_work (int lapack_int lapack_int float* lapack_int float* float* ))
  (define-c-function lapack_int LAPACKE_sgeqrf_work (int lapack_int lapack_int float* lapack_int float* float* lapack_int ))
  (define-c-function lapack_int LAPACKE_sgeqrfp_work (int lapack_int lapack_int float* lapack_int float* float* lapack_int ))
  (define-c-function lapack_int LAPACKE_sgerfs_work (int char lapack_int lapack_int float* lapack_int float* lapack_int lapack_int* float* lapack_int float* lapack_int float* float* float* lapack_int* ))
  (define-c-function lapack_int LAPACKE_sgerqf_work (int lapack_int lapack_int float* lapack_int float* float* lapack_int ))
  (define-c-function lapack_int LAPACKE_sgesdd_work (int char lapack_int lapack_int float* lapack_int float* float* lapack_int float* lapack_int float* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_sgesv_work (int lapack_int lapack_int float* lapack_int lapack_int* float* lapack_int ))
  (define-c-function lapack_int LAPACKE_sgesvd_work (int char char lapack_int lapack_int float* lapack_int float* float* lapack_int float* lapack_int float* lapack_int ))
  (define-c-function lapack_int LAPACKE_sgesvj_work (int char char char lapack_int lapack_int float* lapack_int float* lapack_int float* lapack_int float* lapack_int ))
  (define-c-function lapack_int LAPACKE_sgetf2_work (int lapack_int lapack_int float* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_sgetrf_work (int lapack_int lapack_int float* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_sgetri_work (int lapack_int float* lapack_int lapack_int* float* lapack_int ))
  (define-c-function lapack_int LAPACKE_sgetrs_work (int char lapack_int lapack_int float* lapack_int lapack_int* float* lapack_int ))
  (define-c-function lapack_int LAPACKE_sggbak_work (int char char lapack_int lapack_int lapack_int float* float* lapack_int float* lapack_int ))
  (define-c-function lapack_int LAPACKE_sggbal_work (int char lapack_int float* lapack_int float* lapack_int lapack_int* lapack_int* float* float* float* ))
  (define-c-function lapack_int LAPACKE_sgges_work (int char char char LAPACK_S_SELECT3 lapack_int float* lapack_int float* lapack_int lapack_int* float* float* float* float* lapack_int float* lapack_int float* lapack_int lapack_logical* ))
  (define-c-function lapack_int LAPACKE_sggev_work (int char char lapack_int float* lapack_int float* lapack_int float* float* float* float* lapack_int float* lapack_int float* lapack_int ))
  (define-c-function lapack_int LAPACKE_sggglm_work (int lapack_int lapack_int lapack_int float* lapack_int float* lapack_int float* float* float* float* lapack_int ))
  (define-c-function lapack_int LAPACKE_sgghrd_work (int char char lapack_int lapack_int lapack_int float* lapack_int float* lapack_int float* lapack_int float* lapack_int ))
  (define-c-function lapack_int LAPACKE_sgglse_work (int lapack_int lapack_int lapack_int float* lapack_int float* lapack_int float* float* float* float* lapack_int ))
  (define-c-function lapack_int LAPACKE_sggqrf_work (int lapack_int lapack_int lapack_int float* lapack_int float* float* lapack_int float* float* lapack_int ))
  (define-c-function lapack_int LAPACKE_sggrqf_work (int lapack_int lapack_int lapack_int float* lapack_int float* float* lapack_int float* float* lapack_int ))
  (define-c-function lapack_int LAPACKE_sggsvd_work (int char char char lapack_int lapack_int lapack_int lapack_int* lapack_int* float* lapack_int float* lapack_int float* float* float* lapack_int float* lapack_int float* lapack_int float* lapack_int* ))
  (define-c-function lapack_int LAPACKE_sggsvp_work (int char char char lapack_int lapack_int lapack_int float* lapack_int float* lapack_int float float lapack_int* lapack_int* float* lapack_int float* lapack_int float* lapack_int lapack_int* float* float* ))
  (define-c-function lapack_int LAPACKE_sgtcon_work (char lapack_int float* float* float* float* lapack_int* float float* float* lapack_int* ))
  (define-c-function lapack_int LAPACKE_sgtrfs_work (int char lapack_int lapack_int float* float* float* float* float* float* float* lapack_int* float* lapack_int float* lapack_int float* float* float* lapack_int* ))
  (define-c-function lapack_int LAPACKE_sgtsv_work (int lapack_int lapack_int float* float* float* float* lapack_int ))
  (define-c-function lapack_int LAPACKE_sgttrf_work (lapack_int float* float* float* float* lapack_int* ))
  (define-c-function lapack_int LAPACKE_sgttrs_work (int char lapack_int lapack_int float* float* float* float* lapack_int* float* lapack_int ))
  (define-c-function lapack_int LAPACKE_shgeqz_work (int char char char lapack_int lapack_int lapack_int float* lapack_int float* lapack_int float* float* float* float* lapack_int float* lapack_int float* lapack_int ))
  (define-c-function lapack_int LAPACKE_shsein_work (int char char char lapack_logical* lapack_int float* lapack_int float* float* float* lapack_int float* lapack_int lapack_int lapack_int* float* lapack_int* lapack_int* ))
  (define-c-function lapack_int LAPACKE_shseqr_work (int char char lapack_int lapack_int lapack_int float* lapack_int float* float* float* lapack_int float* lapack_int ))
  (define-c-function lapack_int LAPACKE_slacn2_work (lapack_int float* float* lapack_int* float* lapack_int* lapack_int* ))
  (define-c-function lapack_int LAPACKE_slacpy_work (int char lapack_int lapack_int float* lapack_int float* lapack_int ))
  (define-c-function lapack_int LAPACKE_slag2d_work (int lapack_int lapack_int float* lapack_int double* lapack_int ))
  (define-c-function lapack_int LAPACKE_slagge_work (int lapack_int lapack_int lapack_int lapack_int float* float* lapack_int lapack_int* float* ))
  (define-c-function lapack_int LAPACKE_slagsy_work (int lapack_int lapack_int float* float* lapack_int lapack_int* float* ))
  (define-c-function lapack_int LAPACKE_slapmr_work (int lapack_logical lapack_int lapack_int float* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_slartgp_work (float float float* float* float* ))
  (define-c-function lapack_int LAPACKE_slartgs_work (float float float float* float* ))
  (define-c-function float LAPACKE_slapy2_work (float float ))
  (define-c-function float LAPACKE_slapy3_work (float float float ))
  (define-c-function float LAPACKE_slamch_work (char ))
  (define-c-function float LAPACKE_slange_work (int char lapack_int lapack_int float* lapack_int float* ))
  (define-c-function float LAPACKE_slansy_work (int char char lapack_int float* lapack_int float* ))
  (define-c-function float LAPACKE_slantr_work (int char char char lapack_int lapack_int float* lapack_int float* ))
  (define-c-function lapack_int LAPACKE_slarfb_work (int char char char char lapack_int lapack_int lapack_int float* lapack_int float* lapack_int float* lapack_int float* lapack_int ))
  (define-c-function lapack_int LAPACKE_slarfg_work (lapack_int float* float* lapack_int float* ))
  (define-c-function lapack_int LAPACKE_slarft_work (int char char lapack_int lapack_int float* lapack_int float* float* lapack_int ))
  (define-c-function lapack_int LAPACKE_slarnv_work (lapack_int lapack_int* lapack_int float* ))
  (define-c-function lapack_int LAPACKE_slaset_work (int char lapack_int lapack_int float float float* lapack_int ))
  (define-c-function lapack_int LAPACKE_slasrt_work (char lapack_int float* ))
  (define-c-function lapack_int LAPACKE_slaswp_work (int lapack_int float* lapack_int lapack_int lapack_int lapack_int* lapack_int ))
  (define-c-function lapack_int LAPACKE_slatms_work (int lapack_int lapack_int char lapack_int* char float* lapack_int float float lapack_int lapack_int char float* lapack_int float* ))
  (define-c-function lapack_int LAPACKE_slauum_work (int char lapack_int float* lapack_int ))
  (define-c-function lapack_int LAPACKE_sopgtr_work (int char lapack_int float* float* float* lapack_int float* ))
  (define-c-function lapack_int LAPACKE_sopmtr_work (int char char char lapack_int lapack_int float* float* float* lapack_int float* ))
  (define-c-function lapack_int LAPACKE_sorgbr_work (int char lapack_int lapack_int lapack_int float* lapack_int float* float* lapack_int ))
  (define-c-function lapack_int LAPACKE_sorghr_work (int lapack_int lapack_int lapack_int float* lapack_int float* float* lapack_int ))
  (define-c-function lapack_int LAPACKE_sorglq_work (int lapack_int lapack_int lapack_int float* lapack_int float* float* lapack_int ))
  (define-c-function lapack_int LAPACKE_sorgql_work (int lapack_int lapack_int lapack_int float* lapack_int float* float* lapack_int ))
  (define-c-function lapack_int LAPACKE_sorgqr_work (int lapack_int lapack_int lapack_int float* lapack_int float* float* lapack_int ))
  (define-c-function lapack_int LAPACKE_sorgrq_work (int lapack_int lapack_int lapack_int float* lapack_int float* float* lapack_int ))
  (define-c-function lapack_int LAPACKE_sorgtr_work (int char lapack_int float* lapack_int float* float* lapack_int ))
  (define-c-function lapack_int LAPACKE_sormbr_work (int char char char lapack_int lapack_int lapack_int float* lapack_int float* float* lapack_int float* lapack_int ))
  (define-c-function lapack_int LAPACKE_sormhr_work (int char char lapack_int lapack_int lapack_int lapack_int float* lapack_int float* float* lapack_int float* lapack_int ))
  (define-c-function lapack_int LAPACKE_sormlq_work (int char char lapack_int lapack_int lapack_int float* lapack_int float* float* lapack_int float* lapack_int ))
  (define-c-function lapack_int LAPACKE_sormql_work (int char char lapack_int lapack_int lapack_int float* lapack_int float* float* lapack_int float* lapack_int ))
  (define-c-function lapack_int LAPACKE_sormqr_work (int char char lapack_int lapack_int lapack_int float* lapack_int float* float* lapack_int float* lapack_int ))
  (define-c-function lapack_int LAPACKE_sormrq_work (int char char lapack_int lapack_int lapack_int float* lapack_int float* float* lapack_int float* lapack_int ))
  (define-c-function lapack_int LAPACKE_sormrz_work (int char char lapack_int lapack_int lapack_int lapack_int float* lapack_int float* float* lapack_int float* lapack_int ))
  (define-c-function lapack_int LAPACKE_sormtr_work (int char char char lapack_int lapack_int float* lapack_int float* float* lapack_int float* lapack_int ))
  (define-c-function lapack_int LAPACKE_spbcon_work (int char lapack_int lapack_int float* lapack_int float float* float* lapack_int* ))
  (define-c-function lapack_int LAPACKE_spbequ_work (int char lapack_int lapack_int float* lapack_int float* float* float* ))
  (define-c-function lapack_int LAPACKE_spbrfs_work (int char lapack_int lapack_int lapack_int float* lapack_int float* lapack_int float* lapack_int float* lapack_int float* float* float* lapack_int* ))
  (define-c-function lapack_int LAPACKE_spbstf_work (int char lapack_int lapack_int float* lapack_int ))
  (define-c-function lapack_int LAPACKE_spbsv_work (int char lapack_int lapack_int lapack_int float* lapack_int float* lapack_int ))
  (define-c-function lapack_int LAPACKE_spbtrf_work (int char lapack_int lapack_int float* lapack_int ))
  (define-c-function lapack_int LAPACKE_spbtrs_work (int char lapack_int lapack_int lapack_int float* lapack_int float* lapack_int ))
  (define-c-function lapack_int LAPACKE_spftrf_work (int char char lapack_int float* ))
  (define-c-function lapack_int LAPACKE_spftri_work (int char char lapack_int float* ))
  (define-c-function lapack_int LAPACKE_spftrs_work (int char char lapack_int lapack_int float* float* lapack_int ))
  (define-c-function lapack_int LAPACKE_spocon_work (int char lapack_int float* lapack_int float float* float* lapack_int* ))
  (define-c-function lapack_int LAPACKE_spoequ_work (int lapack_int float* lapack_int float* float* float* ))
  (define-c-function lapack_int LAPACKE_spoequb_work (int lapack_int float* lapack_int float* float* float* ))
  (define-c-function lapack_int LAPACKE_sporfs_work (int char lapack_int lapack_int float* lapack_int float* lapack_int float* lapack_int float* lapack_int float* float* float* lapack_int* ))
  (define-c-function lapack_int LAPACKE_sposv_work (int char lapack_int lapack_int float* lapack_int float* lapack_int ))
  (define-c-function lapack_int LAPACKE_spotrf_work (int char lapack_int float* lapack_int ))
  (define-c-function lapack_int LAPACKE_spotri_work (int char lapack_int float* lapack_int ))
  (define-c-function lapack_int LAPACKE_spotrs_work (int char lapack_int lapack_int float* lapack_int float* lapack_int ))
  (define-c-function lapack_int LAPACKE_sppcon_work (int char lapack_int float* float float* float* lapack_int* ))
  (define-c-function lapack_int LAPACKE_sppequ_work (int char lapack_int float* float* float* float* ))
  (define-c-function lapack_int LAPACKE_spprfs_work (int char lapack_int lapack_int float* float* float* lapack_int float* lapack_int float* float* float* lapack_int* ))
  (define-c-function lapack_int LAPACKE_sppsv_work (int char lapack_int lapack_int float* float* lapack_int ))
  (define-c-function lapack_int LAPACKE_spptrf_work (int char lapack_int float* ))
  (define-c-function lapack_int LAPACKE_spptri_work (int char lapack_int float* ))
  (define-c-function lapack_int LAPACKE_spptrs_work (int char lapack_int lapack_int float* float* lapack_int ))
  (define-c-function lapack_int LAPACKE_spstrf_work (int char lapack_int float* lapack_int lapack_int* lapack_int* float float* ))
  (define-c-function lapack_int LAPACKE_sptcon_work (lapack_int float* float* float float* float* ))
  (define-c-function lapack_int LAPACKE_spteqr_work (int char lapack_int float* float* float* lapack_int float* ))
  (define-c-function lapack_int LAPACKE_sptrfs_work (int lapack_int lapack_int float* float* float* float* float* lapack_int float* lapack_int float* float* float* ))
  (define-c-function lapack_int LAPACKE_sptsv_work (int lapack_int lapack_int float* float* float* lapack_int ))
  (define-c-function lapack_int LAPACKE_spttrf_work (lapack_int float* float* ))
  (define-c-function lapack_int LAPACKE_spttrs_work (int lapack_int lapack_int float* float* float* lapack_int ))
  (define-c-function lapack_int LAPACKE_ssbev_work (int char char lapack_int lapack_int float* lapack_int float* float* lapack_int float* ))
  (define-c-function lapack_int LAPACKE_ssbevd_work (int char char lapack_int lapack_int float* lapack_int float* float* lapack_int float* lapack_int lapack_int* lapack_int ))
  (define-c-function lapack_int LAPACKE_ssbgst_work (int char char lapack_int lapack_int lapack_int float* lapack_int float* lapack_int float* lapack_int float* ))
  (define-c-function lapack_int LAPACKE_ssbgv_work (int char char lapack_int lapack_int lapack_int float* lapack_int float* lapack_int float* float* lapack_int float* ))
  (define-c-function lapack_int LAPACKE_ssbgvd_work (int char char lapack_int lapack_int lapack_int float* lapack_int float* lapack_int float* float* lapack_int float* lapack_int lapack_int* lapack_int ))
  (define-c-function lapack_int LAPACKE_ssbtrd_work (int char char lapack_int lapack_int float* lapack_int float* float* float* lapack_int float* ))
  (define-c-function lapack_int LAPACKE_ssfrk_work (int char char char lapack_int lapack_int float float* lapack_int float float* ))
  (define-c-function lapack_int LAPACKE_sspcon_work (int char lapack_int float* lapack_int* float float* float* lapack_int* ))
  (define-c-function lapack_int LAPACKE_sspev_work (int char char lapack_int float* float* float* lapack_int float* ))
  (define-c-function lapack_int LAPACKE_sspevd_work (int char char lapack_int float* float* float* lapack_int float* lapack_int lapack_int* lapack_int ))
  (define-c-function lapack_int LAPACKE_sspgst_work (int lapack_int char lapack_int float* float* ))
  (define-c-function lapack_int LAPACKE_sspgv_work (int lapack_int char char lapack_int float* float* float* float* lapack_int float* ))
  (define-c-function lapack_int LAPACKE_sspgvd_work (int lapack_int char char lapack_int float* float* float* float* lapack_int float* lapack_int lapack_int* lapack_int ))
  (define-c-function lapack_int LAPACKE_ssprfs_work (int char lapack_int lapack_int float* float* lapack_int* float* lapack_int float* lapack_int float* float* float* lapack_int* ))
  (define-c-function lapack_int LAPACKE_sspsv_work (int char lapack_int lapack_int float* lapack_int* float* lapack_int ))
  (define-c-function lapack_int LAPACKE_ssptrd_work (int char lapack_int float* float* float* float* ))
  (define-c-function lapack_int LAPACKE_ssptrf_work (int char lapack_int float* lapack_int* ))
  (define-c-function lapack_int LAPACKE_ssptri_work (int char lapack_int float* lapack_int* float* ))
  (define-c-function lapack_int LAPACKE_ssptrs_work (int char lapack_int lapack_int float* lapack_int* float* lapack_int ))
  (define-c-function lapack_int LAPACKE_sstebz_work (char char lapack_int float float lapack_int lapack_int float float* float* lapack_int* lapack_int* float* lapack_int* lapack_int* float* lapack_int* ))
  (define-c-function lapack_int LAPACKE_sstedc_work (int char lapack_int float* float* float* lapack_int float* lapack_int lapack_int* lapack_int ))
  (define-c-function lapack_int LAPACKE_sstegr_work (int char char lapack_int float* float* float float lapack_int lapack_int float lapack_int* float* float* lapack_int lapack_int* float* lapack_int lapack_int* lapack_int ))
  (define-c-function lapack_int LAPACKE_sstein_work (int lapack_int float* float* lapack_int float* lapack_int* lapack_int* float* lapack_int float* lapack_int* lapack_int* ))
  (define-c-function lapack_int LAPACKE_sstemr_work (int char char lapack_int float* float* float float lapack_int lapack_int lapack_int* float* float* lapack_int lapack_int lapack_int* lapack_logical* float* lapack_int lapack_int* lapack_int ))
  (define-c-function lapack_int LAPACKE_ssteqr_work (int char lapack_int float* float* float* lapack_int float* ))
  (define-c-function lapack_int LAPACKE_ssterf_work (lapack_int float* float* ))
  (define-c-function lapack_int LAPACKE_sstev_work (int char lapack_int float* float* float* lapack_int float* ))
  (define-c-function lapack_int LAPACKE_sstevd_work (int char lapack_int float* float* float* lapack_int float* lapack_int lapack_int* lapack_int ))
  (define-c-function lapack_int LAPACKE_sstevr_work (int char char lapack_int float* float* float float lapack_int lapack_int float lapack_int* float* float* lapack_int lapack_int* float* lapack_int lapack_int* lapack_int ))
  (define-c-function lapack_int LAPACKE_ssycon_work (int char lapack_int float* lapack_int lapack_int* float float* float* lapack_int* ))
  (define-c-function lapack_int LAPACKE_ssyequb_work (int char lapack_int float* lapack_int float* float* float* float* ))
  (define-c-function lapack_int LAPACKE_ssyev_work (int char char lapack_int float* lapack_int float* float* lapack_int ))
  (define-c-function lapack_int LAPACKE_ssyevd_work (int char char lapack_int float* lapack_int float* float* lapack_int lapack_int* lapack_int ))
  (define-c-function lapack_int LAPACKE_ssyevr_work (int char char char lapack_int float* lapack_int float float lapack_int lapack_int float lapack_int* float* float* lapack_int lapack_int* float* lapack_int lapack_int* lapack_int ))
  (define-c-function lapack_int LAPACKE_ssygst_work (int lapack_int char lapack_int float* lapack_int float* lapack_int ))
  (define-c-function lapack_int LAPACKE_ssygv_work (int lapack_int char char lapack_int float* lapack_int float* lapack_int float* float* lapack_int ))
  (define-c-function lapack_int LAPACKE_ssygvd_work (int lapack_int char char lapack_int float* lapack_int float* lapack_int float* float* lapack_int lapack_int* lapack_int ))
  (define-c-function lapack_int LAPACKE_ssyrfs_work (int char lapack_int lapack_int float* lapack_int float* lapack_int lapack_int* float* lapack_int float* lapack_int float* float* float* lapack_int* ))
  (define-c-function lapack_int LAPACKE_ssysv_work (int char lapack_int lapack_int float* lapack_int lapack_int* float* lapack_int float* lapack_int ))
  (define-c-function lapack_int LAPACKE_ssysv_rook_work (int char lapack_int lapack_int float* lapack_int lapack_int* float* lapack_int float* lapack_int ))
  (define-c-function lapack_int LAPACKE_ssytrd_work (int char lapack_int float* lapack_int float* float* float* float* lapack_int ))
  (define-c-function lapack_int LAPACKE_ssytrf_work (int char lapack_int float* lapack_int lapack_int* float* lapack_int ))
  (define-c-function lapack_int LAPACKE_ssytri_work (int char lapack_int float* lapack_int lapack_int* float* ))
  (define-c-function lapack_int LAPACKE_ssytrs_work (int char lapack_int lapack_int float* lapack_int lapack_int* float* lapack_int ))
  (define-c-function lapack_int LAPACKE_stbcon_work (int char char char lapack_int lapack_int float* lapack_int float* float* lapack_int* ))
  (define-c-function lapack_int LAPACKE_stbrfs_work (int char char char lapack_int lapack_int lapack_int float* lapack_int float* lapack_int float* lapack_int float* float* float* lapack_int* ))
  (define-c-function lapack_int LAPACKE_stbtrs_work (int char char char lapack_int lapack_int lapack_int float* lapack_int float* lapack_int ))
  (define-c-function lapack_int LAPACKE_stfsm_work (int char char char char char lapack_int lapack_int float float* float* lapack_int ))
  (define-c-function lapack_int LAPACKE_stftri_work (int char char char lapack_int float* ))
  (define-c-function lapack_int LAPACKE_stfttp_work (int char char lapack_int float* float* ))
  (define-c-function lapack_int LAPACKE_stfttr_work (int char char lapack_int float* float* lapack_int ))
  (define-c-function lapack_int LAPACKE_stgevc_work (int char char lapack_logical* lapack_int float* lapack_int float* lapack_int float* lapack_int float* lapack_int lapack_int lapack_int* float* ))
  (define-c-function lapack_int LAPACKE_stgexc_work (int lapack_logical lapack_logical lapack_int float* lapack_int float* lapack_int float* lapack_int float* lapack_int lapack_int* lapack_int* float* lapack_int ))
  (define-c-function lapack_int LAPACKE_stgsen_work (int lapack_int lapack_logical lapack_logical lapack_logical* lapack_int float* lapack_int float* lapack_int float* float* float* float* lapack_int float* lapack_int lapack_int* float* float* float* float* lapack_int lapack_int* lapack_int ))
  (define-c-function lapack_int LAPACKE_stgsja_work (int char char char lapack_int lapack_int lapack_int lapack_int lapack_int float* lapack_int float* lapack_int float float float* float* float* lapack_int float* lapack_int float* lapack_int float* lapack_int* ))
  (define-c-function lapack_int LAPACKE_stgsna_work (int char char lapack_logical* lapack_int float* lapack_int float* lapack_int float* lapack_int float* lapack_int float* float* lapack_int lapack_int* float* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_stgsyl_work (int char lapack_int lapack_int lapack_int float* lapack_int float* lapack_int float* lapack_int float* lapack_int float* lapack_int float* lapack_int float* float* float* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_stpcon_work (int char char char lapack_int float* float* float* lapack_int* ))
  (define-c-function lapack_int LAPACKE_stprfs_work (int char char char lapack_int lapack_int float* float* lapack_int float* lapack_int float* float* float* lapack_int* ))
  (define-c-function lapack_int LAPACKE_stptri_work (int char char lapack_int float* ))
  (define-c-function lapack_int LAPACKE_stptrs_work (int char char char lapack_int lapack_int float* float* lapack_int ))
  (define-c-function lapack_int LAPACKE_stpttf_work (int char char lapack_int float* float* ))
  (define-c-function lapack_int LAPACKE_stpttr_work (int char lapack_int float* float* lapack_int ))
  (define-c-function lapack_int LAPACKE_strcon_work (int char char char lapack_int float* lapack_int float* float* lapack_int* ))
  (define-c-function lapack_int LAPACKE_strevc_work (int char char lapack_logical* lapack_int float* lapack_int float* lapack_int float* lapack_int lapack_int lapack_int* float* ))
  (define-c-function lapack_int LAPACKE_strexc_work (int char lapack_int float* lapack_int float* lapack_int lapack_int* lapack_int* float* ))
  (define-c-function lapack_int LAPACKE_strrfs_work (int char char char lapack_int lapack_int float* lapack_int float* lapack_int float* lapack_int float* float* float* lapack_int* ))
  (define-c-function lapack_int LAPACKE_strsen_work (int char char lapack_logical* lapack_int float* lapack_int float* lapack_int float* float* lapack_int* float* float* float* lapack_int lapack_int* lapack_int ))
  (define-c-function lapack_int LAPACKE_strsna_work (int char char lapack_logical* lapack_int float* lapack_int float* lapack_int float* lapack_int float* float* lapack_int lapack_int* float* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_strsyl_work (int char char lapack_int lapack_int lapack_int float* lapack_int float* lapack_int float* lapack_int float* ))
  (define-c-function lapack_int LAPACKE_strtri_work (int char char lapack_int float* lapack_int ))
  (define-c-function lapack_int LAPACKE_strtrs_work (int char char char lapack_int lapack_int float* lapack_int float* lapack_int ))
  (define-c-function lapack_int LAPACKE_strttf_work (int char char lapack_int float* lapack_int float* ))
  (define-c-function lapack_int LAPACKE_strttp_work (int char lapack_int float* lapack_int float* ))
  (define-c-function lapack_int LAPACKE_stzrzf_work (int lapack_int lapack_int float* lapack_int float* float* lapack_int ))
  (define-c-function lapack_int LAPACKE_slagsy (int lapack_int lapack_int float* float* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_slapmr (int lapack_logical lapack_int lapack_int float* lapack_int lapack_int* ))
  (define-c-function float LAPACKE_slapy2 (float float ))
  (define-c-function float LAPACKE_slapy3 (float float float ))
  (define-c-function lapack_int LAPACKE_slartgp (float float float* float* float* ))
  (define-c-function lapack_int LAPACKE_slartgs (float float float float* float* ))
  (define-c-function lapack_int LAPACKE_sbbcsd (int char char char char char lapack_int lapack_int lapack_int float* float* float* lapack_int float* lapack_int float* lapack_int float* lapack_int float* float* float* float* float* float* float* float* ))
  (define-c-function lapack_int LAPACKE_sbbcsd_work (int char char char char char lapack_int lapack_int lapack_int float* float* float* lapack_int float* lapack_int float* lapack_int float* lapack_int float* float* float* float* float* float* float* float* float* lapack_int ))
  (define-c-function lapack_int LAPACKE_sorbdb (int char char lapack_int lapack_int lapack_int float* lapack_int float* lapack_int float* lapack_int float* lapack_int float* float* float* float* float* float* ))
  (define-c-function lapack_int LAPACKE_sorbdb_work (int char char lapack_int lapack_int lapack_int float* lapack_int float* lapack_int float* lapack_int float* lapack_int float* float* float* float* float* float* float* lapack_int ))
  (define-c-function lapack_int LAPACKE_sorcsd (int char char char char char char lapack_int lapack_int lapack_int float* lapack_int float* lapack_int float* lapack_int float* lapack_int float* float* lapack_int float* lapack_int float* lapack_int float* lapack_int ))
  (define-c-function lapack_int LAPACKE_sorcsd_work (int char char char char char char lapack_int lapack_int lapack_int float* lapack_int float* lapack_int float* lapack_int float* lapack_int float* float* lapack_int float* lapack_int float* lapack_int float* lapack_int float* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_ssyconv (int char char lapack_int float* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_ssyconv_work (int char char lapack_int float* lapack_int lapack_int* float* ))
  (define-c-function lapack_int LAPACKE_ssyswapr (int char lapack_int float* lapack_int lapack_int ))
  (define-c-function lapack_int LAPACKE_ssyswapr_work (int char lapack_int float* lapack_int lapack_int ))
  (define-c-function lapack_int LAPACKE_ssytri2 (int char lapack_int float* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_ssytri2_work (int char lapack_int float* lapack_int lapack_int* lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_ssytrs2 (int char lapack_int lapack_int float* lapack_int lapack_int* float* lapack_int ))
  (define-c-function lapack_int LAPACKE_ssytrs2_work (int char lapack_int lapack_int float* lapack_int lapack_int* float* lapack_int float* ))
  (define-c-function lapack_int LAPACKE_sgemqrt (int char char lapack_int lapack_int lapack_int lapack_int float* lapack_int float* lapack_int float* lapack_int ))
  #| end of library |#)

;;; end of file
