import 'package:jaguar_retrofit/annotations/annotations.dart';
import 'package:jaguar_retrofit/jaguar_retrofit.dart';
import 'package:jaguar_serializer/jaguar_serializer.dart';
import 'package:jaguar_mimetype/jaguar_mimetype.dart';
import 'dart:async';

import 'package:yapily_sdk/model/application.dart';
import 'package:yapily_sdk/model/response_entity.dart';

part 'applications_api.jretro.dart';

@GenApiClient()
class ApplicationsApi extends ApiClient with _$ApplicationsApiClient {
    final Route base;
    final Map<String, CodecRepo> converters;
    final Duration timeout;

    ApplicationsApi({this.base, this.converters, this.timeout = const Duration(minutes: 2)});

    /// Returns the details of the application that owns the request credentials
    ///
    /// 
    @GetReq(path: "/me", metadata: {"auth": [ {"type": "http", "name": "basicAuth" },  {"type": "oauth2", "name": "tokenAuth" }]})
    Future<Application> getApplicationMeUsingGET(
        ) {
        return super.getApplicationMeUsingGET(

        ).timeout(timeout);
    }

    /// JSON Web Key Set (JWKS) for authenticated application
    ///
    /// 
    @GetReq(path: "/jwks", metadata: {"auth": [ {"type": "http", "name": "basicAuth" },  {"type": "oauth2", "name": "tokenAuth" }]})
    Future<Object> getJwksUsingGET(
        ) {
        return super.getJwksUsingGET(

        ).timeout(timeout);
    }

    /// Revoke existing access tokens for application, which will also generate a new public key discoverable via /jwks
    ///
    /// 
    @PostReq(path: "/revoke-tokens", metadata: {"auth": [ {"type": "http", "name": "basicAuth" },  {"type": "oauth2", "name": "tokenAuth" }]})
    Future<ResponseEntity> revokeTokensUsingPOST(
        ) {
        return super.revokeTokensUsingPOST(

        ).timeout(timeout);
    }


}
