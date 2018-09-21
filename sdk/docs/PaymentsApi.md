# yapily_sdk.api.PaymentsApi

## Load the API package
```dart
import 'package:yapily_sdk/api.dart';
```

All URIs are relative to *https://api.yapily.com:443*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createPaymentInitiationUsingPOST**](PaymentsApi.md#createPaymentInitiationUsingPOST) | **POST** /initiate-payment-sortcode | Initiate a new single payment for user to authorise
[**createPaymentUsingPOST**](PaymentsApi.md#createPaymentUsingPOST) | **POST** /payment-sortcode | Create a new single payment
[**getPaymentInitiationStatusUsingGET**](PaymentsApi.md#getPaymentInitiationStatusUsingGET) | **GET** /payment-initiations/{paymentId} | Get status of a payment initiation
[**getPaymentStatusUsingGET**](PaymentsApi.md#getPaymentStatusUsingGET) | **GET** /payments/{paymentId} | Get status of a payment


# **createPaymentInitiationUsingPOST**
> ApiResponseOfPaymentResponse createPaymentInitiationUsingPOST(institution, paymentRequest, userUuid, callback)

Initiate a new single payment for user to authorise

### Example 
```dart
import 'package:yapily_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//yapily_sdk.api.Configuration.username = 'YOUR_USERNAME';
//yapily_sdk.api.Configuration.password = 'YOUR_PASSWORD';

var api_instance = new PaymentsApi();
var institution = institution_example; // String | institution
var paymentRequest = new SortCodePaymentRequest(); // SortCodePaymentRequest | paymentRequest
var userUuid = userUuid_example; // String | user-uuid
var callback = callback_example; // String | callback

try { 
    var result = api_instance.createPaymentInitiationUsingPOST(institution, paymentRequest, userUuid, callback);
    print(result);
} catch (e) {
    print("Exception when calling PaymentsApi->createPaymentInitiationUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **institution** | **String**| institution | 
 **paymentRequest** | [**SortCodePaymentRequest**](SortCodePaymentRequest.md)| paymentRequest | [optional] 
 **userUuid** | **String**| user-uuid | [optional] 
 **callback** | **String**| callback | [optional] 

### Return type

[**ApiResponseOfPaymentResponse**](ApiResponseOfPaymentResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createPaymentUsingPOST**
> ApiResponseOfPaymentResponse createPaymentUsingPOST(consent, paymentRequest)

Create a new single payment

### Example 
```dart
import 'package:yapily_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//yapily_sdk.api.Configuration.username = 'YOUR_USERNAME';
//yapily_sdk.api.Configuration.password = 'YOUR_PASSWORD';

var api_instance = new PaymentsApi();
var consent = consent_example; // String | Consent Token
var paymentRequest = new SortCodePaymentRequest(); // SortCodePaymentRequest | paymentRequest

try { 
    var result = api_instance.createPaymentUsingPOST(consent, paymentRequest);
    print(result);
} catch (e) {
    print("Exception when calling PaymentsApi->createPaymentUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **consent** | **String**| Consent Token | 
 **paymentRequest** | [**SortCodePaymentRequest**](SortCodePaymentRequest.md)| paymentRequest | [optional] 

### Return type

[**ApiResponseOfPaymentResponse**](ApiResponseOfPaymentResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPaymentInitiationStatusUsingGET**
> ApiResponseOfPaymentResponse getPaymentInitiationStatusUsingGET(institution, paymentId)

Get status of a payment initiation

### Example 
```dart
import 'package:yapily_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//yapily_sdk.api.Configuration.username = 'YOUR_USERNAME';
//yapily_sdk.api.Configuration.password = 'YOUR_PASSWORD';

var api_instance = new PaymentsApi();
var institution = institution_example; // String | institution
var paymentId = paymentId_example; // String | paymentId

try { 
    var result = api_instance.getPaymentInitiationStatusUsingGET(institution, paymentId);
    print(result);
} catch (e) {
    print("Exception when calling PaymentsApi->getPaymentInitiationStatusUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **institution** | **String**| institution | 
 **paymentId** | **String**| paymentId | 

### Return type

[**ApiResponseOfPaymentResponse**](ApiResponseOfPaymentResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPaymentStatusUsingGET**
> ApiResponseOfPaymentResponse getPaymentStatusUsingGET(paymentId, consent)

Get status of a payment

### Example 
```dart
import 'package:yapily_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//yapily_sdk.api.Configuration.username = 'YOUR_USERNAME';
//yapily_sdk.api.Configuration.password = 'YOUR_PASSWORD';

var api_instance = new PaymentsApi();
var paymentId = paymentId_example; // String | paymentId
var consent = consent_example; // String | Consent Token

try { 
    var result = api_instance.getPaymentStatusUsingGET(paymentId, consent);
    print(result);
} catch (e) {
    print("Exception when calling PaymentsApi->getPaymentStatusUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **paymentId** | **String**| paymentId | 
 **consent** | **String**| Consent Token | 

### Return type

[**ApiResponseOfPaymentResponse**](ApiResponseOfPaymentResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

