import 'package:jaguar_retrofit/annotations/annotations.dart';
import 'package:jaguar_retrofit/jaguar_retrofit.dart';
import 'package:jaguar_serializer/jaguar_serializer.dart';
import 'package:jaguar_mimetype/jaguar_mimetype.dart';
import 'dart:async';

import 'package:yapily_sdk/model/account_authorisation_request.dart';
import 'package:yapily_sdk/model/api_list_response_of_payment_response.dart';
import 'package:yapily_sdk/model/api_response_of_account.dart';
import 'package:yapily_sdk/model/api_response_of_authorisation_request_response.dart';
import 'package:yapily_sdk/model/api_list_response_of_account.dart';

part 'accounts_api.jretro.dart';

@GenApiClient()
class AccountsApi extends ApiClient with _$AccountsApiClient {
    final Route base;
    final Map<String, CodecRepo> converters;
    final Duration timeout;

    AccountsApi({this.base, this.converters, this.timeout = const Duration(minutes: 2)});

    /// Get account direct debits
    ///
    /// 
    @GetReq(path: "/accounts/:accountId/direct-debits", metadata: {"auth": [ {"type": "http", "name": "basicAuth" },  {"type": "oauth2", "name": "tokenAuth" }]})
    Future<ApiListResponseOfPaymentResponse> getAccountDirectDebitsUsingGET(
            @PathParam("accountId") String accountId
        ,
            @Header("consent") String consent
        ,
            @QueryParam("limit") int limit
        ) {
        return super.getAccountDirectDebitsUsingGET(
        accountId
        ,
        consent
        ,
        limit

        ).timeout(timeout);
    }

    /// Get account payments detail
    ///
    /// 
    @GetReq(path: "/accounts/:accountId/periodic-payments", metadata: {"auth": [ {"type": "http", "name": "basicAuth" },  {"type": "oauth2", "name": "tokenAuth" }]})
    Future<ApiListResponseOfPaymentResponse> getAccountPeriodicPaymentsUsingGET(
            @PathParam("accountId") String accountId
        ,
            @Header("consent") String consent
        ,
            @QueryParam("limit") int limit
        ) {
        return super.getAccountPeriodicPaymentsUsingGET(
        accountId
        ,
        consent
        ,
        limit

        ).timeout(timeout);
    }

    /// Get account scheduled payments
    ///
    /// 
    @GetReq(path: "/accounts/:accountId/scheduled-payments", metadata: {"auth": [ {"type": "http", "name": "basicAuth" },  {"type": "oauth2", "name": "tokenAuth" }]})
    Future<ApiListResponseOfPaymentResponse> getAccountScheduledPaymentsUsingGET(
            @PathParam("accountId") String accountId
        ,
            @Header("consent") String consent
        ,
            @QueryParam("limit") int limit
        ) {
        return super.getAccountScheduledPaymentsUsingGET(
        accountId
        ,
        consent
        ,
        limit

        ).timeout(timeout);
    }

    /// Get account
    ///
    /// 
    @GetReq(path: "/accounts/:accountId", metadata: {"auth": [ {"type": "http", "name": "basicAuth" },  {"type": "oauth2", "name": "tokenAuth" }]})
    Future<ApiResponseOfAccount> getAccountUsingGET(
            @PathParam("accountId") String accountId
        ,
            @Header("consent") String consent
        ) {
        return super.getAccountUsingGET(
        accountId
        ,
        consent

        ).timeout(timeout);
    }

    /// Get accounts
    ///
    /// 
    @GetReq(path: "/accounts", metadata: {"auth": [ {"type": "http", "name": "basicAuth" },  {"type": "oauth2", "name": "tokenAuth" }]})
    Future<ApiListResponseOfAccount> getAccountsUsingGET(
        
            @Header("consent") String consent
        ) {
        return super.getAccountsUsingGET(
        
        consent

        ).timeout(timeout);
    }

    /// Initiate a new account request for user to authorize
    ///
    /// 
    @PostReq(path: "/account-auth-requests", metadata: {"auth": [ {"type": "http", "name": "basicAuth" },  {"type": "oauth2", "name": "tokenAuth" }]})
    Future<ApiResponseOfAuthorisationRequestResponse> initiateAccountRequestUsingPOST(
            
            @AsBody() AccountAuthorisationRequest accountAuthRequest
        ) {
        return super.initiateAccountRequestUsingPOST(

        
        accountAuthRequest
        ).timeout(timeout);
    }

    /// Re-authorize account request
    ///
    /// 
    @PatchReq(path: "/account-auth-requests", metadata: {"auth": [ {"type": "http", "name": "basicAuth" },  {"type": "oauth2", "name": "tokenAuth" }]})
    Future<ApiResponseOfAuthorisationRequestResponse> reAuthoriseAccountUsingPATCH(
        
            @Header("consent") String consent
        ) {
        return super.reAuthoriseAccountUsingPATCH(
        
        consent

        ).timeout(timeout);
    }


}
