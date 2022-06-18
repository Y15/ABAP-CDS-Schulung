*&---------------------------------------------------------------------*
*& Report zd1_cds_aggregats_funktionen
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zd_cds_aggregats_funktionen.

Data lt_salesorder_pos Type STANDARD TABLE OF ZD1_I_SALESORDER_POS_AGG.


* Normale Selektion auf alle Daten im View

*SELECT * FROM ZD1_I_SALESORDER_POS_AGG
*    INTO CORRESPONDING FIELDS OF TABLE @lt_salesorder_pos.
*
*BREAK-POINT.


* Where bedingung auf Aggregierte Felder ist möglich
SELECT * FROM ZD1_I_SALESORDER_POS_AGG
    INTO CORRESPONDING FIELDS OF TABLE @lt_salesorder_pos
    where schwerstePosition > 200.

BREAK-POINT.
