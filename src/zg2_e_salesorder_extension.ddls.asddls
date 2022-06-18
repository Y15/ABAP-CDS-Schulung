@AbapCatalog.sqlViewAppendName: 'ZA2ESALESORDER'
@EndUserText.label: 'Erweiterung Kundenauftrag'
extend view ZA2_I_SALESORDER with ZG2_E_SALESORDER_EXTENSION {
    vbak.ernam
}
