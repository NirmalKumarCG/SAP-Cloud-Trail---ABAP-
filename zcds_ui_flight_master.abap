@AbapCatalog.sqlViewName: 'ZVIEW_FLT_MASTER'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_ALLOWED
@EndUserText.label: 'CDS - Flight Master'

@UI.headerInfo : { typeName: 'Flight Master',typeNamePlural: 'Flight Master Plural' , title : { value : 'carrier_id' , type: #STANDARD } } 
@Search.searchable: true
define root view zcds_flight_master as select from zflight_master 
association [0..1] to /DMO/I_Carrier as _carrier on $projection.carrier_id = _carrier.AirlineID {

 @UI.facet: [ { id:              'IDFlight',
                purpose:         #STANDARD,
                type:            #IDENTIFICATION_REFERENCE,
                label:           'Flight Details',
                position:        10 } 
                ] 
                
                
    @UI : { lineItem: [{ label : 'Airline ID',
                         position : 10,
                         importance: #HIGH }],
            identification: [{ position : 10 }] }
    @Search.defaultSearchElement: true         
    key carrier_id,
    
    @UI : { lineItem : [{ position : 20 ,
                          importance: #HIGH }],
            selectionField: [{ position : 20 }],
            identification: [{position : 20 }] }
    @Search.defaultSearchElement: true
    @Consumption.valueHelpDefinition: [{ entity : { name : '/DMO/I_Connection' , element: 'connection_id' } }]
    key connection_id,
    
    @UI : { lineItem : [{ position : 30 ,
                          importance : #HIGH }] }
    key flight_date,
    
    @UI : { lineItem : [{ position : 40 ,
                          importance : #HIGH }] }
    price,
      
    @UI : { lineItem : [{ position : 50,
                          importance : #HIGH }] } 
    currency_code,
    
    @UI : { lineItem : [ { position : 60, 
                           importance : #HIGH }] } 
    plane_type_id,
    
    @UI : { lineItem : [{ position : 70,
                          importance : #HIGH }] } 
    seats_max,
    
    @UI : { lineItem : [{ position: 80,
                          importance : #HIGH }] }
    seats_occupied,
    
    
    @UI : { lineItem : [{ position: 90,
                          importance : #HIGH }] ,
                          identification: [{ position : 90 }] }
    _carrier.Name as CarrierName
   
  
}
