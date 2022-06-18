@AbapCatalog.sqlViewName: 'ZA2ISALESORDER'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'CDS View mit alter Syntax'
define view ZA2_I_SALESORDER
  as select from vbak
{
  key vbeln
}
