import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'one_time_token_request.jser.dart';

class OneTimeTokenRequest {
  
  @Alias('oneTimeToken', isNullable: false,  )
  final String oneTimeToken;
  

  OneTimeTokenRequest(
      

{
    
     this.oneTimeToken = null 
    }
  );

  @override
  String toString() {
    return 'OneTimeTokenRequest[oneTimeToken=$oneTimeToken, ]';
  }
}

@GenSerializer(nullableFields: true)
class OneTimeTokenRequestSerializer extends Serializer<OneTimeTokenRequest> with _$OneTimeTokenRequestSerializer {

}

