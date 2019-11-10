# yapily_sdk.api.TransfersApi

## Load the API package
```dart
import 'package:yapily_sdk/api.dart';
```

All URIs are relative to *https://api.yapily.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**transferUsingPUT**](TransfersApi.md#transferUsingPUT) | **PUT** /accounts/{accountId}/transfer | Transfer money from one account to another account accessible with the same consent


# **transferUsingPUT**
> ApiResponseOfTransferResponse transferUsingPUT(consent, accountId, transferRequest)

Transfer money from one account to another account accessible with the same consent

### Example 
```dart
import 'package:yapily_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//yapily_sdk.api.Configuration.username = 'YOUR_USERNAME';
//yapily_sdk.api.Configuration.password = 'YOUR_PASSWORD';
// TODO Configure OAuth2 access token for authorization: tokenAuth
//yapily_sdk.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new TransfersApi();
var consent = consent_example; // String | Consent Token
var accountId = accountId_example; // String | accountId
var transferRequest = new TransferRequest(); // TransferRequest | transferRequest

try { 
    var result = api_instance.transferUsingPUT(consent, accountId, transferRequest);
    print(result);
} catch (e) {
    print("Exception when calling TransfersApi->transferUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **consent** | **String**| Consent Token | 
 **accountId** | **String**| accountId | 
 **transferRequest** | [**TransferRequest**](TransferRequest.md)| transferRequest | [optional] 

### Return type

[**ApiResponseOfTransferResponse**](ApiResponseOfTransferResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth), [tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

