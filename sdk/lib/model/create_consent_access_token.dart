import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'create_consent_access_token.jser.dart';

class CreateConsentAccessToken {
  
  @Alias('accessToken', isNullable: false,  )
  final String accessToken;
  
  @Alias('refreshToken', isNullable: false,  )
  final String refreshToken;
  
  @Alias('institutionId', isNullable: false,  )
  final String institutionId;
  
  @Alias('scope', isNullable: false,  )
  final String scope;
  

  CreateConsentAccessToken(
      

{
    
     this.accessToken = null,  
     this.refreshToken = null,  
     this.institutionId = null,  
     this.scope = null 
    }
  );

  @override
  String toString() {
    return 'CreateConsentAccessToken[accessToken=$accessToken, refreshToken=$refreshToken, institutionId=$institutionId, scope=$scope, ]';
  }
}

@GenSerializer(nullableFields: true)
class CreateConsentAccessTokenSerializer extends Serializer<CreateConsentAccessToken> with _$CreateConsentAccessTokenSerializer {

}

