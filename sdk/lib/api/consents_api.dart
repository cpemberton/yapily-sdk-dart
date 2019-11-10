import 'package:jaguar_retrofit/annotations/annotations.dart';
import 'package:jaguar_retrofit/jaguar_retrofit.dart';
import 'package:jaguar_serializer/jaguar_serializer.dart';
import 'package:jaguar_mimetype/jaguar_mimetype.dart';
import 'dart:async';

import 'package:yapily_sdk/model/consent_auth_code_request.dart';
import 'package:yapily_sdk/model/api_response_of_consent_delete_response.dart';
import 'package:yapily_sdk/model/api_response_of_consent.dart';
import 'package:yapily_sdk/model/one_time_token_request.dart';
import 'package:yapily_sdk/model/create_consent_access_token.dart';
import 'package:yapily_sdk/model/consent.dart';
import 'package:yapily_sdk/model/api_list_response_of_consent.dart';

part 'consents_api.jretro.dart';

@GenApiClient()
class ConsentsApi extends ApiClient with _$ConsentsApiClient {
    final Route base;
    final Map<String, CodecRepo> converters;
    final Duration timeout;

    ConsentsApi({this.base, this.converters, this.timeout = const Duration(minutes: 2)});

    /// Post consent
    ///
    /// 
    @PostReq(path: "/users/:userUuid/consents", metadata: {"auth": [ {"type": "http", "name": "basicAuth" },  {"type": "oauth2", "name": "tokenAuth" }]})
    Future<Consent> addConsentUsingPOST(
            @PathParam("userUuid") String userUuid
            ,
             @AsJson() CreateConsentAccessToken createConsentAccessToken
        ) {
        return super.addConsentUsingPOST(
        userUuid

        ,
        createConsentAccessToken
        ).timeout(timeout);
    }

    /// Post auth-code and auth-state
    ///
    /// 
    @PostReq(path: "/consent-auth-code", metadata: {"auth": [ {"type": "http", "name": "basicAuth" },  {"type": "oauth2", "name": "tokenAuth" }]})
    Future<Consent> createConsentWithCodeUsingPOST(
            
             @AsJson() ConsentAuthCodeRequest consentByAuthCode
        ) {
        return super.createConsentWithCodeUsingPOST(

        
        consentByAuthCode
        ).timeout(timeout);
    }

    /// Delete consent
    ///
    /// 
    @DeleteReq(path: "/consents/:consentId", metadata: {"auth": [ {"type": "http", "name": "basicAuth" },  {"type": "oauth2", "name": "tokenAuth" }]})
    Future<ApiResponseOfConsentDeleteResponse> deleteUsingDELETE(
            @PathParam("consentId") String consentId
        ,
            @QueryParam("forceDelete") bool forceDelete
        ) {
        return super.deleteUsingDELETE(
        consentId
        ,
        forceDelete

        ).timeout(timeout);
    }

    /// Get consent
    ///
    /// 
    @GetReq(path: "/consents/:consentId", metadata: {"auth": [ {"type": "http", "name": "basicAuth" },  {"type": "oauth2", "name": "tokenAuth" }]})
    Future<ApiResponseOfConsent> getConsentByIdUsingGET(
            @PathParam("consentId") String consentId
        ) {
        return super.getConsentByIdUsingGET(
        consentId

        ).timeout(timeout);
    }

    /// Post one time token
    ///
    /// 
    @PostReq(path: "/consent-one-time-token", metadata: {"auth": [ {"type": "http", "name": "basicAuth" },  {"type": "oauth2", "name": "tokenAuth" }]})
    Future<Consent> getConsentBySingleAccessConsentUsingPOST(
            
             @AsJson() OneTimeTokenRequest oneTimeToken
        ) {
        return super.getConsentBySingleAccessConsentUsingPOST(

        
        oneTimeToken
        ).timeout(timeout);
    }

    /// Get consents sorted by creation date
    ///
    /// 
    @GetReq(path: "/consents", metadata: {"auth": [ {"type": "http", "name": "basicAuth" },  {"type": "oauth2", "name": "tokenAuth" }]})
    Future<ApiListResponseOfConsent> getConsentsUsingGET(
        
            @QueryParam("filter[applicationUserId]") List<String> filter[applicationUserId], 
        
            @QueryParam("filter[userUuid]") List<String> filter[userUuid], 
        
            @QueryParam("filter[institution]") List<String> filter[institution], 
        
            @QueryParam("filter[status]") List<String> filter[status], 
        
            @QueryParam("from") String from, 
        
            @QueryParam("before") String before, 
        
            @QueryParam("limit") int limit, 
        
            @QueryParam("offset") int offset
        ) {
        return super.getConsentsUsingGET(
        
        filter[applicationUserId], 
        
        filter[userUuid], 
        
        filter[institution], 
        
        filter[status], 
        
        from, 
        
        before, 
        
        limit, 
        
        offset

        ).timeout(timeout);
    }

    /// Get latest user consents
    ///
    /// 
    @GetReq(path: "/users/:userUuid/consents", metadata: {"auth": [ {"type": "http", "name": "basicAuth" },  {"type": "oauth2", "name": "tokenAuth" }]})
    Future<List<Consent>> getUserConsentsUsingGET(
            @PathParam("userUuid") String userUuid
        ,
            @QueryParam("filter[institution]") String filter[institution], 
        
            @QueryParam("limit") int limit
        ) {
        return super.getUserConsentsUsingGET(
        userUuid
        ,
        filter[institution], 
        
        limit

        ).timeout(timeout);
    }


}
