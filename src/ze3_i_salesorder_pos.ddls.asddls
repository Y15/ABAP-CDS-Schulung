@EndUserText.label: 'Positionen'
define view entity ZE3_I_SALESORDER_POS
  as select from vbap
  association [1..*] to ZE2_I_MARA as _mara on _mara.matnr = vbap.matnr
{
  vbap.vbeln,
  vbap.posnr,
  vbap.matnr,
  _mara
}
