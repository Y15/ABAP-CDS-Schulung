*&---------------------------------------------------------------------*
*& Report z1_cds
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT za_cds.


*********************************************
*************** Altes Release ***************
*********************************************


*Für ältere Releases: select auf sqlViewName
*DATA lt_salesorder TYPE STANDARD TABLE OF ZA2ISALESORDER.
*
*
**Für ältere Releases: select auf sqlViewName
*SELECT * FROM ZA2ISALESORDER
*    INTO TABLE @lt_salesorder.


*********************************************
**** Neues Release ohne CDS View entity ****
*(Bei Möglichkeit CDS View entity verwenden)*
*********************************************

*Bei neueren Systemen kann direkt der CDS View als Typname verwendet werden
*DATA lt_salesorder_new_synta TYPE STANDARD TABLE OF za2_i_salesorder.
*
*
**Selektion direkt auf CDS View
*SELECT * FROM za2_i_salesorder
*    INTO TABLE @lt_salesorder_new_synta.
*
*
*BREAK-POINT.




*********************************************
********** Selektion auf CDS Entity *********
*********************************************
DATA lt_salesorder TYPE STANDARD TABLE OF za1_i_salesorder.

SELECT * FROM za1_i_salesorder INTO
    CORRESPONDING FIELDS OF TABLE @lt_salesorder.
