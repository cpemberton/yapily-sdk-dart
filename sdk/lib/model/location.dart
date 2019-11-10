import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:yapily_sdk/model/location_other_location_category.dart';

import 'package:yapily_sdk/model/site.dart';

import 'package:yapily_sdk/model/postal_address1.dart';

import 'package:yapily_sdk/model/atm_map_service_links.dart';

part 'location.jser.dart';

class Location {
  
  @Alias('LocationCategory', isNullable: false,
          
             processor:  const List<String>FieldProcessor(),
          
  )
  final List<String> locationCategory;
  //enum locationCategoryEnum {  BranchExternal,  BranchInternal,  BranchLobby,  Other,  RetailerOutlet,  RemoteUnit,  };
  @Alias('OtherLocationCategory', isNullable: false,  )
  final List<LocationOtherLocationCategory> otherLocationCategory;
  
  @Alias('PostalAddress', isNullable: false,  )
  final PostalAddress1 postalAddress;
  
  @Alias('Site', isNullable: false,  )
  final Site site;
  
  @Alias('mapServiceLinks', isNullable: false,  )
  final ATMMapServiceLinks mapServiceLinks;
  

  Location(
      

{
     this.locationCategory = const [],  
     this.otherLocationCategory = const [],  
     this.postalAddress = null,  
     this.site = null,  
     this.mapServiceLinks = null 
    
    }
  );

  @override
  String toString() {
    return 'Location[locationCategory=$locationCategory, otherLocationCategory=$otherLocationCategory, postalAddress=$postalAddress, site=$site, mapServiceLinks=$mapServiceLinks, ]';
  }
}

@GenSerializer(nullableFields: true)
class LocationSerializer extends Serializer<Location> with _$LocationSerializer {

}

