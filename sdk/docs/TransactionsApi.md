# yapily_sdk.api.TransactionsApi

## Load the API package
```dart
import 'package:yapily_sdk/api.dart';
```

All URIs are relative to *http://api.yapily.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getTransactionsUsingGET**](TransactionsApi.md#getTransactionsUsingGET) | **Get** /accounts/:accountId/transactions | Get account transactions


# **getTransactionsUsingGET**
> ApiListResponseOfTransaction getTransactionsUsingGET(consent, accountId, with_, from, before, limit, sort, offset)

Get account transactions

### Example 
```dart
import 'package:yapily_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//yapily_sdk.api.Configuration.username = 'YOUR_USERNAME';
//yapily_sdk.api.Configuration.password = 'YOUR_PASSWORD';
// TODO Configure OAuth2 access token for authorization: tokenAuth
//yapily_sdk.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new TransactionsApi();
var consent = consent_example; // String | Consent Token
var accountId = accountId_example; // String | accountId
var with_ = []; // List<String> | with
var from = from_example; // String | from
var before = before_example; // String | before
var limit = 56; // int | limit
var sort = sort_example; // String | sort
var offset = 56; // int | offset

try { 
    var result = api_instance.getTransactionsUsingGET(consent, accountId, with_, from, before, limit, sort, offset);
    print(result);
} catch (e) {
    print("Exception when calling TransactionsApi->getTransactionsUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **consent** | **String**| Consent Token | [default to null]
 **accountId** | **String**| accountId | [default to null]
 **with_** | [**List&lt;String&gt;**](String.md)| with | [optional] [default to const []]
 **from** | **String**| from | [optional] [default to null]
 **before** | **String**| before | [optional] [default to null]
 **limit** | **int**| limit | [optional] [default to null]
 **sort** | **String**| sort | [optional] [default to null]
 **offset** | **int**| offset | [optional] [default to null]

### Return type

[**ApiListResponseOfTransaction**](ApiListResponseOfTransaction.md)

### Authorization

[basicAuth](../README.md#basicAuth), [tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

