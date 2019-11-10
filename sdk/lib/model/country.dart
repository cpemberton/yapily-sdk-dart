import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'country.jser.dart';

class Country {
  
  @Alias('countryCode2', isNullable: false,  )
  final String countryCode2;
  
  @Alias('displayName', isNullable: false,  )
  final String displayName;
  

  Country(
      

{
     this.countryCode2 = null,  
     this.displayName = null 
    
    }
  );

  @override
  String toString() {
    return 'Country[countryCode2=$countryCode2, displayName=$displayName, ]';
  }
}

@GenSerializer(nullableFields: true)
class CountrySerializer extends Serializer<Country> with _$CountrySerializer {

}

