import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'inline_response2001_other_atm_services.jser.dart';

class InlineResponse2001OtherATMServices {
  
  @Alias('Code', isNullable: false,  )
  final String code;
  
  @Alias('Description', isNullable: false,  )
  final String description;
  
  @Alias('Name', isNullable: false,  )
  final String name;
  

  InlineResponse2001OtherATMServices(
      

{
     this.code = null,  
     this.description = null,  
     this.name = null 
    
    }
  );

  @override
  String toString() {
    return 'InlineResponse2001OtherATMServices[code=$code, description=$description, name=$name, ]';
  }
}

@GenSerializer(nullableFields: true)
class InlineResponse2001OtherATMServicesSerializer extends Serializer<InlineResponse2001OtherATMServices> with _$InlineResponse2001OtherATMServicesSerializer {

}

