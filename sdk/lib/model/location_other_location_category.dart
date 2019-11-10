import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'location_other_location_category.jser.dart';

class LocationOtherLocationCategory {
  
  @Alias('Code', isNullable: false,  )
  final String code;
  
  @Alias('Description', isNullable: false,  )
  final String description;
  
  @Alias('Name', isNullable: false,  )
  final String name;
  

  LocationOtherLocationCategory(
      

{
     this.code = null,  
     this.description = null,  
     this.name = null 
    
    }
  );

  @override
  String toString() {
    return 'LocationOtherLocationCategory[code=$code, description=$description, name=$name, ]';
  }
}

@GenSerializer(nullableFields: true)
class LocationOtherLocationCategorySerializer extends Serializer<LocationOtherLocationCategory> with _$LocationOtherLocationCategorySerializer {

}

