# yapily_sdk.api.TransactionsApi

## Load the API package
```dart
import 'package:yapily_sdk/api.dart';
```

All URIs are relative to *https://api.yapily.com:443*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getTransactionsUsingGET**](TransactionsApi.md#getTransactionsUsingGET) | **GET** /accounts/{accountId}/transactions | Get account transactions


# **getTransactionsUsingGET**
> ApiListResponseOfTransaction getTransactionsUsingGET(consent, accountId, with_, from, before, limit, sort)

Get account transactions

### Example 
```dart
import 'package:yapily_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//yapily_sdk.api.Configuration.username = 'YOUR_USERNAME';
//yapily_sdk.api.Configuration.password = 'YOUR_PASSWORD';

var api_instance = new TransactionsApi();
var consent = consent_example; // String | Consent Token
var accountId = accountId_example; // String | accountId
var with_ = []; // List<String> | with
var from = from_example; // String | from
var before = before_example; // String | before
var limit = 56; // int | limit
var sort = sort_example; // String | sort

try { 
    var result = api_instance.getTransactionsUsingGET(consent, accountId, with_, from, before, limit, sort);
    print(result);
} catch (e) {
    print("Exception when calling TransactionsApi->getTransactionsUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **consent** | **String**| Consent Token | 
 **accountId** | **String**| accountId | 
 **with_** | [**List&lt;String&gt;**](String.md)| with | [optional] 
 **from** | **String**| from | [optional] 
 **before** | **String**| before | [optional] 
 **limit** | **int**| limit | [optional] 
 **sort** | **String**| sort | [optional] 

### Return type

[**ApiListResponseOfTransaction**](ApiListResponseOfTransaction.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

