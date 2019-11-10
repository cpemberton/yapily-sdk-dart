# yapily_sdk.api.InstitutionsOpenDataApi

## Load the API package
```dart
import 'package:yapily_sdk/api.dart';
```

All URIs are relative to *https://api.yapily.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getATMDataUsingGET**](InstitutionsOpenDataApi.md#getATMDataUsingGET) | **GET** /institutions/{institutionId}/atms | Retrieves data about all ATMs of the selected institution
[**getPersonalCurrentAccountsUsingGET**](InstitutionsOpenDataApi.md#getPersonalCurrentAccountsUsingGET) | **GET** /institutions/{institutionId}/personal-current-accounts | Retrieves details of personal current accounts for an institution


# **getATMDataUsingGET**
> ApiResponseOfListOfATMOpenDataResponse getATMDataUsingGET(institutionId)

Retrieves data about all ATMs of the selected institution

### Example 
```dart
import 'package:yapily_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//yapily_sdk.api.Configuration.username = 'YOUR_USERNAME';
//yapily_sdk.api.Configuration.password = 'YOUR_PASSWORD';
// TODO Configure OAuth2 access token for authorization: tokenAuth
//yapily_sdk.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new InstitutionsOpenDataApi();
var institutionId = institutionId_example; // String | institutionId

try { 
    var result = api_instance.getATMDataUsingGET(institutionId);
    print(result);
} catch (e) {
    print("Exception when calling InstitutionsOpenDataApi->getATMDataUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **institutionId** | **String**| institutionId | 

### Return type

[**ApiResponseOfListOfATMOpenDataResponse**](ApiResponseOfListOfATMOpenDataResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth), [tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPersonalCurrentAccountsUsingGET**
> ApiResponseOfListOfPersonalCurrentAccountData getPersonalCurrentAccountsUsingGET(institutionId)

Retrieves details of personal current accounts for an institution

### Example 
```dart
import 'package:yapily_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//yapily_sdk.api.Configuration.username = 'YOUR_USERNAME';
//yapily_sdk.api.Configuration.password = 'YOUR_PASSWORD';
// TODO Configure OAuth2 access token for authorization: tokenAuth
//yapily_sdk.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new InstitutionsOpenDataApi();
var institutionId = institutionId_example; // String | institutionId

try { 
    var result = api_instance.getPersonalCurrentAccountsUsingGET(institutionId);
    print(result);
} catch (e) {
    print("Exception when calling InstitutionsOpenDataApi->getPersonalCurrentAccountsUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **institutionId** | **String**| institutionId | 

### Return type

[**ApiResponseOfListOfPersonalCurrentAccountData**](ApiResponseOfListOfPersonalCurrentAccountData.md)

### Authorization

[basicAuth](../README.md#basicAuth), [tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

