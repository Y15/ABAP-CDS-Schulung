*&---------------------------------------------------------------------*
*& Report zb1_cds_mit_join
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zb_cds_mit_join.


DATA lt_kundenauftrag_mit_pos TYPE STANDARD TABLE OF zb1_i_salesorder_pos_join.

SELECT * FROM zb1_i_salesorder_pos_join
    INTO CORRESPONDING FIELDS OF TABLE @lt_kundenauftrag_mit_pos.


BREAK-POINT.

*********************************************
****          Join aus CDS View          ****
*********************************************

*TYPES: BEGIN OF ty_kundenauftrag_mit_pos,
*         vbeln TYPE vbeln_va,
*         posnr TYPE posnr_va,
*         matnr TYPE matnr,
*         gewei TYPE gewei,
*         brgew TYPE brgew_ap,
*       END OF ty_kundenauftrag_mit_pos,
*       tt_kundenauftrag_mit_pos TYPE STANDARD TABLE OF ty_kundenauftrag_mit_pos.
*
*DATA lt_kundenauftrag_mit_pos TYPE tt_kundenauftrag_mit_pos.
*
*SELECT * FROM vbak
*  LEFT OUTER JOIN vbap ON vbap~vbeln = vbak~vbeln
*  INTO CORRESPONDING FIELDS OF TABLE lt_kundenauftrag_mit_pos.
*
*
*BREAK-POINT.
