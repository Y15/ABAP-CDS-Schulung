@EndUserText.label: 'Join Kundenauftrag zu Positionen'
define view entity ZB1_I_SALESORDER_POS_JOIN
  as select from    vbak
    left outer join vbap on vbap.vbeln = vbak.vbeln
{
  key vbak.vbeln,
  key vbap.posnr,
      vbap.matnr,
      vbap.gewei,
      vbap.brgew
}
