# yapily_sdk.api.AccountsApi

## Load the API package
```dart
import 'package:yapily_sdk/api.dart';
```

All URIs are relative to *http://api.yapily.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAccountDirectDebitsUsingGET**](AccountsApi.md#getAccountDirectDebitsUsingGET) | **Get** /accounts/:accountId/direct-debits | Get account direct debits
[**getAccountPeriodicPaymentsUsingGET**](AccountsApi.md#getAccountPeriodicPaymentsUsingGET) | **Get** /accounts/:accountId/periodic-payments | Get account payments detail
[**getAccountScheduledPaymentsUsingGET**](AccountsApi.md#getAccountScheduledPaymentsUsingGET) | **Get** /accounts/:accountId/scheduled-payments | Get account scheduled payments
[**getAccountUsingGET**](AccountsApi.md#getAccountUsingGET) | **Get** /accounts/:accountId | Get account
[**getAccountsUsingGET**](AccountsApi.md#getAccountsUsingGET) | **Get** /accounts | Get accounts
[**initiateAccountRequestUsingPOST**](AccountsApi.md#initiateAccountRequestUsingPOST) | **Post** /account-auth-requests | Initiate a new account request for user to authorize
[**reAuthoriseAccountUsingPATCH**](AccountsApi.md#reAuthoriseAccountUsingPATCH) | **Patch** /account-auth-requests | Re-authorize account request


# **getAccountDirectDebitsUsingGET**
> ApiListResponseOfPaymentResponse getAccountDirectDebitsUsingGET(accountId, consent, limit)

Get account direct debits

### Example 
```dart
import 'package:yapily_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//yapily_sdk.api.Configuration.username = 'YOUR_USERNAME';
//yapily_sdk.api.Configuration.password = 'YOUR_PASSWORD';
// TODO Configure OAuth2 access token for authorization: tokenAuth
//yapily_sdk.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new AccountsApi();
var accountId = accountId_example; // String | accountId
var consent = consent_example; // String | Consent Token
var limit = 56; // int | Use this parameter to limit account's direct debit results

try { 
    var result = api_instance.getAccountDirectDebitsUsingGET(accountId, consent, limit);
    print(result);
} catch (e) {
    print("Exception when calling AccountsApi->getAccountDirectDebitsUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **String**| accountId | [default to null]
 **consent** | **String**| Consent Token | [default to null]
 **limit** | **int**| Use this parameter to limit account&#39;s direct debit results | [optional] [default to null]

### Return type

[**ApiListResponseOfPaymentResponse**](ApiListResponseOfPaymentResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth), [tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAccountPeriodicPaymentsUsingGET**
> ApiListResponseOfPaymentResponse getAccountPeriodicPaymentsUsingGET(accountId, consent, limit)

Get account payments detail

### Example 
```dart
import 'package:yapily_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//yapily_sdk.api.Configuration.username = 'YOUR_USERNAME';
//yapily_sdk.api.Configuration.password = 'YOUR_PASSWORD';
// TODO Configure OAuth2 access token for authorization: tokenAuth
//yapily_sdk.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new AccountsApi();
var accountId = accountId_example; // String | accountId
var consent = consent_example; // String | Consent Token
var limit = 56; // int | Use this parameter to limit account's periodic payment order results

try { 
    var result = api_instance.getAccountPeriodicPaymentsUsingGET(accountId, consent, limit);
    print(result);
} catch (e) {
    print("Exception when calling AccountsApi->getAccountPeriodicPaymentsUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **String**| accountId | [default to null]
 **consent** | **String**| Consent Token | [default to null]
 **limit** | **int**| Use this parameter to limit account&#39;s periodic payment order results | [optional] [default to null]

### Return type

[**ApiListResponseOfPaymentResponse**](ApiListResponseOfPaymentResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth), [tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAccountScheduledPaymentsUsingGET**
> ApiListResponseOfPaymentResponse getAccountScheduledPaymentsUsingGET(accountId, consent, limit)

Get account scheduled payments

### Example 
```dart
import 'package:yapily_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//yapily_sdk.api.Configuration.username = 'YOUR_USERNAME';
//yapily_sdk.api.Configuration.password = 'YOUR_PASSWORD';
// TODO Configure OAuth2 access token for authorization: tokenAuth
//yapily_sdk.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new AccountsApi();
var accountId = accountId_example; // String | accountId
var consent = consent_example; // String | Consent Token
var limit = 56; // int | Use this parameter to limit account's scheduled payment results

try { 
    var result = api_instance.getAccountScheduledPaymentsUsingGET(accountId, consent, limit);
    print(result);
} catch (e) {
    print("Exception when calling AccountsApi->getAccountScheduledPaymentsUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **String**| accountId | [default to null]
 **consent** | **String**| Consent Token | [default to null]
 **limit** | **int**| Use this parameter to limit account&#39;s scheduled payment results | [optional] [default to null]

### Return type

[**ApiListResponseOfPaymentResponse**](ApiListResponseOfPaymentResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth), [tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAccountUsingGET**
> ApiResponseOfAccount getAccountUsingGET(consent, accountId)

Get account

### Example 
```dart
import 'package:yapily_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//yapily_sdk.api.Configuration.username = 'YOUR_USERNAME';
//yapily_sdk.api.Configuration.password = 'YOUR_PASSWORD';
// TODO Configure OAuth2 access token for authorization: tokenAuth
//yapily_sdk.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new AccountsApi();
var consent = consent_example; // String | Consent Token
var accountId = accountId_example; // String | accountId

try { 
    var result = api_instance.getAccountUsingGET(consent, accountId);
    print(result);
} catch (e) {
    print("Exception when calling AccountsApi->getAccountUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **consent** | **String**| Consent Token | [default to null]
 **accountId** | **String**| accountId | [default to null]

### Return type

[**ApiResponseOfAccount**](ApiResponseOfAccount.md)

### Authorization

[basicAuth](../README.md#basicAuth), [tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAccountsUsingGET**
> ApiListResponseOfAccount getAccountsUsingGET(consent)

Get accounts

### Example 
```dart
import 'package:yapily_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//yapily_sdk.api.Configuration.username = 'YOUR_USERNAME';
//yapily_sdk.api.Configuration.password = 'YOUR_PASSWORD';
// TODO Configure OAuth2 access token for authorization: tokenAuth
//yapily_sdk.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new AccountsApi();
var consent = consent_example; // String | Consent Token

try { 
    var result = api_instance.getAccountsUsingGET(consent);
    print(result);
} catch (e) {
    print("Exception when calling AccountsApi->getAccountsUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **consent** | **String**| Consent Token | [default to null]

### Return type

[**ApiListResponseOfAccount**](ApiListResponseOfAccount.md)

### Authorization

[basicAuth](../README.md#basicAuth), [tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **initiateAccountRequestUsingPOST**
> ApiResponseOfAuthorisationRequestResponse initiateAccountRequestUsingPOST(accountAuthRequest)

Initiate a new account request for user to authorize

### Example 
```dart
import 'package:yapily_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//yapily_sdk.api.Configuration.username = 'YOUR_USERNAME';
//yapily_sdk.api.Configuration.password = 'YOUR_PASSWORD';
// TODO Configure OAuth2 access token for authorization: tokenAuth
//yapily_sdk.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new AccountsApi();
var accountAuthRequest = new AccountAuthorisationRequest(); // AccountAuthorisationRequest | accountAuthRequest

try { 
    var result = api_instance.initiateAccountRequestUsingPOST(accountAuthRequest);
    print(result);
} catch (e) {
    print("Exception when calling AccountsApi->initiateAccountRequestUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountAuthRequest** | [**AccountAuthorisationRequest**](AccountAuthorisationRequest.md)| accountAuthRequest | 

### Return type

[**ApiResponseOfAuthorisationRequestResponse**](ApiResponseOfAuthorisationRequestResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth), [tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reAuthoriseAccountUsingPATCH**
> ApiResponseOfAuthorisationRequestResponse reAuthoriseAccountUsingPATCH(consent)

Re-authorize account request

### Example 
```dart
import 'package:yapily_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//yapily_sdk.api.Configuration.username = 'YOUR_USERNAME';
//yapily_sdk.api.Configuration.password = 'YOUR_PASSWORD';
// TODO Configure OAuth2 access token for authorization: tokenAuth
//yapily_sdk.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new AccountsApi();
var consent = consent_example; // String | Consent Token

try { 
    var result = api_instance.reAuthoriseAccountUsingPATCH(consent);
    print(result);
} catch (e) {
    print("Exception when calling AccountsApi->reAuthoriseAccountUsingPATCH: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **consent** | **String**| Consent Token | [default to null]

### Return type

[**ApiResponseOfAuthorisationRequestResponse**](ApiResponseOfAuthorisationRequestResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth), [tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

