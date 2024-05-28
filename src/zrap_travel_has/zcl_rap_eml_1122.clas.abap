CLASS zcl_rap_eml_1122 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_RAP_EML_1122 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    "step 1 - READ
*    READ ENTITIES OF zi_rap_travel_1122
*     ENTITY Travel
*      FROM VALUE #( ( TravelUUID = '74A025A0799075DB1800133A36269004' ) )
*     RESULT DATA(travels).
*
*    out->write( travels ).

    "step 2 - READ with fields
*    READ ENTITIES OF zi_rap_travel_1122
*     ENTITY Travel
*      FIELDS ( AgencyID CustomerID )
*     WITH VALUE #( ( TravelUUID = '74A025A0799075DB1800133A36269004' ) )
*     RESULT DATA(travels).
*
*    out->write( travels ).

    "step 3 - READ with All fields
*     READ ENTITIES OF zi_rap_travel_1122
*      ENTITY Travel
*       All FIELDS WITH VALUE #( ( TravelUUID = '74A025A0799075DB1800133A36269004' ) )
*      RESULT DATA(travels).
*
*    out->write( travels ).

    "step 4 - READ By Association
*     READ ENTITIES OF zi_rap_travel_1122
*      ENTITY Travel BY \_Booking
*       All FIELDS WITH VALUE #( ( TravelUUID = '74A025A0799075DB1800133A36269004' ) )
*      RESULT DATA(travels).
*
*    out->write( travels ).

    "step 5 - Unsuccesful READ
*    READ ENTITIES OF zi_rap_travel_1122
*     ENTITY Travel
*      ALL FIELDS WITH VALUE #( ( TravelUUID = '11111111111111111111111111111111' ) )
*     RESULT DATA(travels)
*     FAILED DATA(failed)
*     REPORTED DATA(reported).
*
**    out->write( travels ).
*    out->write( failed ).   "complex structures not supported by the console output
*    out->write( reported ). "complex structures not supported by the console output
*

*    "step 6 - MODIFY Update
*     MODIFY ENTITIES OF ZI_RAP_Travel_1122
*       ENTITY travel
*         UPDATE
*           SET FIELDS WITH VALUE
*             #( ( TravelUUID  = '74A025A0799075DB1800133A36269004'
*                  Description = 'I like RAP@openSAP' ) )
*
*      FAILED DATA(failed)
*      REPORTED DATA(reported).
*
*     out->write( 'Update done' ).
*
*    "step 6b - Commit Entities
*     COMMIT ENTITIES
*       RESPONSE OF ZI_RAP_Travel_1122
*       FAILED     DATA(failed_commit)
*       REPORTED   DATA(reported_commit).

    " step 7 - MODIFY Create
*    MODIFY ENTITIES OF ZI_RAP_Travel_1122
*      ENTITY travel
*        CREATE
*          SET FIELDS WITH VALUE
*            #( ( %cid        = 'MyContentID_1'
*                 AgencyID    = '70012'
*                 CustomerID  = '14'
*                 BeginDate   = cl_abap_context_info=>get_system_date( )
*                 EndDate     = cl_abap_context_info=>get_system_date( ) + 10
*                 Description = 'I like RAP@openSAP' ) )
*
*     MAPPED DATA(mapped)
*     FAILED DATA(failed)
*     REPORTED DATA(reported).
*
*    out->write( mapped-travel ).
*
*    COMMIT ENTITIES
*      RESPONSE OF ZI_RAP_Travel_1122
*      FAILED     DATA(failed_commit)
*      REPORTED   DATA(reported_commit).
*
*    out->write( 'Create done' ).

    " step 8 - MODIFY Delete
*    MODIFY ENTITIES OF ZI_RAP_Travel_1122
*      ENTITY travel
*        DELETE FROM
*          VALUE
*            #( ( TravelUUID  = 'CA32A1F7715B1EDEBFCED7EB8C55AB2E' ) )
*
*     FAILED DATA(failed)
*     REPORTED DATA(reported).
*
*    COMMIT ENTITIES
*      RESPONSE OF ZI_RAP_Travel_1122
*      FAILED     DATA(failed_commit)
*      REPORTED   DATA(reported_commit).
*
*    out->write( 'Delete done' ).

  ENDMETHOD.
ENDCLASS.
