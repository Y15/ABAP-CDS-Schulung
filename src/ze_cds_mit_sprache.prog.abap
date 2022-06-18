*&---------------------------------------------------------------------*
*& Report ze_cds_mit_sprache
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ze_cds_mit_sprache.

DATA: lt_Sales_order_mat TYPE STANDARD TABLE OF ze1_c_salesorder_pos_con.


SELECT * FROM ze1_c_salesorder_pos_con
    INTO CORRESPONDING FIELDS OF TABLE @lt_sales_order_mat.


BREAK-POINT.
