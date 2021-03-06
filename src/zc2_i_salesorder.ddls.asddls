@EndUserText.label: 'CDS View für Kundenauftrag'
define view entity ZC2_I_SALESORDER
  as select from vbak

  // Assoziationen zu Kundenauftragspositionen
  association [1..*] to vbap as _positionen on vbak.vbeln = _positionen.vbeln

{
    key vbak.vbeln as Vbeln,
    vbak.erdat as Erdat,
    vbak.erzet as Erzet,
    vbak.ernam as Ernam,
    vbak.angdt as Angdt,
    vbak.bnddt as Bnddt,
    vbak.audat as Audat,
    vbak.vbtyp as Vbtyp,
    vbak.trvog as Trvog,
    vbak.auart as Auart,
    vbak.augru as Augru,
    vbak.gwldt as Gwldt,
    vbak.submi as Submi,
    vbak.lifsk as Lifsk,
    vbak.faksk as Faksk,
    vbak.netwr as Netwr,
    vbak.waerk as Waerk,
    vbak.vkorg as Vkorg,
    vbak.vtweg as Vtweg,
    vbak.spart as Spart,
    vbak.vkgrp as Vkgrp,
    vbak.vkbur as Vkbur,
    vbak.gsber as Gsber,
    vbak.gskst as Gskst,
    vbak.guebg as Guebg,
    vbak.gueen as Gueen,
    vbak.knumv as Knumv,
    vbak.vdatu as Vdatu,
    vbak.delivery_date_type_rule as DeliveryDateTypeRule,
    vbak.vprgr as Vprgr,
    vbak.autlf as Autlf,
    vbak.vbkla as Vbkla,
    vbak.vbklt as Vbklt,
    vbak.kalsm as Kalsm,
    vbak.vsbed as Vsbed,
    vbak.fkara as Fkara,
    vbak.awahr as Awahr,
    vbak.ktext as Ktext,
    vbak.bstnk as Bstnk,
    vbak.bsark as Bsark,
    vbak.bstdk as Bstdk,
    vbak.bstzd as Bstzd,
    vbak.ihrez as Ihrez,
    vbak.bname as Bname,
    vbak.telf1 as Telf1,
    vbak.mahza as Mahza,
    vbak.mahdt as Mahdt,
    vbak.kunnr as Kunnr,
    vbak.kostl as Kostl,
    vbak.stafo as Stafo,
    vbak.stwae as Stwae,
    vbak.aedat as Aedat,
    vbak.kvgr1 as Kvgr1,
    vbak.kvgr2 as Kvgr2,
    vbak.kvgr3 as Kvgr3,
    vbak.kvgr4 as Kvgr4,
    vbak.kvgr5 as Kvgr5,
    vbak.knuma as Knuma,
    vbak.kokrs as Kokrs,
    vbak.ps_psp_pnr as PsPspPnr,
    vbak.kurst as Kurst,
    vbak.kkber as Kkber,
    vbak.knkli as Knkli,
    vbak.grupp as Grupp,
    vbak.sbgrp as Sbgrp,
    vbak.ctlpc as Ctlpc,
    vbak.cmwae as Cmwae,
    vbak.cmfre as Cmfre,
    vbak.cmnup as Cmnup,
    vbak.cmngv as Cmngv,
    vbak.amtbl as Amtbl,
    vbak.hityp_pr as HitypPr,
    vbak.abrvw as Abrvw,
    vbak.abdis as Abdis,
    vbak.vgbel as Vgbel,
    vbak.objnr as Objnr,
    vbak.bukrs_vf as BukrsVf,
    vbak.taxk1 as Taxk1,
    vbak.taxk2 as Taxk2,
    vbak.taxk3 as Taxk3,
    vbak.taxk4 as Taxk4,
    vbak.taxk5 as Taxk5,
    vbak.taxk6 as Taxk6,
    vbak.taxk7 as Taxk7,
    vbak.taxk8 as Taxk8,
    vbak.taxk9 as Taxk9,
    vbak.xblnr as Xblnr,
    vbak.zuonr as Zuonr,
    vbak.vgtyp as Vgtyp,
    vbak.kalsm_ch as KalsmCh,
    vbak.agrzr as Agrzr,
    vbak.aufnr as Aufnr,
    vbak.qmnum as Qmnum,
    vbak.vbeln_grp as VbelnGrp,
    vbak.scheme_grp as SchemeGrp,
    vbak.abruf_part as AbrufPart,
    vbak.abhod as Abhod,
    vbak.abhov as Abhov,
    vbak.abhob as Abhob,
    vbak.rplnr as Rplnr,
    vbak.vzeit as Vzeit,
    vbak.stceg_l as StcegL,
    vbak.landtx as Landtx,
    vbak.xegdr as Xegdr,
    vbak.enqueue_grp as EnqueueGrp,
    vbak.dat_fzau as DatFzau,
    vbak.fmbdat as Fmbdat,
    vbak.vsnmr_v as VsnmrV,
    vbak.handle as Handle,
    vbak.proli as Proli,
    vbak.cont_dg as ContDg,
    vbak.crm_guid as CrmGuid,
    vbak.upd_tmstmp as UpdTmstmp,
    vbak.msr_id as MsrId,
    vbak.tm_ctrl_key as TmCtrlKey,
    vbak.oipbl as Oipbl,
    vbak.last_changed_by_user as LastChangedByUser,
    vbak.handoverloc as Handoverloc,
    vbak.ext_bus_syst_id as ExtBusSystId,
    vbak.ext_ref_doc_id as ExtRefDocId,
    vbak.ext_rev_tmstmp as ExtRevTmstmp,
    vbak.apm_approval_status as ApmApprovalStatus,
    vbak.apm_approval_reason as ApmApprovalReason,
    vbak.apm_rejection_reason as ApmRejectionReason,
    vbak.solution_order_id as SolutionOrderId,
    vbak.ext_comm_syst_type as ExtCommSystType,
    vbak.retro_purchdoc_creation as RetroPurchdocCreation,
    vbak._dataaging as Dataaging,
    vbak.abstk as Abstk,
    vbak.bestk as Bestk,
    vbak.cmpsc as Cmpsc,
    vbak.cmpsd as Cmpsd,
    vbak.cmpsi as Cmpsi,
    vbak.cmpsj as Cmpsj,
    vbak.cmpsk as Cmpsk,
    vbak.cmps_cm as CmpsCm,
    vbak.cmps_te as CmpsTe,
    vbak.cmgst as Cmgst,
    vbak.costa as Costa,
    vbak.dcstk as Dcstk,
    vbak.fksak as Fksak,
    vbak.fmstk as Fmstk,
    vbak.fsstk as Fsstk,
    vbak.gbstk as Gbstk,
    vbak.lfgsk as Lfgsk,
    vbak.lfstk as Lfstk,
    vbak.lsstk as Lsstk,
    vbak.manek as Manek,
    vbak.rfgsk as Rfgsk,
    vbak.rfstk as Rfstk,
    vbak.spstg as Spstg,
    vbak.trsta as Trsta,
    vbak.uvall as Uvall,
    vbak.uvals as Uvals,
    vbak.uvfak as Uvfak,
    vbak.uvfas as Uvfas,
    vbak.uvprs as Uvprs,
    vbak.uvvlk as Uvvlk,
    vbak.uvvls as Uvvls,
    vbak.uvk01 as Uvk01,
    vbak.uvk02 as Uvk02,
    vbak.uvk03 as Uvk03,
    vbak.uvk04 as Uvk04,
    vbak.uvk05 as Uvk05,
    vbak.uvs01 as Uvs01,
    vbak.uvs02 as Uvs02,
    vbak.uvs03 as Uvs03,
    vbak.uvs04 as Uvs04,
    vbak.uvs05 as Uvs05,
    vbak.wbstk as Wbstk,
    vbak.total_emcst as TotalEmcst,
    vbak.total_slcst as TotalSlcst,
    vbak.total_lccst as TotalLccst,
    vbak.total_pcsta as TotalPcsta,
    vbak.total_dgsta as TotalDgsta,
    vbak.total_sdssta as TotalSdssta,
    vbak.dp_clear_sta_hdr as DpClearStaHdr,
    vbak.b2b_msg_processing_status as B2bMsgProcessingStatus,
    vbak.sdm_version as SdmVersion,
    vbak.dummy_salesdoc_incl_eew_ps as DummySalesdocInclEewPs,
    vbak.glo_log_ref1_hd as GloLogRef1Hd,
    vbak.zapcgkh as Zapcgkh,
    vbak.apcgk_extendh as ApcgkExtendh,
    vbak.zabdath as Zabdath,
    vbak.ad01fareg as Ad01fareg,
    vbak.ad01basdoc as Ad01basdoc,
    vbak.lastvchr as Lastvchr,
    vbak.psm_budat as PsmBudat,
    vbak.fsh_kvgr6 as FshKvgr6,
    vbak.fsh_kvgr7 as FshKvgr7,
    vbak.fsh_kvgr8 as FshKvgr8,
    vbak.fsh_kvgr9 as FshKvgr9,
    vbak.fsh_kvgr10 as FshKvgr10,
    vbak.fsh_rereg as FshRereg,
    vbak.fsh_cq_check as FshCqCheck,
    vbak.fsh_vrsn_status as FshVrsnStatus,
    vbak.fsh_transaction as FshTransaction,
    vbak.fsh_vas_cg as FshVasCg,
    vbak.fsh_candate as FshCandate,
    vbak.fsh_ss as FshSs,
    vbak.fsh_os_stg_change as FshOsStgChange,
    vbak.j_3gkbaul as J3gkbaul,
    vbak.mill_appl_id as MillApplId,
    vbak.tas as Tas,
    vbak.betc as Betc,
    vbak.mod_allow as ModAllow,
    vbak.cancel_allow as CancelAllow,
    vbak.pay_method as PayMethod,
    vbak.bpn as Bpn,
    vbak.rep_freq as RepFreq,
    vbak.logsysb as Logsysb,
    vbak.kalcd as Kalcd,
    vbak.multi as Multi,
    vbak.sppaym as Sppaym,
    vbak.wtysc_clm_hdr as WtyscClmHdr,
    
    
    //Assoziationen
    _positionen
}
