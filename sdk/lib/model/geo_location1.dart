import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:yapily_sdk/model/geographic_coordinates1.dart';

part 'geo_location1.jser.dart';

class GeoLocation1 {
  
  @Alias('GeographicCoordinates', isNullable: false,  )
  final GeographicCoordinates1 geographicCoordinates;
  

  GeoLocation1(
      

{
     this.geographicCoordinates = null 
    
    }
  );

  @override
  String toString() {
    return 'GeoLocation1[geographicCoordinates=$geographicCoordinates, ]';
  }
}

@GenSerializer(nullableFields: true)
class GeoLocation1Serializer extends Serializer<GeoLocation1> with _$GeoLocation1Serializer {

}

