# yapily_sdk.api.IdentityApi

## Load the API package
```dart
import 'package:yapily_sdk/api.dart';
```

All URIs are relative to *https://api.yapily.com:443*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getIdentityUsingGET**](IdentityApi.md#getIdentityUsingGET) | **GET** /identity | Get identity


# **getIdentityUsingGET**
> ApiResponseOfIdentity getIdentityUsingGET(consent)

Get identity

### Example 
```dart
import 'package:yapily_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//yapily_sdk.api.Configuration.username = 'YOUR_USERNAME';
//yapily_sdk.api.Configuration.password = 'YOUR_PASSWORD';

var api_instance = new IdentityApi();
var consent = consent_example; // String | Consent Token

try { 
    var result = api_instance.getIdentityUsingGET(consent);
    print(result);
} catch (e) {
    print("Exception when calling IdentityApi->getIdentityUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **consent** | **String**| Consent Token | 

### Return type

[**ApiResponseOfIdentity**](ApiResponseOfIdentity.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

