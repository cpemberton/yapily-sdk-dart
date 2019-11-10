import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'other_fee_rate_type.jser.dart';

class OtherFeeRateType {
  
  @Alias('Code', isNullable: false,  )
  final String code;
  
  @Alias('Description', isNullable: false,  )
  final String description;
  
  @Alias('Name', isNullable: false,  )
  final String name;
  

  OtherFeeRateType(
      

{
     this.code = null,  
     this.description = null,  
     this.name = null 
    
    }
  );

  @override
  String toString() {
    return 'OtherFeeRateType[code=$code, description=$description, name=$name, ]';
  }
}

@GenSerializer(nullableFields: true)
class OtherFeeRateTypeSerializer extends Serializer<OtherFeeRateType> with _$OtherFeeRateTypeSerializer {

}

