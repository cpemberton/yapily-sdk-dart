import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'yapily_access_token.jser.dart';

class YapilyAccessToken {
  
  @Alias('access_token', isNullable: false,  )
  final String accessToken;
  
  @Alias('expires_in', isNullable: false,  )
  final int expiresIn;
  
  @Alias('jti', isNullable: false,  )
  final String jti;
  
  @Alias('scope', isNullable: false,  )
  final String scope;
  
  @Alias('token_type', isNullable: false,  )
  final String tokenType;
  

  YapilyAccessToken(
      

{
     this.accessToken = null,  
     this.expiresIn = null,  
     this.jti = null,  
     this.scope = null,  
     this.tokenType = null 
    
    }
  );

  @override
  String toString() {
    return 'YapilyAccessToken[accessToken=$accessToken, expiresIn=$expiresIn, jti=$jti, scope=$scope, tokenType=$tokenType, ]';
  }
}

@GenSerializer(nullableFields: true)
class YapilyAccessTokenSerializer extends Serializer<YapilyAccessToken> with _$YapilyAccessTokenSerializer {

}

