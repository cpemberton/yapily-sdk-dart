# yapily_sdk.api.ConsentsApi

## Load the API package
```dart
import 'package:yapily_sdk/api.dart';
```

All URIs are relative to *https://api.yapily.com:443*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addConsentUsingPOST**](ConsentsApi.md#addConsentUsingPOST) | **POST** /users/{userUuid}/consents | Post consent
[**deleteUsingDELETE**](ConsentsApi.md#deleteUsingDELETE) | **DELETE** /users/{userUuid}/consents/{consentToken} | Delete consent
[**getUserConsentsUsingGET**](ConsentsApi.md#getUserConsentsUsingGET) | **GET** /users/{userUuid}/consents | Get user consents


# **addConsentUsingPOST**
> Consent addConsentUsingPOST(userUuid, createConsentApiKey)

Post consent

### Example 
```dart
import 'package:yapily_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//yapily_sdk.api.Configuration.username = 'YOUR_USERNAME';
//yapily_sdk.api.Configuration.password = 'YOUR_PASSWORD';

var api_instance = new ConsentsApi();
var userUuid = userUuid_example; // String | userUuid
var createConsentApiKey = new CreateConsentApiKey(); // CreateConsentApiKey | createConsentApiKey

try { 
    var result = api_instance.addConsentUsingPOST(userUuid, createConsentApiKey);
    print(result);
} catch (e) {
    print("Exception when calling ConsentsApi->addConsentUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userUuid** | **String**| userUuid | 
 **createConsentApiKey** | [**CreateConsentApiKey**](CreateConsentApiKey.md)| createConsentApiKey | 

### Return type

[**Consent**](Consent.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteUsingDELETE**
> Object deleteUsingDELETE(userUuid, consentToken)

Delete consent

### Example 
```dart
import 'package:yapily_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//yapily_sdk.api.Configuration.username = 'YOUR_USERNAME';
//yapily_sdk.api.Configuration.password = 'YOUR_PASSWORD';

var api_instance = new ConsentsApi();
var userUuid = userUuid_example; // String | userUuid
var consentToken = consentToken_example; // String | consentToken

try { 
    var result = api_instance.deleteUsingDELETE(userUuid, consentToken);
    print(result);
} catch (e) {
    print("Exception when calling ConsentsApi->deleteUsingDELETE: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userUuid** | **String**| userUuid | 
 **consentToken** | **String**| consentToken | 

### Return type

[**Object**](Object.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserConsentsUsingGET**
> List<Consent> getUserConsentsUsingGET(userUuid, institutionId)

Get user consents

### Example 
```dart
import 'package:yapily_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//yapily_sdk.api.Configuration.username = 'YOUR_USERNAME';
//yapily_sdk.api.Configuration.password = 'YOUR_PASSWORD';

var api_instance = new ConsentsApi();
var userUuid = userUuid_example; // String | userUuid
var institutionId = institutionId_example; // String | institutionId

try { 
    var result = api_instance.getUserConsentsUsingGET(userUuid, institutionId);
    print(result);
} catch (e) {
    print("Exception when calling ConsentsApi->getUserConsentsUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userUuid** | **String**| userUuid | 
 **institutionId** | **String**| institutionId | [optional] 

### Return type

[**List<Consent>**](Consent.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

