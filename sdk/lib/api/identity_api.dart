import 'package:jaguar_retrofit/annotations/annotations.dart';
import 'package:jaguar_retrofit/jaguar_retrofit.dart';
import 'package:jaguar_serializer/jaguar_serializer.dart';
import 'package:jaguar_mimetype/jaguar_mimetype.dart';
import 'dart:async';

import 'package:yapily_sdk/model/api_response_of_identity.dart';

part 'identity_api.jretro.dart';

@GenApiClient()
class IdentityApi extends ApiClient with _$IdentityApiClient {
    final Route base;
    final Map<String, CodecRepo> converters;
    final Duration timeout;

    IdentityApi({this.base, this.converters, this.timeout = const Duration(minutes: 2)});

    /// Get identity
    ///
    /// 
    @GetReq(path: "/identity", metadata: {"auth": [ {"type": "http", "name": "basicAuth" },  {"type": "oauth2", "name": "tokenAuth" }]})
    Future<ApiResponseOfIdentity> getIdentityUsingGET(
        
            @Header("consent") String consent
        ) {
        return super.getIdentityUsingGET(
        
        consent

        ).timeout(timeout);
    }


}
