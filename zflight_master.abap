@EndUserText.label : 'Flights Master Table'
@AbapCatalog.enhancementCategory : #NOT_EXTENSIBLE
@AbapCatalog.tableCategory : #TRANSPARENT
@AbapCatalog.deliveryClass : #A
@AbapCatalog.dataMaintenance : #RESTRICTED
define table zflight_master {
  key client        : abap.clnt not null;
  key carrier_id    : /dmo/carrier_id not null;
  key connection_id : /dmo/connection_id not null;
  key flight_date   : /dmo/flight_date not null;
  @Semantics.amount.currencyCode : '/dmo/flight.currency_code'
  price             : /dmo/flight_price;
  currency_code     : /dmo/currency_code;
  plane_type_id     : /dmo/plane_type_id;
  seats_max         : /dmo/plane_seats_max;
  seats_occupied    : /dmo/plane_seats_occupied;
}
