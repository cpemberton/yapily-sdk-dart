# yapily_sdk.api.StatementsApi

## Load the API package
```dart
import 'package:yapily_sdk/api.dart';
```

All URIs are relative to *https://api.yapily.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getStatementFileUsingGET**](StatementsApi.md#getStatementFileUsingGET) | **GET** /accounts/{accountId}/statements/{statementId}/file | Get account statement file
[**getStatementUsingGET**](StatementsApi.md#getStatementUsingGET) | **GET** /accounts/{accountId}/statements/{statementId} | Get account statement
[**getStatementsUsingGET**](StatementsApi.md#getStatementsUsingGET) | **GET** /accounts/{accountId}/statements | Get account statements


# **getStatementFileUsingGET**
> String getStatementFileUsingGET(consent, accountId, statementId)

Get account statement file

### Example 
```dart
import 'package:yapily_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//yapily_sdk.api.Configuration.username = 'YOUR_USERNAME';
//yapily_sdk.api.Configuration.password = 'YOUR_PASSWORD';
// TODO Configure OAuth2 access token for authorization: tokenAuth
//yapily_sdk.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new StatementsApi();
var consent = consent_example; // String | Consent Token
var accountId = accountId_example; // String | accountId
var statementId = statementId_example; // String | statementId

try { 
    var result = api_instance.getStatementFileUsingGET(consent, accountId, statementId);
    print(result);
} catch (e) {
    print("Exception when calling StatementsApi->getStatementFileUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **consent** | **String**| Consent Token | 
 **accountId** | **String**| accountId | 
 **statementId** | **String**| statementId | 

### Return type

**String**

### Authorization

[basicAuth](../README.md#basicAuth), [tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStatementUsingGET**
> ApiResponseOfAccountStatement getStatementUsingGET(consent, accountId, statementId)

Get account statement

### Example 
```dart
import 'package:yapily_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//yapily_sdk.api.Configuration.username = 'YOUR_USERNAME';
//yapily_sdk.api.Configuration.password = 'YOUR_PASSWORD';
// TODO Configure OAuth2 access token for authorization: tokenAuth
//yapily_sdk.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new StatementsApi();
var consent = consent_example; // String | Consent Token
var accountId = accountId_example; // String | accountId
var statementId = statementId_example; // String | statementId

try { 
    var result = api_instance.getStatementUsingGET(consent, accountId, statementId);
    print(result);
} catch (e) {
    print("Exception when calling StatementsApi->getStatementUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **consent** | **String**| Consent Token | 
 **accountId** | **String**| accountId | 
 **statementId** | **String**| statementId | 

### Return type

[**ApiResponseOfAccountStatement**](ApiResponseOfAccountStatement.md)

### Authorization

[basicAuth](../README.md#basicAuth), [tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStatementsUsingGET**
> ApiListResponseOfAccountStatement getStatementsUsingGET(consent, accountId, from, before, limit, sort, offset)

Get account statements

### Example 
```dart
import 'package:yapily_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//yapily_sdk.api.Configuration.username = 'YOUR_USERNAME';
//yapily_sdk.api.Configuration.password = 'YOUR_PASSWORD';
// TODO Configure OAuth2 access token for authorization: tokenAuth
//yapily_sdk.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new StatementsApi();
var consent = consent_example; // String | Consent Token
var accountId = accountId_example; // String | accountId
var from = from_example; // String | from
var before = before_example; // String | before
var limit = 56; // int | limit
var sort = sort_example; // String | sort
var offset = 56; // int | offset

try { 
    var result = api_instance.getStatementsUsingGET(consent, accountId, from, before, limit, sort, offset);
    print(result);
} catch (e) {
    print("Exception when calling StatementsApi->getStatementsUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **consent** | **String**| Consent Token | 
 **accountId** | **String**| accountId | 
 **from** | **String**| from | [optional] 
 **before** | **String**| before | [optional] 
 **limit** | **int**| limit | [optional] 
 **sort** | **String**| sort | [optional] 
 **offset** | **int**| offset | [optional] 

### Return type

[**ApiListResponseOfAccountStatement**](ApiListResponseOfAccountStatement.md)

### Authorization

[basicAuth](../README.md#basicAuth), [tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

