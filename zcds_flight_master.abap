@AbapCatalog.sqlViewName: 'ZVIEW_FLT_MASTER'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_ALLOWED
@EndUserText.label: 'CDS - Flight Master'
define root view zcds_flight_master as select from zflight_master 
association [0..1] to /DMO/I_Carrier as _carrier on $projection.carrier_id = _carrier.AirlineID
{
    key carrier_id,
    key connection_id,
    key flight_date,
    price,
    currency_code,
    plane_type_id,
    seats_max,
    seats_occupied,
    _carrier.Name as CarrierName    
}
