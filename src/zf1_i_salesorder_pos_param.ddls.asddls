@EndUserText.label: 'Parameterfunktion für Einheitsumrechnung'
define view entity ZF1_I_SALESORDER_POS_PARAM
  with parameters
    p_einheit :gewei
  as select from vbak
  association [1..*] to vbap on vbak.vbeln = vbap.vbeln
{
  key vbak.vbeln,
      vbap.brgew,
      vbap.gewei,

      @Semantics.quantity.unitOfMeasure : 'umgerechnetesGewichtEinheit'
      unit_conversion( quantity => vbap.brgew,
                       source_unit => vbap.gewei,
                       target_unit => $parameters.p_einheit ) as umgerechnetesGewicht,
                       
      $parameters.p_einheit                                   as umgerechnetesGewichtEinheit
}
