import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'consent_auth_code_request.jser.dart';

class ConsentAuthCodeRequest {
  
  @Alias('authCode', isNullable: false,  )
  final String authCode;
  
  @Alias('authState', isNullable: false,  )
  final String authState;
  

  ConsentAuthCodeRequest(
      

{
    
     this.authCode = null,  
     this.authState = null 
    }
  );

  @override
  String toString() {
    return 'ConsentAuthCodeRequest[authCode=$authCode, authState=$authState, ]';
  }
}

@GenSerializer(nullableFields: true)
class ConsentAuthCodeRequestSerializer extends Serializer<ConsentAuthCodeRequest> with _$ConsentAuthCodeRequestSerializer {

}

