import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'geographic_coordinates1.jser.dart';

class GeographicCoordinates1 {
  
  @Alias('Latitude', isNullable: false,  )
  final String latitude;
  
  @Alias('Longitude', isNullable: false,  )
  final String longitude;
  

  GeographicCoordinates1(
      

{
     this.latitude = null,  
     this.longitude = null 
    
    }
  );

  @override
  String toString() {
    return 'GeographicCoordinates1[latitude=$latitude, longitude=$longitude, ]';
  }
}

@GenSerializer(nullableFields: true)
class GeographicCoordinates1Serializer extends Serializer<GeographicCoordinates1> with _$GeographicCoordinates1Serializer {

}

