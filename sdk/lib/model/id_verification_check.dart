import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'id_verification_check.jser.dart';

class IDVerificationCheck {
  
  @Alias('Notes', isNullable: false,  )
  final List<String> notes;
  
  @Alias('URL', isNullable: false,  )
  final String URL;
  

  IDVerificationCheck(
      

{
     this.notes = const [],  
     this.URL = null 
    
    }
  );

  @override
  String toString() {
    return 'IDVerificationCheck[notes=$notes, URL=$URL, ]';
  }
}

@GenSerializer(nullableFields: true)
class IDVerificationCheckSerializer extends Serializer<IDVerificationCheck> with _$IDVerificationCheckSerializer {

}

