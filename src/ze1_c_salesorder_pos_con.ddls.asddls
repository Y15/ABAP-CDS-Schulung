@EndUserText.label: 'Handhabung von Sprachen'
define view entity ZE1_C_SALESORDER_POS_CON
  as select from vbak
  association [1..*] to ZE3_I_SALESORDER_POS as _pos on vbak.vbeln = _pos.vbeln
{
  key vbak.vbeln,
  key _pos.posnr,
      _pos.matnr,
      _pos._mara.matTXT
}
