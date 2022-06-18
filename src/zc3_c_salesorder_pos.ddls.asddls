@EndUserText.label: 'CDS View mit Kundenauftrag und Positionen'
define view entity ZC3_C_SALESORDER_POS
  as select from ZC2_I_SALESORDER as Kundenauftrag

{
  key Kundenauftrag.Vbeln,
  key _positionen.posnr,
      _positionen.matnr,
      _positionen.gewei,
      _positionen.brgew
}
