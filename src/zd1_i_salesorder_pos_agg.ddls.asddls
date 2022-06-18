@EndUserText.label: 'Aggregat funktionen'
define view entity ZD1_I_SALESORDER_POS_AGG
  as select from vbak
  association [1..*] to vbap on vbak.vbeln = vbap.vbeln
{
  key vbak.vbeln,

      @Semantics.quantity.unitOfMeasure : 'gewei'
      //Summiertes Bruttogewicht überalle Positionen eines Kundenauftrages
      sum( vbap.brgew ) as bruttoGewicht,     

      //Annzahl gefundener Einträge in Positionstabelle
      count( * )        as anzahlPositionen,

      //Schwerste Position
      @Semantics.quantity.unitOfMeasure : 'gewei'
      max( vbap.brgew ) as schwerstePosition,
            
      //Leichteste Position
      @Semantics.quantity.unitOfMeasure : 'gewei'
      min( vbap.brgew ) as leichtestePosition,
      
      vbap.gewei

}
group by
  vbak.vbeln,
  vbap.gewei
