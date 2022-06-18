*&---------------------------------------------------------------------*
*& Report zc1_cds_mit_assoziation
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zc_cds_mit_assoziation.

DATA lt_kundenauftrag_mit_pos TYPE STANDARD TABLE OF zc1_i_salesorder_pos_asso.


*********************************************
*Selektion Auf CDS View mit direkter Assoziations Auflösung
*********************************************
*SELECT * FROM zc1_i_salesorder_pos_asso
*    INTO CORRESPONDING FIELDS OF TABLE @lt_kundenauftrag_mit_pos.
*
*
*BREAK-POINT.


*********************************************
*Selektion Auf CDS View mit Assoziations Auflösung
*********************************************
SELECT * FROM ZC3_C_SALESORDER_POS
    INTO CORRESPONDING FIELDS OF TABLE @lt_kundenauftrag_mit_pos.


BREAK-POINT.
