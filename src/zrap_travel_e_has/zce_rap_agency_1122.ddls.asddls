@EndUserText.label: 'Custom entity for agencies from ES5'
@ObjectModel.query.implementedBy: 'ABAP:ZCL_CE_RAP_AGENCY_1122'
define root custom entity zce_rap_agency_1122
{
  key AgencyId       : abap.numc( 6 ) ; 
      @OData.property.valueControl: 'Name_vc'
      name           : abap.char( 31 );
      Name_vc        : rap_cp_odata_value_control;
      @OData.property.valueControl: 'Street_vc'
      street         : abap.char( 30 );
      Street_vc      : rap_cp_odata_value_control;
      @OData.property.valueControl: 'PostalCode_vc'
      postal_code     : abap.char( 10 );
      PostalCode_vc  : rap_cp_odata_value_control;
      @OData.property.valueControl: 'City_vc'
      city           : abap.char(25 );
      City_vc        : rap_cp_odata_value_control;
      @OData.property.valueControl: 'Country_vc'
      country        : abap.char(3);
      Country_vc     : rap_cp_odata_value_control;
      @OData.property.valueControl: 'PhoneNumber_vc'
      phone_number    : abap.char( 30);
      PhoneNumber_vc : rap_cp_odata_value_control;
      @OData.property.valueControl: 'WebAddress_vc'
      web_address     : abap.char( 255 );
      WebAddress_vc  : rap_cp_odata_value_control;
}
