@EndUserText.label: 'Travel BO projection view'
@AccessControl.authorizationCheck: #NOT_ALLOWED
@Metadata.allowExtensions: true
@Search.searchable: true
define root view entity ZC_RAP_Travel_1122
  as projection on ZI_RAP_Travel_1122 as Travel
{
  key TravelUUID,
      @Search.defaultSearchElement: true
      TravelID,
      //5.hafta (dış verilerle genişletme) örneğimiz için bu kısımdakileri yoruma alıp ekleme yaptık.
      //@Consumption.valueHelpDefinition: [{ entity : {name: '/DMO/I_Agency', element: 'AgencyID'} }]
      @Consumption.valueHelpDefinition: [{ entity : {name: 'zce_rap_agency_1122', element: 'AgencyId' } }]
      //@ObjectModel.text.element: [ 'AgencyName' ]
      @Search.defaultSearchElement: true
      AgencyID,
      //_Agency.Name       as AgencyName,
      @Consumption.valueHelpDefinition: [{ entity : {name: '/DMO/I_Customer', element: 'CustomerID'} }]
      @ObjectModel.text.element: [ 'CustomerName' ]
      @Search.defaultSearchElement: true
      CustomerID,
      _Customer.LastName as CustomerName,
      BeginDate,
      EndDate,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      BookingFee,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      TotalPrice,
      @Consumption.valueHelpDefinition: [{ entity : {name: 'I_Currency', element: 'Currency'} }]
      CurrencyCode,
      Description,
      TravelStatus,
      CreatedBy,
      CreatedAt,
      LastChangedBy,
      LastChangedAt,
      LocalLastChangedAt,
      /* Associations */
      _Agency,
      _Booking : redirected to composition child ZC_RAP_Booking_1122,
      _Currency,
      _Customer
}
