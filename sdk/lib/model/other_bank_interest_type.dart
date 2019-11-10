import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'other_bank_interest_type.jser.dart';

class OtherBankInterestType {
  
  @Alias('Code', isNullable: false,  )
  final String code;
  
  @Alias('Description', isNullable: false,  )
  final String description;
  
  @Alias('Name', isNullable: false,  )
  final String name;
  

  OtherBankInterestType(
      

{
     this.code = null,  
     this.description = null,  
     this.name = null 
    
    }
  );

  @override
  String toString() {
    return 'OtherBankInterestType[code=$code, description=$description, name=$name, ]';
  }
}

@GenSerializer(nullableFields: true)
class OtherBankInterestTypeSerializer extends Serializer<OtherBankInterestType> with _$OtherBankInterestTypeSerializer {

}

