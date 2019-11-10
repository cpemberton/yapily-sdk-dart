import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'iso_code_details.jser.dart';

class IsoCodeDetails {
  
  @Alias('code', isNullable: false,  )
  final String code;
  
  @Alias('name', isNullable: false,  )
  final String name;
  

  IsoCodeDetails(
      

{
     this.code = null,  
     this.name = null 
    
    }
  );

  @override
  String toString() {
    return 'IsoCodeDetails[code=$code, name=$name, ]';
  }
}

@GenSerializer(nullableFields: true)
class IsoCodeDetailsSerializer extends Serializer<IsoCodeDetails> with _$IsoCodeDetailsSerializer {

}

