import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'inline_response2001_other_accessibility.jser.dart';

class InlineResponse2001OtherAccessibility {
  
  @Alias('Code', isNullable: false,  )
  final String code;
  
  @Alias('Description', isNullable: false,  )
  final String description;
  
  @Alias('Name', isNullable: false,  )
  final String name;
  

  InlineResponse2001OtherAccessibility(
      

{
     this.code = null,  
     this.description = null,  
     this.name = null 
    
    }
  );

  @override
  String toString() {
    return 'InlineResponse2001OtherAccessibility[code=$code, description=$description, name=$name, ]';
  }
}

@GenSerializer(nullableFields: true)
class InlineResponse2001OtherAccessibilitySerializer extends Serializer<InlineResponse2001OtherAccessibility> with _$InlineResponse2001OtherAccessibilitySerializer {

}

