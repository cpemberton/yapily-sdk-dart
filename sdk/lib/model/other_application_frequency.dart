import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'other_application_frequency.jser.dart';

class OtherApplicationFrequency {
  
  @Alias('Code', isNullable: false,  )
  final String code;
  
  @Alias('Description', isNullable: false,  )
  final String description;
  
  @Alias('Name', isNullable: false,  )
  final String name;
  

  OtherApplicationFrequency(
      

{
     this.code = null,  
     this.description = null,  
     this.name = null 
    
    }
  );

  @override
  String toString() {
    return 'OtherApplicationFrequency[code=$code, description=$description, name=$name, ]';
  }
}

@GenSerializer(nullableFields: true)
class OtherApplicationFrequencySerializer extends Serializer<OtherApplicationFrequency> with _$OtherApplicationFrequencySerializer {

}

