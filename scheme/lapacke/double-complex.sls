(library (lapacke double-complex (3 5 0))
  (export
    LAPACKE_zbdsqr
    LAPACKE_zgbbrd
    LAPACKE_zgbcon
    LAPACKE_zgbequ
    LAPACKE_zgbequb
    LAPACKE_zgbrfs
    LAPACKE_zgbsv
    LAPACKE_zgbtrf
    LAPACKE_zgbtrs
    LAPACKE_zgebak
    LAPACKE_zgebal
    LAPACKE_zgebrd
    LAPACKE_zgecon
    LAPACKE_zgeequ
    LAPACKE_zgeequb
    LAPACKE_zgees
    LAPACKE_zgeev
    LAPACKE_zgehrd
    LAPACKE_zgelq2
    LAPACKE_zgelqf
    LAPACKE_zgels
    LAPACKE_zgelsd
    LAPACKE_zgelss
    LAPACKE_zgelsy
    LAPACKE_zgeqlf
    LAPACKE_zgeqp3
    LAPACKE_zgeqpf
    LAPACKE_zgeqr2
    LAPACKE_zgeqrf
    LAPACKE_zgeqrfp
    LAPACKE_zgerfs
    LAPACKE_zgerqf
    LAPACKE_zgesdd
    LAPACKE_zgesv
    LAPACKE_zcgesv
    LAPACKE_zgesvd
    LAPACKE_zgetf2
    LAPACKE_zgetrf
    LAPACKE_zgetri
    LAPACKE_zgetrs
    LAPACKE_zggbak
    LAPACKE_zggbal
    LAPACKE_zgges
    LAPACKE_zggev
    LAPACKE_zggglm
    LAPACKE_zgghrd
    LAPACKE_zgglse
    LAPACKE_zggqrf
    LAPACKE_zggrqf
    LAPACKE_zggsvd
    LAPACKE_zggsvp
    LAPACKE_zgtcon
    LAPACKE_zgtrfs
    LAPACKE_zgtsv
    LAPACKE_zgttrf
    LAPACKE_zgttrs
    LAPACKE_zhbev
    LAPACKE_zhbevd
    LAPACKE_zhbgst
    LAPACKE_zhbgv
    LAPACKE_zhbgvd
    LAPACKE_zhbtrd
    LAPACKE_zhecon
    LAPACKE_zheequb
    LAPACKE_zheev
    LAPACKE_zheevd
    LAPACKE_zheevr
    LAPACKE_zhegst
    LAPACKE_zhegv
    LAPACKE_zhegvd
    LAPACKE_zherfs
    LAPACKE_zhesv
    LAPACKE_zhetrd
    LAPACKE_zhetrf
    LAPACKE_zhetri
    LAPACKE_zhetrs
    LAPACKE_zhfrk
    LAPACKE_zhgeqz
    LAPACKE_zhpcon
    LAPACKE_zhpev
    LAPACKE_zhpevd
    LAPACKE_zhpgst
    LAPACKE_zhpgv
    LAPACKE_zhpgvd
    LAPACKE_zhprfs
    LAPACKE_zhpsv
    LAPACKE_zhptrd
    LAPACKE_zhptrf
    LAPACKE_zhptri
    LAPACKE_zhptrs
    LAPACKE_zhsein
    LAPACKE_zhseqr
    LAPACKE_zlacgv
    LAPACKE_zlacn2
    LAPACKE_zlacpy
    LAPACKE_zlacp2
    LAPACKE_zlag2c
    LAPACKE_zlagge
    LAPACKE_zlange
    LAPACKE_zlanhe
    LAPACKE_zlansy
    LAPACKE_zlantr
    LAPACKE_zlarfb
    LAPACKE_zlarfg
    LAPACKE_zlarft
    LAPACKE_zlarnv
    LAPACKE_zlaset
    LAPACKE_zlaswp
    LAPACKE_zlatms
    LAPACKE_zlauum
    LAPACKE_zpbcon
    LAPACKE_zpbequ
    LAPACKE_zpbrfs
    LAPACKE_zpbstf
    LAPACKE_zpbsv
    LAPACKE_zpbtrf
    LAPACKE_zpbtrs
    LAPACKE_zpftrf
    LAPACKE_zpftri
    LAPACKE_zpftrs
    LAPACKE_zpocon
    LAPACKE_zpoequ
    LAPACKE_zpoequb
    LAPACKE_zporfs
    LAPACKE_zposv
    LAPACKE_zcposv
    LAPACKE_zpotrf
    LAPACKE_zpotri
    LAPACKE_zpotrs
    LAPACKE_zppcon
    LAPACKE_zppequ
    LAPACKE_zpprfs
    LAPACKE_zppsv
    LAPACKE_zpptrf
    LAPACKE_zpptri
    LAPACKE_zpptrs
    LAPACKE_zpstrf
    LAPACKE_zptcon
    LAPACKE_zpteqr
    LAPACKE_zptrfs
    LAPACKE_zptsv
    LAPACKE_zpttrf
    LAPACKE_zpttrs
    LAPACKE_zspcon
    LAPACKE_zsprfs
    LAPACKE_zspsv
    LAPACKE_zsptrf
    LAPACKE_zsptri
    LAPACKE_zsptrs
    LAPACKE_zstedc
    LAPACKE_zstegr
    LAPACKE_zstein
    LAPACKE_zstemr
    LAPACKE_zsteqr
    LAPACKE_zsycon
    LAPACKE_zsyequb
    LAPACKE_zsyrfs
    LAPACKE_zsysv
    LAPACKE_zsytrf
    LAPACKE_zsytri
    LAPACKE_zsytrs
    LAPACKE_ztbcon
    LAPACKE_ztbrfs
    LAPACKE_ztbtrs
    LAPACKE_ztfsm
    LAPACKE_ztftri
    LAPACKE_ztfttp
    LAPACKE_ztfttr
    LAPACKE_ztgevc
    LAPACKE_ztgexc
    LAPACKE_ztgsen
    LAPACKE_ztgsja
    LAPACKE_ztgsna
    LAPACKE_ztgsyl
    LAPACKE_ztpcon
    LAPACKE_ztprfs
    LAPACKE_ztptri
    LAPACKE_ztptrs
    LAPACKE_ztpttf
    LAPACKE_ztpttr
    LAPACKE_ztrcon
    LAPACKE_ztrevc
    LAPACKE_ztrexc
    LAPACKE_ztrrfs
    LAPACKE_ztrsen
    LAPACKE_ztrsna
    LAPACKE_ztrsyl
    LAPACKE_ztrtri
    LAPACKE_ztrtrs
    LAPACKE_ztrttf
    LAPACKE_ztrttp
    LAPACKE_ztzrzf
    LAPACKE_zungbr
    LAPACKE_zunghr
    LAPACKE_zunglq
    LAPACKE_zungql
    LAPACKE_zungqr
    LAPACKE_zungrq
    LAPACKE_zungtr
    LAPACKE_zunmbr
    LAPACKE_zunmhr
    LAPACKE_zunmlq
    LAPACKE_zunmql
    LAPACKE_zunmqr
    LAPACKE_zunmrq
    LAPACKE_zunmrz
    LAPACKE_zunmtr
    LAPACKE_zupgtr
    LAPACKE_zupmtr
    LAPACKE_zbdsqr_work
    LAPACKE_zgbbrd_work
    LAPACKE_zgbcon_work
    LAPACKE_zgbequ_work
    LAPACKE_zgbequb_work
    LAPACKE_zgbrfs_work
    LAPACKE_zgbsv_work
    LAPACKE_zgbtrf_work
    LAPACKE_zgbtrs_work
    LAPACKE_zgebak_work
    LAPACKE_zgebal_work
    LAPACKE_zgebrd_work
    LAPACKE_zgecon_work
    LAPACKE_zgeequ_work
    LAPACKE_zgeequb_work
    LAPACKE_zgees_work
    LAPACKE_zgeev_work
    LAPACKE_zgehrd_work
    LAPACKE_zgelq2_work
    LAPACKE_zgelqf_work
    LAPACKE_zgels_work
    LAPACKE_zgelsd_work
    LAPACKE_zgelss_work
    LAPACKE_zgelsy_work
    LAPACKE_zgeqlf_work
    LAPACKE_zgeqp3_work
    LAPACKE_zgeqpf_work
    LAPACKE_zgeqr2_work
    LAPACKE_zgeqrf_work
    LAPACKE_zgeqrfp_work
    LAPACKE_zgerfs_work
    LAPACKE_zgerqf_work
    LAPACKE_zgesdd_work
    LAPACKE_zgesv_work
    LAPACKE_zcgesv_work
    LAPACKE_zgesvd_work
    LAPACKE_zgetf2_work
    LAPACKE_zgetrf_work
    LAPACKE_zgetri_work
    LAPACKE_zgetrs_work
    LAPACKE_zggbak_work
    LAPACKE_zggbal_work
    LAPACKE_zgges_work
    LAPACKE_zggev_work
    LAPACKE_zggglm_work
    LAPACKE_zgghrd_work
    LAPACKE_zgglse_work
    LAPACKE_zggqrf_work
    LAPACKE_zggrqf_work
    LAPACKE_zggsvd_work
    LAPACKE_zggsvp_work
    LAPACKE_zgtcon_work
    LAPACKE_zgtrfs_work
    LAPACKE_zgtsv_work
    LAPACKE_zgttrf_work
    LAPACKE_zgttrs_work
    LAPACKE_zhbev_work
    LAPACKE_zhbevd_work
    LAPACKE_zhbgst_work
    LAPACKE_zhbgv_work
    LAPACKE_zhbgvd_work
    LAPACKE_zhbtrd_work
    LAPACKE_zhecon_work
    LAPACKE_zheequb_work
    LAPACKE_zheev_work
    LAPACKE_zheevd_work
    LAPACKE_zheevr_work
    LAPACKE_zhegst_work
    LAPACKE_zhegv_work
    LAPACKE_zhegvd_work
    LAPACKE_zherfs_work
    LAPACKE_zhesv_work
    LAPACKE_zhetrd_work
    LAPACKE_zhetrf_work
    LAPACKE_zhetri_work
    LAPACKE_zhetrs_work
    LAPACKE_zhfrk_work
    LAPACKE_zhgeqz_work
    LAPACKE_zhpcon_work
    LAPACKE_zhpev_work
    LAPACKE_zhpevd_work
    LAPACKE_zhpgst_work
    LAPACKE_zhpgv_work
    LAPACKE_zhpgvd_work
    LAPACKE_zhprfs_work
    LAPACKE_zhpsv_work
    LAPACKE_zhptrd_work
    LAPACKE_zhptrf_work
    LAPACKE_zhptri_work
    LAPACKE_zhptrs_work
    LAPACKE_zhsein_work
    LAPACKE_zhseqr_work
    LAPACKE_zlacgv_work
    LAPACKE_zlacn2_work
    LAPACKE_zlacpy_work
    LAPACKE_zlacp2_work
    LAPACKE_zlag2c_work
    LAPACKE_zlagge_work
    LAPACKE_zlaghe_work
    LAPACKE_zlagsy_work
    LAPACKE_zlapmr_work
    LAPACKE_zlange_work
    LAPACKE_zlanhe_work
    LAPACKE_zlansy_work
    LAPACKE_zlantr_work
    LAPACKE_zlarfb_work
    LAPACKE_zlarfg_work
    LAPACKE_zlarft_work
    LAPACKE_zlarnv_work
    LAPACKE_zlaset_work
    LAPACKE_zlaswp_work
    LAPACKE_zlatms_work
    LAPACKE_zlauum_work
    LAPACKE_zpbcon_work
    LAPACKE_zpbequ_work
    LAPACKE_zpbrfs_work
    LAPACKE_zpbstf_work
    LAPACKE_zpbsv_work
    LAPACKE_zpbtrf_work
    LAPACKE_zpbtrs_work
    LAPACKE_zpftrf_work
    LAPACKE_zpftri_work
    LAPACKE_zpftrs_work
    LAPACKE_zpocon_work
    LAPACKE_zpoequ_work
    LAPACKE_zpoequb_work
    LAPACKE_zporfs_work
    LAPACKE_zposv_work
    LAPACKE_zcposv_work
    LAPACKE_zpotrf_work
    LAPACKE_zpotri_work
    LAPACKE_zpotrs_work
    LAPACKE_zppcon_work
    LAPACKE_zppequ_work
    LAPACKE_zpprfs_work
    LAPACKE_zppsv_work
    LAPACKE_zpptrf_work
    LAPACKE_zpptri_work
    LAPACKE_zpptrs_work
    LAPACKE_zpstrf_work
    LAPACKE_zptcon_work
    LAPACKE_zpteqr_work
    LAPACKE_zptrfs_work
    LAPACKE_zptsv_work
    LAPACKE_zpttrf_work
    LAPACKE_zpttrs_work
    LAPACKE_zspcon_work
    LAPACKE_zsprfs_work
    LAPACKE_zspsv_work
    LAPACKE_zsptrf_work
    LAPACKE_zsptri_work
    LAPACKE_zsptrs_work
    LAPACKE_zstedc_work
    LAPACKE_zstegr_work
    LAPACKE_zstein_work
    LAPACKE_zstemr_work
    LAPACKE_zsteqr_work
    LAPACKE_zsycon_work
    LAPACKE_zsyequb_work
    LAPACKE_zsyrfs_work
    LAPACKE_zsysv_work
    LAPACKE_zsysv_rook_work
    LAPACKE_zsytrf_work
    LAPACKE_zsytri_work
    LAPACKE_zsytrs_work
    LAPACKE_ztbcon_work
    LAPACKE_ztbrfs_work
    LAPACKE_ztbtrs_work
    LAPACKE_ztfsm_work
    LAPACKE_ztftri_work
    LAPACKE_ztfttp_work
    LAPACKE_ztfttr_work
    LAPACKE_ztgevc_work
    LAPACKE_ztgexc_work
    LAPACKE_ztgsen_work
    LAPACKE_ztgsja_work
    LAPACKE_ztgsna_work
    LAPACKE_ztgsyl_work
    LAPACKE_ztpcon_work
    LAPACKE_ztprfs_work
    LAPACKE_ztptri_work
    LAPACKE_ztptrs_work
    LAPACKE_ztpttf_work
    LAPACKE_ztpttr_work
    LAPACKE_ztrcon_work
    LAPACKE_ztrevc_work
    LAPACKE_ztrexc_work
    LAPACKE_ztrrfs_work
    LAPACKE_ztrsen_work
    LAPACKE_ztrsna_work
    LAPACKE_ztrsyl_work
    LAPACKE_ztrtri_work
    LAPACKE_ztrtrs_work
    LAPACKE_ztrttf_work
    LAPACKE_ztrttp_work
    LAPACKE_ztzrzf_work
    LAPACKE_zungbr_work
    LAPACKE_zunghr_work
    LAPACKE_zunglq_work
    LAPACKE_zungql_work
    LAPACKE_zungqr_work
    LAPACKE_zungrq_work
    LAPACKE_zungtr_work
    LAPACKE_zunmbr_work
    LAPACKE_zunmhr_work
    LAPACKE_zunmlq_work
    LAPACKE_zunmql_work
    LAPACKE_zunmqr_work
    LAPACKE_zunmrq_work
    LAPACKE_zunmrz_work
    LAPACKE_zunmtr_work
    LAPACKE_zupgtr_work
    LAPACKE_zupmtr_work
    LAPACKE_zlaghe
    LAPACKE_zlagsy
    LAPACKE_zlapmr
    LAPACKE_zbbcsd
    LAPACKE_zbbcsd_work
    LAPACKE_zheswapr
    LAPACKE_zheswapr_work
    LAPACKE_zhetri2
    LAPACKE_zhetri2_work
    LAPACKE_zhetrs2
    LAPACKE_zhetrs2_work
    LAPACKE_zsyconv
    LAPACKE_zsyconv_work
    LAPACKE_zsyswapr
    LAPACKE_zsyswapr_work
    LAPACKE_zsytri2
    LAPACKE_zsytri2_work
    LAPACKE_zsytrs2
    LAPACKE_zsytrs2_work
    LAPACKE_zunbdb
    LAPACKE_zunbdb_work
    LAPACKE_zuncsd
    LAPACKE_zuncsd_work)
  (import (rnrs (6)) (lapacke compat))
  (define-shared-object "liblapacke.so")
  (define-c-function lapack_int LAPACKE_zbdsqr (int char lapack_int lapack_int lapack_int lapack_int double* double* lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zgbbrd (int char lapack_int lapack_int lapack_int lapack_int lapack_int lapack_complex_double* lapack_int double* double* lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zgbcon (int char lapack_int lapack_int lapack_int lapack_complex_double* lapack_int lapack_int* double double* ))
  (define-c-function lapack_int LAPACKE_zgbequ (int lapack_int lapack_int lapack_int lapack_int lapack_complex_double* lapack_int double* double* double* double* double* ))
  (define-c-function lapack_int LAPACKE_zgbequb (int lapack_int lapack_int lapack_int lapack_int lapack_complex_double* lapack_int double* double* double* double* double* ))
  (define-c-function lapack_int LAPACKE_zgbrfs (int char lapack_int lapack_int lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_int* lapack_complex_double* lapack_int lapack_complex_double* lapack_int double* double* ))
  (define-c-function lapack_int LAPACKE_zgbsv (int lapack_int lapack_int lapack_int lapack_int lapack_complex_double* lapack_int lapack_int* lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zgbtrf (int lapack_int lapack_int lapack_int lapack_int lapack_complex_double* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_zgbtrs (int char lapack_int lapack_int lapack_int lapack_int lapack_complex_double* lapack_int lapack_int* lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zgebak (int char char lapack_int lapack_int lapack_int double* lapack_int lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zgebal (int char lapack_int lapack_complex_double* lapack_int lapack_int* lapack_int* double* ))
  (define-c-function lapack_int LAPACKE_zgebrd (int lapack_int lapack_int lapack_complex_double* lapack_int double* double* lapack_complex_double* lapack_complex_double* ))
  (define-c-function lapack_int LAPACKE_zgecon (int char lapack_int lapack_complex_double* lapack_int double double* ))
  (define-c-function lapack_int LAPACKE_zgeequ (int lapack_int lapack_int lapack_complex_double* lapack_int double* double* double* double* double* ))
  (define-c-function lapack_int LAPACKE_zgeequb (int lapack_int lapack_int lapack_complex_double* lapack_int double* double* double* double* double* ))
  (define-c-function lapack_int LAPACKE_zgees (int char char LAPACK_Z_SELECT1 lapack_int lapack_complex_double* lapack_int lapack_int* lapack_complex_double* lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zgeev (int char char lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_complex_double* lapack_int lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zgehrd (int lapack_int lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* ))
  (define-c-function lapack_int LAPACKE_zgelq2 (int lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* ))
  (define-c-function lapack_int LAPACKE_zgelqf (int lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* ))
  (define-c-function lapack_int LAPACKE_zgels (int char lapack_int lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zgelsd (int lapack_int lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int double* double lapack_int* ))
  (define-c-function lapack_int LAPACKE_zgelss (int lapack_int lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int double* double lapack_int* ))
  (define-c-function lapack_int LAPACKE_zgelsy (int lapack_int lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_int* double lapack_int* ))
  (define-c-function lapack_int LAPACKE_zgeqlf (int lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* ))
  (define-c-function lapack_int LAPACKE_zgeqp3 (int lapack_int lapack_int lapack_complex_double* lapack_int lapack_int* lapack_complex_double* ))
  (define-c-function lapack_int LAPACKE_zgeqpf (int lapack_int lapack_int lapack_complex_double* lapack_int lapack_int* lapack_complex_double* ))
  (define-c-function lapack_int LAPACKE_zgeqr2 (int lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* ))
  (define-c-function lapack_int LAPACKE_zgeqrf (int lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* ))
  (define-c-function lapack_int LAPACKE_zgeqrfp (int lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* ))
  (define-c-function lapack_int LAPACKE_zgerfs (int char lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_int* lapack_complex_double* lapack_int lapack_complex_double* lapack_int double* double* ))
  (define-c-function lapack_int LAPACKE_zgerqf (int lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* ))
  (define-c-function lapack_int LAPACKE_zgesdd (int char lapack_int lapack_int lapack_complex_double* lapack_int double* lapack_complex_double* lapack_int lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zgesv (int lapack_int lapack_int lapack_complex_double* lapack_int lapack_int* lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zcgesv (int lapack_int lapack_int lapack_complex_double* lapack_int lapack_int* lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_zgesvd (int char char lapack_int lapack_int lapack_complex_double* lapack_int double* lapack_complex_double* lapack_int lapack_complex_double* lapack_int double* ))
  (define-c-function lapack_int LAPACKE_zgetf2 (int lapack_int lapack_int lapack_complex_double* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_zgetrf (int lapack_int lapack_int lapack_complex_double* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_zgetri (int lapack_int lapack_complex_double* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_zgetrs (int char lapack_int lapack_int lapack_complex_double* lapack_int lapack_int* lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zggbak (int char char lapack_int lapack_int lapack_int double* double* lapack_int lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zggbal (int char lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_int* lapack_int* double* double* ))
  (define-c-function lapack_int LAPACKE_zgges (int char char char LAPACK_Z_SELECT2 lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_int* lapack_complex_double* lapack_complex_double* lapack_complex_double* lapack_int lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zggev (int char char lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_complex_double* lapack_complex_double* lapack_int lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zggglm (int lapack_int lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_complex_double* lapack_complex_double* ))
  (define-c-function lapack_int LAPACKE_zgghrd (int char char lapack_int lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zgglse (int lapack_int lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_complex_double* lapack_complex_double* ))
  (define-c-function lapack_int LAPACKE_zggqrf (int lapack_int lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_complex_double* lapack_int lapack_complex_double* ))
  (define-c-function lapack_int LAPACKE_zggrqf (int lapack_int lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_complex_double* lapack_int lapack_complex_double* ))
  (define-c-function lapack_int LAPACKE_zggsvd (int char char char lapack_int lapack_int lapack_int lapack_int* lapack_int* lapack_complex_double* lapack_int lapack_complex_double* lapack_int double* double* lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_zggsvp (int char char char lapack_int lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int double double lapack_int* lapack_int* lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zgtcon (char lapack_int lapack_complex_double* lapack_complex_double* lapack_complex_double* lapack_complex_double* lapack_int* double double* ))
  (define-c-function lapack_int LAPACKE_zgtrfs (int char lapack_int lapack_int lapack_complex_double* lapack_complex_double* lapack_complex_double* lapack_complex_double* lapack_complex_double* lapack_complex_double* lapack_complex_double* lapack_int* lapack_complex_double* lapack_int lapack_complex_double* lapack_int double* double* ))
  (define-c-function lapack_int LAPACKE_zgtsv (int lapack_int lapack_int lapack_complex_double* lapack_complex_double* lapack_complex_double* lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zgttrf (lapack_int lapack_complex_double* lapack_complex_double* lapack_complex_double* lapack_complex_double* lapack_int* ))
  (define-c-function lapack_int LAPACKE_zgttrs (int char lapack_int lapack_int lapack_complex_double* lapack_complex_double* lapack_complex_double* lapack_complex_double* lapack_int* lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zhbev (int char char lapack_int lapack_int lapack_complex_double* lapack_int double* lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zhbevd (int char char lapack_int lapack_int lapack_complex_double* lapack_int double* lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zhbgst (int char char lapack_int lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zhbgv (int char char lapack_int lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int double* lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zhbgvd (int char char lapack_int lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int double* lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zhbtrd (int char char lapack_int lapack_int lapack_complex_double* lapack_int double* double* lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zhecon (int char lapack_int lapack_complex_double* lapack_int lapack_int* double double* ))
  (define-c-function lapack_int LAPACKE_zheequb (int char lapack_int lapack_complex_double* lapack_int double* double* double* ))
  (define-c-function lapack_int LAPACKE_zheev (int char char lapack_int lapack_complex_double* lapack_int double* ))
  (define-c-function lapack_int LAPACKE_zheevd (int char char lapack_int lapack_complex_double* lapack_int double* ))
  (define-c-function lapack_int LAPACKE_zheevr (int char char char lapack_int lapack_complex_double* lapack_int double double lapack_int lapack_int double lapack_int* double* lapack_complex_double* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_zhegst (int lapack_int char lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zhegv (int lapack_int char char lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int double* ))
  (define-c-function lapack_int LAPACKE_zhegvd (int lapack_int char char lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int double* ))
  (define-c-function lapack_int LAPACKE_zherfs (int char lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_int* lapack_complex_double* lapack_int lapack_complex_double* lapack_int double* double* ))
  (define-c-function lapack_int LAPACKE_zhesv (int char lapack_int lapack_int lapack_complex_double* lapack_int lapack_int* lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zhetrd (int char lapack_int lapack_complex_double* lapack_int double* double* lapack_complex_double* ))
  (define-c-function lapack_int LAPACKE_zhetrf (int char lapack_int lapack_complex_double* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_zhetri (int char lapack_int lapack_complex_double* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_zhetrs (int char lapack_int lapack_int lapack_complex_double* lapack_int lapack_int* lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zhfrk (int char char char lapack_int lapack_int double lapack_complex_double* lapack_int double lapack_complex_double* ))
  (define-c-function lapack_int LAPACKE_zhgeqz (int char char char lapack_int lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_complex_double* lapack_complex_double* lapack_int lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zhpcon (int char lapack_int lapack_complex_double* lapack_int* double double* ))
  (define-c-function lapack_int LAPACKE_zhpev (int char char lapack_int lapack_complex_double* double* lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zhpevd (int char char lapack_int lapack_complex_double* double* lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zhpgst (int lapack_int char lapack_int lapack_complex_double* lapack_complex_double* ))
  (define-c-function lapack_int LAPACKE_zhpgv (int lapack_int char char lapack_int lapack_complex_double* lapack_complex_double* double* lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zhpgvd (int lapack_int char char lapack_int lapack_complex_double* lapack_complex_double* double* lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zhprfs (int char lapack_int lapack_int lapack_complex_double* lapack_complex_double* lapack_int* lapack_complex_double* lapack_int lapack_complex_double* lapack_int double* double* ))
  (define-c-function lapack_int LAPACKE_zhpsv (int char lapack_int lapack_int lapack_complex_double* lapack_int* lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zhptrd (int char lapack_int lapack_complex_double* double* double* lapack_complex_double* ))
  (define-c-function lapack_int LAPACKE_zhptrf (int char lapack_int lapack_complex_double* lapack_int* ))
  (define-c-function lapack_int LAPACKE_zhptri (int char lapack_int lapack_complex_double* lapack_int* ))
  (define-c-function lapack_int LAPACKE_zhptrs (int char lapack_int lapack_int lapack_complex_double* lapack_int* lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zhsein (int char char char lapack_logical* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_int lapack_int* lapack_int* lapack_int* ))
  (define-c-function lapack_int LAPACKE_zhseqr (int char char lapack_int lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zlacgv (lapack_int lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zlacn2 (lapack_int lapack_complex_double* lapack_complex_double* double* lapack_int* lapack_int* ))
  (define-c-function lapack_int LAPACKE_zlacpy (int char lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zlacp2 (int char lapack_int lapack_int double* lapack_int lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zlag2c (int lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_zlagge (int lapack_int lapack_int lapack_int lapack_int double* lapack_complex_double* lapack_int lapack_int* ))
  (define-c-function double LAPACKE_zlange (int char lapack_int lapack_int lapack_complex_double* lapack_int ))
  (define-c-function double LAPACKE_zlanhe (int char char lapack_int lapack_complex_double* lapack_int ))
  (define-c-function double LAPACKE_zlansy (int char char lapack_int lapack_complex_double* lapack_int ))
  (define-c-function double LAPACKE_zlantr (int char char char lapack_int lapack_int lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zlarfb (int char char char char lapack_int lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zlarfg (lapack_int lapack_complex_double* lapack_complex_double* lapack_int lapack_complex_double* ))
  (define-c-function lapack_int LAPACKE_zlarft (int char char lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zlarnv (lapack_int lapack_int* lapack_int lapack_complex_double* ))
  (define-c-function lapack_int LAPACKE_zlaset (int char lapack_int lapack_int lapack_complex_double lapack_complex_double lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zlaswp (int lapack_int lapack_complex_double* lapack_int lapack_int lapack_int lapack_int* lapack_int ))
  (define-c-function lapack_int LAPACKE_zlatms (int lapack_int lapack_int char lapack_int* char double* lapack_int double double lapack_int lapack_int char lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zlauum (int char lapack_int lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zpbcon (int char lapack_int lapack_int lapack_complex_double* lapack_int double double* ))
  (define-c-function lapack_int LAPACKE_zpbequ (int char lapack_int lapack_int lapack_complex_double* lapack_int double* double* double* ))
  (define-c-function lapack_int LAPACKE_zpbrfs (int char lapack_int lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int double* double* ))
  (define-c-function lapack_int LAPACKE_zpbstf (int char lapack_int lapack_int lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zpbsv (int char lapack_int lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zpbtrf (int char lapack_int lapack_int lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zpbtrs (int char lapack_int lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zpftrf (int char char lapack_int lapack_complex_double* ))
  (define-c-function lapack_int LAPACKE_zpftri (int char char lapack_int lapack_complex_double* ))
  (define-c-function lapack_int LAPACKE_zpftrs (int char char lapack_int lapack_int lapack_complex_double* lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zpocon (int char lapack_int lapack_complex_double* lapack_int double double* ))
  (define-c-function lapack_int LAPACKE_zpoequ (int lapack_int lapack_complex_double* lapack_int double* double* double* ))
  (define-c-function lapack_int LAPACKE_zpoequb (int lapack_int lapack_complex_double* lapack_int double* double* double* ))
  (define-c-function lapack_int LAPACKE_zporfs (int char lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int double* double* ))
  (define-c-function lapack_int LAPACKE_zposv (int char lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zcposv (int char lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_zpotrf (int char lapack_int lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zpotri (int char lapack_int lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zpotrs (int char lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zppcon (int char lapack_int lapack_complex_double* double double* ))
  (define-c-function lapack_int LAPACKE_zppequ (int char lapack_int lapack_complex_double* double* double* double* ))
  (define-c-function lapack_int LAPACKE_zpprfs (int char lapack_int lapack_int lapack_complex_double* lapack_complex_double* lapack_complex_double* lapack_int lapack_complex_double* lapack_int double* double* ))
  (define-c-function lapack_int LAPACKE_zppsv (int char lapack_int lapack_int lapack_complex_double* lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zpptrf (int char lapack_int lapack_complex_double* ))
  (define-c-function lapack_int LAPACKE_zpptri (int char lapack_int lapack_complex_double* ))
  (define-c-function lapack_int LAPACKE_zpptrs (int char lapack_int lapack_int lapack_complex_double* lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zpstrf (int char lapack_int lapack_complex_double* lapack_int lapack_int* lapack_int* double ))
  (define-c-function lapack_int LAPACKE_zptcon (lapack_int double* lapack_complex_double* double double* ))
  (define-c-function lapack_int LAPACKE_zpteqr (int char lapack_int double* double* lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zptrfs (int char lapack_int lapack_int double* lapack_complex_double* double* lapack_complex_double* lapack_complex_double* lapack_int lapack_complex_double* lapack_int double* double* ))
  (define-c-function lapack_int LAPACKE_zptsv (int lapack_int lapack_int double* lapack_complex_double* lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zpttrf (lapack_int double* lapack_complex_double* ))
  (define-c-function lapack_int LAPACKE_zpttrs (int char lapack_int lapack_int double* lapack_complex_double* lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zspcon (int char lapack_int lapack_complex_double* lapack_int* double double* ))
  (define-c-function lapack_int LAPACKE_zsprfs (int char lapack_int lapack_int lapack_complex_double* lapack_complex_double* lapack_int* lapack_complex_double* lapack_int lapack_complex_double* lapack_int double* double* ))
  (define-c-function lapack_int LAPACKE_zspsv (int char lapack_int lapack_int lapack_complex_double* lapack_int* lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zsptrf (int char lapack_int lapack_complex_double* lapack_int* ))
  (define-c-function lapack_int LAPACKE_zsptri (int char lapack_int lapack_complex_double* lapack_int* ))
  (define-c-function lapack_int LAPACKE_zsptrs (int char lapack_int lapack_int lapack_complex_double* lapack_int* lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zstedc (int char lapack_int double* double* lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zstegr (int char char lapack_int double* double* double double lapack_int lapack_int double lapack_int* double* lapack_complex_double* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_zstein (int lapack_int double* double* lapack_int double* lapack_int* lapack_int* lapack_complex_double* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_zstemr (int char char lapack_int double* double* double double lapack_int lapack_int lapack_int* double* lapack_complex_double* lapack_int lapack_int lapack_int* lapack_logical* ))
  (define-c-function lapack_int LAPACKE_zsteqr (int char lapack_int double* double* lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zsycon (int char lapack_int lapack_complex_double* lapack_int lapack_int* double double* ))
  (define-c-function lapack_int LAPACKE_zsyequb (int char lapack_int lapack_complex_double* lapack_int double* double* double* ))
  (define-c-function lapack_int LAPACKE_zsyrfs (int char lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_int* lapack_complex_double* lapack_int lapack_complex_double* lapack_int double* double* ))
  (define-c-function lapack_int LAPACKE_zsysv (int char lapack_int lapack_int lapack_complex_double* lapack_int lapack_int* lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zsytrf (int char lapack_int lapack_complex_double* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_zsytri (int char lapack_int lapack_complex_double* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_zsytrs (int char lapack_int lapack_int lapack_complex_double* lapack_int lapack_int* lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_ztbcon (int char char char lapack_int lapack_int lapack_complex_double* lapack_int double* ))
  (define-c-function lapack_int LAPACKE_ztbrfs (int char char char lapack_int lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int double* double* ))
  (define-c-function lapack_int LAPACKE_ztbtrs (int char char char lapack_int lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_ztfsm (int char char char char char lapack_int lapack_int lapack_complex_double lapack_complex_double* lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_ztftri (int char char char lapack_int lapack_complex_double* ))
  (define-c-function lapack_int LAPACKE_ztfttp (int char char lapack_int lapack_complex_double* lapack_complex_double* ))
  (define-c-function lapack_int LAPACKE_ztfttr (int char char lapack_int lapack_complex_double* lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_ztgevc (int char char lapack_logical* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_ztgexc (int lapack_logical lapack_logical lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_int lapack_int ))
  (define-c-function lapack_int LAPACKE_ztgsen (int lapack_int lapack_logical lapack_logical lapack_logical* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_complex_double* lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_int* double* double* double* ))
  (define-c-function lapack_int LAPACKE_ztgsja (int char char char lapack_int lapack_int lapack_int lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int double double double* double* lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_ztgsna (int char char lapack_logical* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int double* double* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_ztgsyl (int char lapack_int lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int double* double* ))
  (define-c-function lapack_int LAPACKE_ztpcon (int char char char lapack_int lapack_complex_double* double* ))
  (define-c-function lapack_int LAPACKE_ztprfs (int char char char lapack_int lapack_int lapack_complex_double* lapack_complex_double* lapack_int lapack_complex_double* lapack_int double* double* ))
  (define-c-function lapack_int LAPACKE_ztptri (int char char lapack_int lapack_complex_double* ))
  (define-c-function lapack_int LAPACKE_ztptrs (int char char char lapack_int lapack_int lapack_complex_double* lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_ztpttf (int char char lapack_int lapack_complex_double* lapack_complex_double* ))
  (define-c-function lapack_int LAPACKE_ztpttr (int char lapack_int lapack_complex_double* lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_ztrcon (int char char char lapack_int lapack_complex_double* lapack_int double* ))
  (define-c-function lapack_int LAPACKE_ztrevc (int char char lapack_logical* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_ztrexc (int char lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_int lapack_int ))
  (define-c-function lapack_int LAPACKE_ztrrfs (int char char char lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int double* double* ))
  (define-c-function lapack_int LAPACKE_ztrsen (int char char lapack_logical* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int* double* double* ))
  (define-c-function lapack_int LAPACKE_ztrsna (int char char lapack_logical* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int double* double* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_ztrsyl (int char char lapack_int lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int double* ))
  (define-c-function lapack_int LAPACKE_ztrtri (int char char lapack_int lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_ztrtrs (int char char char lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_ztrttf (int char char lapack_int lapack_complex_double* lapack_int lapack_complex_double* ))
  (define-c-function lapack_int LAPACKE_ztrttp (int char lapack_int lapack_complex_double* lapack_int lapack_complex_double* ))
  (define-c-function lapack_int LAPACKE_ztzrzf (int lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* ))
  (define-c-function lapack_int LAPACKE_zungbr (int char lapack_int lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* ))
  (define-c-function lapack_int LAPACKE_zunghr (int lapack_int lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* ))
  (define-c-function lapack_int LAPACKE_zunglq (int lapack_int lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* ))
  (define-c-function lapack_int LAPACKE_zungql (int lapack_int lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* ))
  (define-c-function lapack_int LAPACKE_zungqr (int lapack_int lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* ))
  (define-c-function lapack_int LAPACKE_zungrq (int lapack_int lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* ))
  (define-c-function lapack_int LAPACKE_zungtr (int char lapack_int lapack_complex_double* lapack_int lapack_complex_double* ))
  (define-c-function lapack_int LAPACKE_zunmbr (int char char char lapack_int lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zunmhr (int char char lapack_int lapack_int lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zunmlq (int char char lapack_int lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zunmql (int char char lapack_int lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zunmqr (int char char lapack_int lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zunmrq (int char char lapack_int lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zunmrz (int char char lapack_int lapack_int lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zunmtr (int char char char lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zupgtr (int char lapack_int lapack_complex_double* lapack_complex_double* lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zupmtr (int char char char lapack_int lapack_int lapack_complex_double* lapack_complex_double* lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zbdsqr_work (int char lapack_int lapack_int lapack_int lapack_int double* double* lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int double* ))
  (define-c-function lapack_int LAPACKE_zgbbrd_work (int char lapack_int lapack_int lapack_int lapack_int lapack_int lapack_complex_double* lapack_int double* double* lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_complex_double* double* ))
  (define-c-function lapack_int LAPACKE_zgbcon_work (int char lapack_int lapack_int lapack_int lapack_complex_double* lapack_int lapack_int* double double* lapack_complex_double* double* ))
  (define-c-function lapack_int LAPACKE_zgbequ_work (int lapack_int lapack_int lapack_int lapack_int lapack_complex_double* lapack_int double* double* double* double* double* ))
  (define-c-function lapack_int LAPACKE_zgbequb_work (int lapack_int lapack_int lapack_int lapack_int lapack_complex_double* lapack_int double* double* double* double* double* ))
  (define-c-function lapack_int LAPACKE_zgbrfs_work (int char lapack_int lapack_int lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_int* lapack_complex_double* lapack_int lapack_complex_double* lapack_int double* double* lapack_complex_double* double* ))
  (define-c-function lapack_int LAPACKE_zgbsv_work (int lapack_int lapack_int lapack_int lapack_int lapack_complex_double* lapack_int lapack_int* lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zgbtrf_work (int lapack_int lapack_int lapack_int lapack_int lapack_complex_double* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_zgbtrs_work (int char lapack_int lapack_int lapack_int lapack_int lapack_complex_double* lapack_int lapack_int* lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zgebak_work (int char char lapack_int lapack_int lapack_int double* lapack_int lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zgebal_work (int char lapack_int lapack_complex_double* lapack_int lapack_int* lapack_int* double* ))
  (define-c-function lapack_int LAPACKE_zgebrd_work (int lapack_int lapack_int lapack_complex_double* lapack_int double* double* lapack_complex_double* lapack_complex_double* lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zgecon_work (int char lapack_int lapack_complex_double* lapack_int double double* lapack_complex_double* double* ))
  (define-c-function lapack_int LAPACKE_zgeequ_work (int lapack_int lapack_int lapack_complex_double* lapack_int double* double* double* double* double* ))
  (define-c-function lapack_int LAPACKE_zgeequb_work (int lapack_int lapack_int lapack_complex_double* lapack_int double* double* double* double* double* ))
  (define-c-function lapack_int LAPACKE_zgees_work (int char char LAPACK_Z_SELECT1 lapack_int lapack_complex_double* lapack_int lapack_int* lapack_complex_double* lapack_complex_double* lapack_int lapack_complex_double* lapack_int double* lapack_logical* ))
  (define-c-function lapack_int LAPACKE_zgeev_work (int char char lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int double* ))
  (define-c-function lapack_int LAPACKE_zgehrd_work (int lapack_int lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zgelq2_work (int lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_complex_double* ))
  (define-c-function lapack_int LAPACKE_zgelqf_work (int lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zgels_work (int char lapack_int lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zgelsd_work (int lapack_int lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int double* double lapack_int* lapack_complex_double* lapack_int double* lapack_int* ))
  (define-c-function lapack_int LAPACKE_zgelss_work (int lapack_int lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int double* double lapack_int* lapack_complex_double* lapack_int double* ))
  (define-c-function lapack_int LAPACKE_zgelsy_work (int lapack_int lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_int* double lapack_int* lapack_complex_double* lapack_int double* ))
  (define-c-function lapack_int LAPACKE_zgeqlf_work (int lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zgeqp3_work (int lapack_int lapack_int lapack_complex_double* lapack_int lapack_int* lapack_complex_double* lapack_complex_double* lapack_int double* ))
  (define-c-function lapack_int LAPACKE_zgeqpf_work (int lapack_int lapack_int lapack_complex_double* lapack_int lapack_int* lapack_complex_double* lapack_complex_double* double* ))
  (define-c-function lapack_int LAPACKE_zgeqr2_work (int lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_complex_double* ))
  (define-c-function lapack_int LAPACKE_zgeqrf_work (int lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zgeqrfp_work (int lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zgerfs_work (int char lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_int* lapack_complex_double* lapack_int lapack_complex_double* lapack_int double* double* lapack_complex_double* double* ))
  (define-c-function lapack_int LAPACKE_zgerqf_work (int lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zgesdd_work (int char lapack_int lapack_int lapack_complex_double* lapack_int double* lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int double* lapack_int* ))
  (define-c-function lapack_int LAPACKE_zgesv_work (int lapack_int lapack_int lapack_complex_double* lapack_int lapack_int* lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zcgesv_work (int lapack_int lapack_int lapack_complex_double* lapack_int lapack_int* lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_complex_float* double* lapack_int* ))
  (define-c-function lapack_int LAPACKE_zgesvd_work (int char char lapack_int lapack_int lapack_complex_double* lapack_int double* lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int double* ))
  (define-c-function lapack_int LAPACKE_zgetf2_work (int lapack_int lapack_int lapack_complex_double* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_zgetrf_work (int lapack_int lapack_int lapack_complex_double* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_zgetri_work (int lapack_int lapack_complex_double* lapack_int lapack_int* lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zgetrs_work (int char lapack_int lapack_int lapack_complex_double* lapack_int lapack_int* lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zggbak_work (int char char lapack_int lapack_int lapack_int double* double* lapack_int lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zggbal_work (int char lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_int* lapack_int* double* double* double* ))
  (define-c-function lapack_int LAPACKE_zgges_work (int char char char LAPACK_Z_SELECT2 lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_int* lapack_complex_double* lapack_complex_double* lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int double* lapack_logical* ))
  (define-c-function lapack_int LAPACKE_zggev_work (int char char lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_complex_double* lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int double* ))
  (define-c-function lapack_int LAPACKE_zggglm_work (int lapack_int lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_complex_double* lapack_complex_double* lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zgghrd_work (int char char lapack_int lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zgglse_work (int lapack_int lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_complex_double* lapack_complex_double* lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zggqrf_work (int lapack_int lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_complex_double* lapack_int lapack_complex_double* lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zggrqf_work (int lapack_int lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_complex_double* lapack_int lapack_complex_double* lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zggsvd_work (int char char char lapack_int lapack_int lapack_int lapack_int* lapack_int* lapack_complex_double* lapack_int lapack_complex_double* lapack_int double* double* lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_complex_double* double* lapack_int* ))
  (define-c-function lapack_int LAPACKE_zggsvp_work (int char char char lapack_int lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int double double lapack_int* lapack_int* lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_int* double* lapack_complex_double* lapack_complex_double* ))
  (define-c-function lapack_int LAPACKE_zgtcon_work (char lapack_int lapack_complex_double* lapack_complex_double* lapack_complex_double* lapack_complex_double* lapack_int* double double* lapack_complex_double* ))
  (define-c-function lapack_int LAPACKE_zgtrfs_work (int char lapack_int lapack_int lapack_complex_double* lapack_complex_double* lapack_complex_double* lapack_complex_double* lapack_complex_double* lapack_complex_double* lapack_complex_double* lapack_int* lapack_complex_double* lapack_int lapack_complex_double* lapack_int double* double* lapack_complex_double* double* ))
  (define-c-function lapack_int LAPACKE_zgtsv_work (int lapack_int lapack_int lapack_complex_double* lapack_complex_double* lapack_complex_double* lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zgttrf_work (lapack_int lapack_complex_double* lapack_complex_double* lapack_complex_double* lapack_complex_double* lapack_int* ))
  (define-c-function lapack_int LAPACKE_zgttrs_work (int char lapack_int lapack_int lapack_complex_double* lapack_complex_double* lapack_complex_double* lapack_complex_double* lapack_int* lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zhbev_work (int char char lapack_int lapack_int lapack_complex_double* lapack_int double* lapack_complex_double* lapack_int lapack_complex_double* double* ))
  (define-c-function lapack_int LAPACKE_zhbevd_work (int char char lapack_int lapack_int lapack_complex_double* lapack_int double* lapack_complex_double* lapack_int lapack_complex_double* lapack_int double* lapack_int lapack_int* lapack_int ))
  (define-c-function lapack_int LAPACKE_zhbgst_work (int char char lapack_int lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_complex_double* double* ))
  (define-c-function lapack_int LAPACKE_zhbgv_work (int char char lapack_int lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int double* lapack_complex_double* lapack_int lapack_complex_double* double* ))
  (define-c-function lapack_int LAPACKE_zhbgvd_work (int char char lapack_int lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int double* lapack_complex_double* lapack_int lapack_complex_double* lapack_int double* lapack_int lapack_int* lapack_int ))
  (define-c-function lapack_int LAPACKE_zhbtrd_work (int char char lapack_int lapack_int lapack_complex_double* lapack_int double* double* lapack_complex_double* lapack_int lapack_complex_double* ))
  (define-c-function lapack_int LAPACKE_zhecon_work (int char lapack_int lapack_complex_double* lapack_int lapack_int* double double* lapack_complex_double* ))
  (define-c-function lapack_int LAPACKE_zheequb_work (int char lapack_int lapack_complex_double* lapack_int double* double* double* lapack_complex_double* ))
  (define-c-function lapack_int LAPACKE_zheev_work (int char char lapack_int lapack_complex_double* lapack_int double* lapack_complex_double* lapack_int double* ))
  (define-c-function lapack_int LAPACKE_zheevd_work (int char char lapack_int lapack_complex_double* lapack_int double* lapack_complex_double* lapack_int double* lapack_int lapack_int* lapack_int ))
  (define-c-function lapack_int LAPACKE_zheevr_work (int char char char lapack_int lapack_complex_double* lapack_int double double lapack_int lapack_int double lapack_int* double* lapack_complex_double* lapack_int lapack_int* lapack_complex_double* lapack_int double* lapack_int lapack_int* lapack_int ))
  (define-c-function lapack_int LAPACKE_zhegst_work (int lapack_int char lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zhegv_work (int lapack_int char char lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int double* lapack_complex_double* lapack_int double* ))
  (define-c-function lapack_int LAPACKE_zhegvd_work (int lapack_int char char lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int double* lapack_complex_double* lapack_int double* lapack_int lapack_int* lapack_int ))
  (define-c-function lapack_int LAPACKE_zherfs_work (int char lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_int* lapack_complex_double* lapack_int lapack_complex_double* lapack_int double* double* lapack_complex_double* double* ))
  (define-c-function lapack_int LAPACKE_zhesv_work (int char lapack_int lapack_int lapack_complex_double* lapack_int lapack_int* lapack_complex_double* lapack_int lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zhetrd_work (int char lapack_int lapack_complex_double* lapack_int double* double* lapack_complex_double* lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zhetrf_work (int char lapack_int lapack_complex_double* lapack_int lapack_int* lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zhetri_work (int char lapack_int lapack_complex_double* lapack_int lapack_int* lapack_complex_double* ))
  (define-c-function lapack_int LAPACKE_zhetrs_work (int char lapack_int lapack_int lapack_complex_double* lapack_int lapack_int* lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zhfrk_work (int char char char lapack_int lapack_int double lapack_complex_double* lapack_int double lapack_complex_double* ))
  (define-c-function lapack_int LAPACKE_zhgeqz_work (int char char char lapack_int lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_complex_double* lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int double* ))
  (define-c-function lapack_int LAPACKE_zhpcon_work (int char lapack_int lapack_complex_double* lapack_int* double double* lapack_complex_double* ))
  (define-c-function lapack_int LAPACKE_zhpev_work (int char char lapack_int lapack_complex_double* double* lapack_complex_double* lapack_int lapack_complex_double* double* ))
  (define-c-function lapack_int LAPACKE_zhpevd_work (int char char lapack_int lapack_complex_double* double* lapack_complex_double* lapack_int lapack_complex_double* lapack_int double* lapack_int lapack_int* lapack_int ))
  (define-c-function lapack_int LAPACKE_zhpgst_work (int lapack_int char lapack_int lapack_complex_double* lapack_complex_double* ))
  (define-c-function lapack_int LAPACKE_zhpgv_work (int lapack_int char char lapack_int lapack_complex_double* lapack_complex_double* double* lapack_complex_double* lapack_int lapack_complex_double* double* ))
  (define-c-function lapack_int LAPACKE_zhpgvd_work (int lapack_int char char lapack_int lapack_complex_double* lapack_complex_double* double* lapack_complex_double* lapack_int lapack_complex_double* lapack_int double* lapack_int lapack_int* lapack_int ))
  (define-c-function lapack_int LAPACKE_zhprfs_work (int char lapack_int lapack_int lapack_complex_double* lapack_complex_double* lapack_int* lapack_complex_double* lapack_int lapack_complex_double* lapack_int double* double* lapack_complex_double* double* ))
  (define-c-function lapack_int LAPACKE_zhpsv_work (int char lapack_int lapack_int lapack_complex_double* lapack_int* lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zhptrd_work (int char lapack_int lapack_complex_double* double* double* lapack_complex_double* ))
  (define-c-function lapack_int LAPACKE_zhptrf_work (int char lapack_int lapack_complex_double* lapack_int* ))
  (define-c-function lapack_int LAPACKE_zhptri_work (int char lapack_int lapack_complex_double* lapack_int* lapack_complex_double* ))
  (define-c-function lapack_int LAPACKE_zhptrs_work (int char lapack_int lapack_int lapack_complex_double* lapack_int* lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zhsein_work (int char char char lapack_logical* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_int lapack_int* lapack_complex_double* double* lapack_int* lapack_int* ))
  (define-c-function lapack_int LAPACKE_zhseqr_work (int char char lapack_int lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_complex_double* lapack_int lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zlacgv_work (lapack_int lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zlacn2_work (lapack_int lapack_complex_double* lapack_complex_double* double* lapack_int* lapack_int* ))
  (define-c-function lapack_int LAPACKE_zlacpy_work (int char lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zlacp2_work (int char lapack_int lapack_int double* lapack_int lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zlag2c_work (int lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_float* lapack_int ))
  (define-c-function lapack_int LAPACKE_zlagge_work (int lapack_int lapack_int lapack_int lapack_int double* lapack_complex_double* lapack_int lapack_int* lapack_complex_double* ))
  (define-c-function lapack_int LAPACKE_zlaghe_work (int lapack_int lapack_int double* lapack_complex_double* lapack_int lapack_int* lapack_complex_double* ))
  (define-c-function lapack_int LAPACKE_zlagsy_work (int lapack_int lapack_int double* lapack_complex_double* lapack_int lapack_int* lapack_complex_double* ))
  (define-c-function lapack_int LAPACKE_zlapmr_work (int lapack_logical lapack_int lapack_int lapack_complex_double* lapack_int lapack_int* ))
  (define-c-function double LAPACKE_zlange_work (int char lapack_int lapack_int lapack_complex_double* lapack_int double* ))
  (define-c-function double LAPACKE_zlanhe_work (int char char lapack_int lapack_complex_double* lapack_int double* ))
  (define-c-function double LAPACKE_zlansy_work (int char char lapack_int lapack_complex_double* lapack_int double* ))
  (define-c-function double LAPACKE_zlantr_work (int char char char lapack_int lapack_int lapack_complex_double* lapack_int double* ))
  (define-c-function lapack_int LAPACKE_zlarfb_work (int char char char char lapack_int lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zlarfg_work (lapack_int lapack_complex_double* lapack_complex_double* lapack_int lapack_complex_double* ))
  (define-c-function lapack_int LAPACKE_zlarft_work (int char char lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zlarnv_work (lapack_int lapack_int* lapack_int lapack_complex_double* ))
  (define-c-function lapack_int LAPACKE_zlaset_work (int char lapack_int lapack_int lapack_complex_double lapack_complex_double lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zlaswp_work (int lapack_int lapack_complex_double* lapack_int lapack_int lapack_int lapack_int* lapack_int ))
  (define-c-function lapack_int LAPACKE_zlatms_work (int lapack_int lapack_int char lapack_int* char double* lapack_int double double lapack_int lapack_int char lapack_complex_double* lapack_int lapack_complex_double* ))
  (define-c-function lapack_int LAPACKE_zlauum_work (int char lapack_int lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zpbcon_work (int char lapack_int lapack_int lapack_complex_double* lapack_int double double* lapack_complex_double* double* ))
  (define-c-function lapack_int LAPACKE_zpbequ_work (int char lapack_int lapack_int lapack_complex_double* lapack_int double* double* double* ))
  (define-c-function lapack_int LAPACKE_zpbrfs_work (int char lapack_int lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int double* double* lapack_complex_double* double* ))
  (define-c-function lapack_int LAPACKE_zpbstf_work (int char lapack_int lapack_int lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zpbsv_work (int char lapack_int lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zpbtrf_work (int char lapack_int lapack_int lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zpbtrs_work (int char lapack_int lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zpftrf_work (int char char lapack_int lapack_complex_double* ))
  (define-c-function lapack_int LAPACKE_zpftri_work (int char char lapack_int lapack_complex_double* ))
  (define-c-function lapack_int LAPACKE_zpftrs_work (int char char lapack_int lapack_int lapack_complex_double* lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zpocon_work (int char lapack_int lapack_complex_double* lapack_int double double* lapack_complex_double* double* ))
  (define-c-function lapack_int LAPACKE_zpoequ_work (int lapack_int lapack_complex_double* lapack_int double* double* double* ))
  (define-c-function lapack_int LAPACKE_zpoequb_work (int lapack_int lapack_complex_double* lapack_int double* double* double* ))
  (define-c-function lapack_int LAPACKE_zporfs_work (int char lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int double* double* lapack_complex_double* double* ))
  (define-c-function lapack_int LAPACKE_zposv_work (int char lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zcposv_work (int char lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_complex_float* double* lapack_int* ))
  (define-c-function lapack_int LAPACKE_zpotrf_work (int char lapack_int lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zpotri_work (int char lapack_int lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zpotrs_work (int char lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zppcon_work (int char lapack_int lapack_complex_double* double double* lapack_complex_double* double* ))
  (define-c-function lapack_int LAPACKE_zppequ_work (int char lapack_int lapack_complex_double* double* double* double* ))
  (define-c-function lapack_int LAPACKE_zpprfs_work (int char lapack_int lapack_int lapack_complex_double* lapack_complex_double* lapack_complex_double* lapack_int lapack_complex_double* lapack_int double* double* lapack_complex_double* double* ))
  (define-c-function lapack_int LAPACKE_zppsv_work (int char lapack_int lapack_int lapack_complex_double* lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zpptrf_work (int char lapack_int lapack_complex_double* ))
  (define-c-function lapack_int LAPACKE_zpptri_work (int char lapack_int lapack_complex_double* ))
  (define-c-function lapack_int LAPACKE_zpptrs_work (int char lapack_int lapack_int lapack_complex_double* lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zpstrf_work (int char lapack_int lapack_complex_double* lapack_int lapack_int* lapack_int* double double* ))
  (define-c-function lapack_int LAPACKE_zptcon_work (lapack_int double* lapack_complex_double* double double* double* ))
  (define-c-function lapack_int LAPACKE_zpteqr_work (int char lapack_int double* double* lapack_complex_double* lapack_int double* ))
  (define-c-function lapack_int LAPACKE_zptrfs_work (int char lapack_int lapack_int double* lapack_complex_double* double* lapack_complex_double* lapack_complex_double* lapack_int lapack_complex_double* lapack_int double* double* lapack_complex_double* double* ))
  (define-c-function lapack_int LAPACKE_zptsv_work (int lapack_int lapack_int double* lapack_complex_double* lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zpttrf_work (lapack_int double* lapack_complex_double* ))
  (define-c-function lapack_int LAPACKE_zpttrs_work (int char lapack_int lapack_int double* lapack_complex_double* lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zspcon_work (int char lapack_int lapack_complex_double* lapack_int* double double* lapack_complex_double* ))
  (define-c-function lapack_int LAPACKE_zsprfs_work (int char lapack_int lapack_int lapack_complex_double* lapack_complex_double* lapack_int* lapack_complex_double* lapack_int lapack_complex_double* lapack_int double* double* lapack_complex_double* double* ))
  (define-c-function lapack_int LAPACKE_zspsv_work (int char lapack_int lapack_int lapack_complex_double* lapack_int* lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zsptrf_work (int char lapack_int lapack_complex_double* lapack_int* ))
  (define-c-function lapack_int LAPACKE_zsptri_work (int char lapack_int lapack_complex_double* lapack_int* lapack_complex_double* ))
  (define-c-function lapack_int LAPACKE_zsptrs_work (int char lapack_int lapack_int lapack_complex_double* lapack_int* lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zstedc_work (int char lapack_int double* double* lapack_complex_double* lapack_int lapack_complex_double* lapack_int double* lapack_int lapack_int* lapack_int ))
  (define-c-function lapack_int LAPACKE_zstegr_work (int char char lapack_int double* double* double double lapack_int lapack_int double lapack_int* double* lapack_complex_double* lapack_int lapack_int* double* lapack_int lapack_int* lapack_int ))
  (define-c-function lapack_int LAPACKE_zstein_work (int lapack_int double* double* lapack_int double* lapack_int* lapack_int* lapack_complex_double* lapack_int double* lapack_int* lapack_int* ))
  (define-c-function lapack_int LAPACKE_zstemr_work (int char char lapack_int double* double* double double lapack_int lapack_int lapack_int* double* lapack_complex_double* lapack_int lapack_int lapack_int* lapack_logical* double* lapack_int lapack_int* lapack_int ))
  (define-c-function lapack_int LAPACKE_zsteqr_work (int char lapack_int double* double* lapack_complex_double* lapack_int double* ))
  (define-c-function lapack_int LAPACKE_zsycon_work (int char lapack_int lapack_complex_double* lapack_int lapack_int* double double* lapack_complex_double* ))
  (define-c-function lapack_int LAPACKE_zsyequb_work (int char lapack_int lapack_complex_double* lapack_int double* double* double* lapack_complex_double* ))
  (define-c-function lapack_int LAPACKE_zsyrfs_work (int char lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_int* lapack_complex_double* lapack_int lapack_complex_double* lapack_int double* double* lapack_complex_double* double* ))
  (define-c-function lapack_int LAPACKE_zsysv_work (int char lapack_int lapack_int lapack_complex_double* lapack_int lapack_int* lapack_complex_double* lapack_int lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zsysv_rook_work (int char lapack_int lapack_int lapack_complex_double* lapack_int lapack_int* lapack_complex_double* lapack_int lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zsytrf_work (int char lapack_int lapack_complex_double* lapack_int lapack_int* lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zsytri_work (int char lapack_int lapack_complex_double* lapack_int lapack_int* lapack_complex_double* ))
  (define-c-function lapack_int LAPACKE_zsytrs_work (int char lapack_int lapack_int lapack_complex_double* lapack_int lapack_int* lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_ztbcon_work (int char char char lapack_int lapack_int lapack_complex_double* lapack_int double* lapack_complex_double* double* ))
  (define-c-function lapack_int LAPACKE_ztbrfs_work (int char char char lapack_int lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int double* double* lapack_complex_double* double* ))
  (define-c-function lapack_int LAPACKE_ztbtrs_work (int char char char lapack_int lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_ztfsm_work (int char char char char char lapack_int lapack_int lapack_complex_double lapack_complex_double* lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_ztftri_work (int char char char lapack_int lapack_complex_double* ))
  (define-c-function lapack_int LAPACKE_ztfttp_work (int char char lapack_int lapack_complex_double* lapack_complex_double* ))
  (define-c-function lapack_int LAPACKE_ztfttr_work (int char char lapack_int lapack_complex_double* lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_ztgevc_work (int char char lapack_logical* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_int lapack_int* lapack_complex_double* double* ))
  (define-c-function lapack_int LAPACKE_ztgexc_work (int lapack_logical lapack_logical lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_int lapack_int ))
  (define-c-function lapack_int LAPACKE_ztgsen_work (int lapack_int lapack_logical lapack_logical lapack_logical* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_complex_double* lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_int* double* double* double* lapack_complex_double* lapack_int lapack_int* lapack_int ))
  (define-c-function lapack_int LAPACKE_ztgsja_work (int char char char lapack_int lapack_int lapack_int lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int double double double* double* lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int* ))
  (define-c-function lapack_int LAPACKE_ztgsna_work (int char char lapack_logical* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int double* double* lapack_int lapack_int* lapack_complex_double* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_ztgsyl_work (int char lapack_int lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int double* double* lapack_complex_double* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_ztpcon_work (int char char char lapack_int lapack_complex_double* double* lapack_complex_double* double* ))
  (define-c-function lapack_int LAPACKE_ztprfs_work (int char char char lapack_int lapack_int lapack_complex_double* lapack_complex_double* lapack_int lapack_complex_double* lapack_int double* double* lapack_complex_double* double* ))
  (define-c-function lapack_int LAPACKE_ztptri_work (int char char lapack_int lapack_complex_double* ))
  (define-c-function lapack_int LAPACKE_ztptrs_work (int char char char lapack_int lapack_int lapack_complex_double* lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_ztpttf_work (int char char lapack_int lapack_complex_double* lapack_complex_double* ))
  (define-c-function lapack_int LAPACKE_ztpttr_work (int char lapack_int lapack_complex_double* lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_ztrcon_work (int char char char lapack_int lapack_complex_double* lapack_int double* lapack_complex_double* double* ))
  (define-c-function lapack_int LAPACKE_ztrevc_work (int char char lapack_logical* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_int lapack_int* lapack_complex_double* double* ))
  (define-c-function lapack_int LAPACKE_ztrexc_work (int char lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_int lapack_int ))
  (define-c-function lapack_int LAPACKE_ztrrfs_work (int char char char lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int double* double* lapack_complex_double* double* ))
  (define-c-function lapack_int LAPACKE_ztrsen_work (int char char lapack_logical* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int* double* double* lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_ztrsna_work (int char char lapack_logical* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int double* double* lapack_int lapack_int* lapack_complex_double* lapack_int double* ))
  (define-c-function lapack_int LAPACKE_ztrsyl_work (int char char lapack_int lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int double* ))
  (define-c-function lapack_int LAPACKE_ztrtri_work (int char char lapack_int lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_ztrtrs_work (int char char char lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_ztrttf_work (int char char lapack_int lapack_complex_double* lapack_int lapack_complex_double* ))
  (define-c-function lapack_int LAPACKE_ztrttp_work (int char lapack_int lapack_complex_double* lapack_int lapack_complex_double* ))
  (define-c-function lapack_int LAPACKE_ztzrzf_work (int lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zungbr_work (int char lapack_int lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zunghr_work (int lapack_int lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zunglq_work (int lapack_int lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zungql_work (int lapack_int lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zungqr_work (int lapack_int lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zungrq_work (int lapack_int lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zungtr_work (int char lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zunmbr_work (int char char char lapack_int lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_complex_double* lapack_int lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zunmhr_work (int char char lapack_int lapack_int lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_complex_double* lapack_int lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zunmlq_work (int char char lapack_int lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_complex_double* lapack_int lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zunmql_work (int char char lapack_int lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_complex_double* lapack_int lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zunmqr_work (int char char lapack_int lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_complex_double* lapack_int lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zunmrq_work (int char char lapack_int lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_complex_double* lapack_int lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zunmrz_work (int char char lapack_int lapack_int lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_complex_double* lapack_int lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zunmtr_work (int char char char lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_complex_double* lapack_int lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zupgtr_work (int char lapack_int lapack_complex_double* lapack_complex_double* lapack_complex_double* lapack_int lapack_complex_double* ))
  (define-c-function lapack_int LAPACKE_zupmtr_work (int char char char lapack_int lapack_int lapack_complex_double* lapack_complex_double* lapack_complex_double* lapack_int lapack_complex_double* ))
  (define-c-function lapack_int LAPACKE_zlaghe (int lapack_int lapack_int double* lapack_complex_double* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_zlagsy (int lapack_int lapack_int double* lapack_complex_double* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_zlapmr (int lapack_logical lapack_int lapack_int lapack_complex_double* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_zbbcsd (int char char char char char lapack_int lapack_int lapack_int double* double* lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int double* double* double* double* double* double* double* double* ))
  (define-c-function lapack_int LAPACKE_zbbcsd_work (int char char char char char lapack_int lapack_int lapack_int double* double* lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int double* double* double* double* double* double* double* double* double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zheswapr (int char lapack_int lapack_complex_double* lapack_int lapack_int ))
  (define-c-function lapack_int LAPACKE_zheswapr_work (int char lapack_int lapack_complex_double* lapack_int lapack_int ))
  (define-c-function lapack_int LAPACKE_zhetri2 (int char lapack_int lapack_complex_double* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_zhetri2_work (int char lapack_int lapack_complex_double* lapack_int lapack_int* lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zhetrs2 (int char lapack_int lapack_int lapack_complex_double* lapack_int lapack_int* lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zhetrs2_work (int char lapack_int lapack_int lapack_complex_double* lapack_int lapack_int* lapack_complex_double* lapack_int lapack_complex_double* ))
  (define-c-function lapack_int LAPACKE_zsyconv (int char char lapack_int lapack_complex_double* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_zsyconv_work (int char char lapack_int lapack_complex_double* lapack_int lapack_int* lapack_complex_double* ))
  (define-c-function lapack_int LAPACKE_zsyswapr (int char lapack_int lapack_complex_double* lapack_int lapack_int ))
  (define-c-function lapack_int LAPACKE_zsyswapr_work (int char lapack_int lapack_complex_double* lapack_int lapack_int ))
  (define-c-function lapack_int LAPACKE_zsytri2 (int char lapack_int lapack_complex_double* lapack_int lapack_int* ))
  (define-c-function lapack_int LAPACKE_zsytri2_work (int char lapack_int lapack_complex_double* lapack_int lapack_int* lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zsytrs2 (int char lapack_int lapack_int lapack_complex_double* lapack_int lapack_int* lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zsytrs2_work (int char lapack_int lapack_int lapack_complex_double* lapack_int lapack_int* lapack_complex_double* lapack_int lapack_complex_double* ))
  (define-c-function lapack_int LAPACKE_zunbdb (int char char lapack_int lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int double* double* lapack_complex_double* lapack_complex_double* lapack_complex_double* lapack_complex_double* ))
  (define-c-function lapack_int LAPACKE_zunbdb_work (int char char lapack_int lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int double* double* lapack_complex_double* lapack_complex_double* lapack_complex_double* lapack_complex_double* lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zuncsd (int char char char char char char lapack_int lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int double* lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int ))
  (define-c-function lapack_int LAPACKE_zuncsd_work (int char char char char char char lapack_int lapack_int lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int double* lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int lapack_complex_double* lapack_int double* lapack_int lapack_int* ))
  #| end of library |#)

;;; end of file
