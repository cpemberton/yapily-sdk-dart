import 'package:jaguar_retrofit/annotations/annotations.dart';
import 'package:jaguar_retrofit/jaguar_retrofit.dart';
import 'package:jaguar_serializer/jaguar_serializer.dart';
import 'package:jaguar_mimetype/jaguar_mimetype.dart';
import 'dart:async';

import 'package:yapily_sdk/model/yapily_access_token.dart';

part 'o_auth_api.jretro.dart';

@GenApiClient()
class OAuthApi extends ApiClient with _$OAuthApiClient {
    final Route base;
    final Map<String, CodecRepo> converters;
    final Duration timeout;

    OAuthApi({this.base, this.converters, this.timeout = const Duration(minutes: 2)});

    /// Retrieve Access Token
    ///
    /// 
    @PostReq(path: "/oauth/token", metadata: {"auth": [ {"type": "http", "name": "basicAuth" }]})
    Future<YapilyAccessToken> oauthToken(
            
            @AsFormField() String grantType
        ) {
        return super.oauthToken(

        
        grantType
        ).timeout(timeout);
    }


}
