import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'other_fee_type.jser.dart';

class OtherFeeType {
  
  @Alias('Code', isNullable: false,  )
  final String code;
  
  @Alias('Description', isNullable: false,  )
  final String description;
  
  @Alias('Name', isNullable: false,  )
  final String name;
  

  OtherFeeType(
      

{
     this.code = null,  
     this.description = null,  
     this.name = null 
    
    }
  );

  @override
  String toString() {
    return 'OtherFeeType[code=$code, description=$description, name=$name, ]';
  }
}

@GenSerializer(nullableFields: true)
class OtherFeeTypeSerializer extends Serializer<OtherFeeType> with _$OtherFeeTypeSerializer {

}

