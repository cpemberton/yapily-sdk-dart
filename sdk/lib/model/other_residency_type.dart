import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'other_residency_type.jser.dart';

class OtherResidencyType {
  
  @Alias('Code', isNullable: false,  )
  final String code;
  
  @Alias('Description', isNullable: false,  )
  final String description;
  
  @Alias('Name', isNullable: false,  )
  final String name;
  

  OtherResidencyType(
      

{
     this.code = null,  
     this.description = null,  
     this.name = null 
    
    }
  );

  @override
  String toString() {
    return 'OtherResidencyType[code=$code, description=$description, name=$name, ]';
  }
}

@GenSerializer(nullableFields: true)
class OtherResidencyTypeSerializer extends Serializer<OtherResidencyType> with _$OtherResidencyTypeSerializer {

}

