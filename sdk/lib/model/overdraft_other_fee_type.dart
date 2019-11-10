import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'overdraft_other_fee_type.jser.dart';

class OverdraftOtherFeeType {
  
  @Alias('Code', isNullable: false,  )
  final String code;
  
  @Alias('Description', isNullable: false,  )
  final String description;
  
  @Alias('Name', isNullable: false,  )
  final String name;
  

  OverdraftOtherFeeType(
      

{
     this.code = null,  
     this.description = null,  
     this.name = null 
    
    }
  );

  @override
  String toString() {
    return 'OverdraftOtherFeeType[code=$code, description=$description, name=$name, ]';
  }
}

@GenSerializer(nullableFields: true)
class OverdraftOtherFeeTypeSerializer extends Serializer<OverdraftOtherFeeType> with _$OverdraftOtherFeeTypeSerializer {

}

