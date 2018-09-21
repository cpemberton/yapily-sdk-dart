# yapily_sdk.api.InstitutionsApi

## Load the API package
```dart
import 'package:yapily_sdk/api.dart';
```

All URIs are relative to *https://api.yapily.com:443*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getFeatureDetailsUsingGET**](InstitutionsApi.md#getFeatureDetailsUsingGET) | **GET** /features | Retrieve details for Yapily&#39;s institution features
[**getInstitutionUsingGET**](InstitutionsApi.md#getInstitutionUsingGET) | **GET** /institutions/{institutionId} | Retrieves details of a specific institution available in Yapily
[**getInstitutionsUsingGET**](InstitutionsApi.md#getInstitutionsUsingGET) | **GET** /institutions | Retrieves the list of institutions available in Yapily


# **getFeatureDetailsUsingGET**
> ApiListResponseOfFeatureDetails getFeatureDetailsUsingGET()

Retrieve details for Yapily's institution features

### Example 
```dart
import 'package:yapily_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//yapily_sdk.api.Configuration.username = 'YOUR_USERNAME';
//yapily_sdk.api.Configuration.password = 'YOUR_PASSWORD';

var api_instance = new InstitutionsApi();

try { 
    var result = api_instance.getFeatureDetailsUsingGET();
    print(result);
} catch (e) {
    print("Exception when calling InstitutionsApi->getFeatureDetailsUsingGET: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ApiListResponseOfFeatureDetails**](ApiListResponseOfFeatureDetails.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getInstitutionUsingGET**
> Institution getInstitutionUsingGET(institutionId)

Retrieves details of a specific institution available in Yapily

### Example 
```dart
import 'package:yapily_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//yapily_sdk.api.Configuration.username = 'YOUR_USERNAME';
//yapily_sdk.api.Configuration.password = 'YOUR_PASSWORD';

var api_instance = new InstitutionsApi();
var institutionId = institutionId_example; // String | institutionId

try { 
    var result = api_instance.getInstitutionUsingGET(institutionId);
    print(result);
} catch (e) {
    print("Exception when calling InstitutionsApi->getInstitutionUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **institutionId** | **String**| institutionId | 

### Return type

[**Institution**](Institution.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getInstitutionsUsingGET**
> ApiListResponseOfInstitution getInstitutionsUsingGET()

Retrieves the list of institutions available in Yapily

### Example 
```dart
import 'package:yapily_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//yapily_sdk.api.Configuration.username = 'YOUR_USERNAME';
//yapily_sdk.api.Configuration.password = 'YOUR_PASSWORD';

var api_instance = new InstitutionsApi();

try { 
    var result = api_instance.getInstitutionsUsingGET();
    print(result);
} catch (e) {
    print("Exception when calling InstitutionsApi->getInstitutionsUsingGET: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ApiListResponseOfInstitution**](ApiListResponseOfInstitution.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

