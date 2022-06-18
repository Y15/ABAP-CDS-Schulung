@EndUserText.label: 'Salesorder mit Assoziation zu Positionen'
define view entity ZC1_I_SALESORDER_POS_ASSO
  as select from vbak

  // Assoziationen können direkt im View aufgelöst werden    
  association [1..*] to vbap as _positionen on vbak.vbeln = _positionen.vbeln

{
  key vbak.vbeln,
  key _positionen.posnr,
      _positionen.matnr,
      _positionen.gewei,
      _positionen.brgew
}
