import 'package:jaguar_retrofit/annotations/annotations.dart';
import 'package:jaguar_retrofit/jaguar_retrofit.dart';
import 'package:jaguar_serializer/jaguar_serializer.dart';
import 'package:jaguar_mimetype/jaguar_mimetype.dart';
import 'dart:async';

import 'package:yapily_sdk/model/payment_authorisation_request.dart';
import 'package:yapily_sdk/model/api_response_of_payment_response.dart';
import 'package:yapily_sdk/model/payment_request.dart';
import 'package:yapily_sdk/model/api_response_of_payment_authorisation_request_response.dart';
import 'package:yapily_sdk/model/api_response_of_payment_responses.dart';
import 'package:yapily_sdk/model/sort_code_payment_request.dart';
import 'package:yapily_sdk/model/sort_code_payment_auth_request.dart';
import 'package:yapily_sdk/model/api_response_of_authorisation_request_response.dart';

part 'payments_api.jretro.dart';

@GenApiClient()
class PaymentsApi extends ApiClient with _$PaymentsApiClient {
    final Route base;
    final Map<String, CodecRepo> converters;
    final Duration timeout;

    PaymentsApi({this.base, this.converters, this.timeout = const Duration(minutes: 2)});

    /// Initiate a payment for user to authorise
    ///
    /// 
    @PostReq(path: "/payment-auth-requests", metadata: {"auth": [ {"type": "http", "name": "basicAuth" },  {"type": "oauth2", "name": "tokenAuth" }]})
    Future<ApiResponseOfPaymentAuthorisationRequestResponse> createPaymentAuthorisationUsingPOST(
            
            @AsBody() PaymentAuthorisationRequest paymentAuthRequest
        ) {
        return super.createPaymentAuthorisationUsingPOST(

        
        paymentAuthRequest
        ).timeout(timeout);
    }

    /// Initiate a new single payment for user to authorise
    ///
    /// 
    @PostReq(path: "/payment-sortcode-auth-requests", metadata: {"auth": [ {"type": "http", "name": "basicAuth" },  {"type": "oauth2", "name": "tokenAuth" }]})
    Future<ApiResponseOfAuthorisationRequestResponse> createPaymentAuthorisationWithSortCodeUsingPOST(
            
            @AsBody() SortCodePaymentAuthRequest paymentAuthRequest
        ) {
        return super.createPaymentAuthorisationWithSortCodeUsingPOST(

        
        paymentAuthRequest
        ).timeout(timeout);
    }

    /// Create a payment
    ///
    /// 
    @PostReq(path: "/payments", metadata: {"auth": [ {"type": "http", "name": "basicAuth" },  {"type": "oauth2", "name": "tokenAuth" }]})
    Future<ApiResponseOfPaymentResponse> createPaymentUsingPOST(
        
            @Header("consent") String consent
            ,
            @AsBody() PaymentRequest paymentRequest
        ) {
        return super.createPaymentUsingPOST(
        
        consent

        ,
        paymentRequest
        ).timeout(timeout);
    }

    /// Create a new single payment
    ///
    /// 
    @PostReq(path: "/payment-sortcode", metadata: {"auth": [ {"type": "http", "name": "basicAuth" },  {"type": "oauth2", "name": "tokenAuth" }]})
    Future<ApiResponseOfPaymentResponse> createPaymentWithSortCodeUsingPOST(
        
            @Header("consent") String consent
            ,
            @AsBody() SortCodePaymentRequest paymentRequest
        ) {
        return super.createPaymentWithSortCodeUsingPOST(
        
        consent

        ,
        paymentRequest
        ).timeout(timeout);
    }

    /// Get status of a payment
    ///
    /// 
    @GetReq(path: "/payments/:paymentId", metadata: {"auth": [ {"type": "http", "name": "basicAuth" },  {"type": "oauth2", "name": "tokenAuth" }]})
    Future<ApiResponseOfPaymentResponse> getPaymentStatusUsingGET(
            @PathParam("paymentId") String paymentId
        ,
            @Header("consent") String consent
        ) {
        return super.getPaymentStatusUsingGET(
        paymentId
        ,
        consent

        ).timeout(timeout);
    }

    /// Get payments detail
    ///
    /// 
    @GetReq(path: "/payments/:paymentId/details", metadata: {"auth": [ {"type": "http", "name": "basicAuth" },  {"type": "oauth2", "name": "tokenAuth" }]})
    Future<ApiResponseOfPaymentResponses> getPaymentsUsingGET(
            @PathParam("paymentId") String paymentId
        ,
            @Header("consent") String consent
        ) {
        return super.getPaymentsUsingGET(
        paymentId
        ,
        consent

        ).timeout(timeout);
    }


}
