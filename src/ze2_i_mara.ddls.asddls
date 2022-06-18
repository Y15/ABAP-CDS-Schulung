@EndUserText.label: 'Materialstammdaten'
define view entity ZE2_I_MARA
  as select from mara
  association [1..*] to makt as _makt on _makt.matnr = mara.matnr
{
  key mara.matnr,

      coalesce( _makt[ 1: spras = 'D' ].maktx,
                _makt[ 1: spras = 'E' ].maktx ) as matTXT

}
