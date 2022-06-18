*&---------------------------------------------------------------------*
*& Report zg_cds_mit_extension
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zg_cds_mit_extension.

DATA Lt_sales_order TYPE STANDARD TABLE OF za1_i_salesorder.

SELECT * FROM za1_i_salesorder
    INTO CORRESPONDING FIELDS OF TABLE @Lt_sales_order.



BREAK-POINT.
