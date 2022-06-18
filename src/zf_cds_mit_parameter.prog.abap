*&---------------------------------------------------------------------*
*& Report zf_csd_mit_parameter
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zf_cds_mit_parameter.



DATA lt_sales_order_pos TYPE STANDARD TABLE OF zf1_i_salesorder_pos_param.



SELECT * FROM zf1_i_salesorder_pos_param( p_einheit = 'TO' )
    INTO CORRESPONDING FIELDS OF TABLE @lt_sales_order_pos.

BREAK-POINT.
