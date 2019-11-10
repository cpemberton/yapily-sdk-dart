import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:yapily_sdk/model/geo_location1.dart';

part 'postal_address1.jser.dart';

class PostalAddress1 {
  
  @Alias('AddressLine', isNullable: false,  )
  final List<String> addressLine;
  
  @Alias('BuildingNumber', isNullable: false,  )
  final String buildingNumber;
  
  @Alias('Country', isNullable: false,  )
  final String country;
  
  @Alias('CountrySubDivision', isNullable: false,  )
  final List<String> countrySubDivision;
  
  @Alias('GeoLocation', isNullable: false,  )
  final GeoLocation1 geoLocation;
  
  @Alias('PostCode', isNullable: false,  )
  final String postCode;
  
  @Alias('StreetName', isNullable: false,  )
  final String streetName;
  
  @Alias('TownName', isNullable: false,  )
  final String townName;
  

  PostalAddress1(
      

{
     this.addressLine = const [],  
     this.buildingNumber = null,  
     this.country = null,  
     this.countrySubDivision = const [],  
     this.geoLocation = null,  
     this.postCode = null,  
     this.streetName = null,  
     this.townName = null 
    
    }
  );

  @override
  String toString() {
    return 'PostalAddress1[addressLine=$addressLine, buildingNumber=$buildingNumber, country=$country, countrySubDivision=$countrySubDivision, geoLocation=$geoLocation, postCode=$postCode, streetName=$streetName, townName=$townName, ]';
  }
}

@GenSerializer(nullableFields: true)
class PostalAddress1Serializer extends Serializer<PostalAddress1> with _$PostalAddress1Serializer {

}

