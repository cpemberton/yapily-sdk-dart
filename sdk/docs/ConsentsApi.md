# yapily_sdk.api.ConsentsApi

## Load the API package
```dart
import 'package:yapily_sdk/api.dart';
```

All URIs are relative to *http://api.yapily.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addConsentUsingPOST**](ConsentsApi.md#addConsentUsingPOST) | **Post** /users/:userUuid/consents | Post consent
[**createConsentWithCodeUsingPOST**](ConsentsApi.md#createConsentWithCodeUsingPOST) | **Post** /consent-auth-code | Post auth-code and auth-state
[**deleteUsingDELETE**](ConsentsApi.md#deleteUsingDELETE) | **Delete** /consents/:consentId | Delete consent
[**getConsentByIdUsingGET**](ConsentsApi.md#getConsentByIdUsingGET) | **Get** /consents/:consentId | Get consent
[**getConsentBySingleAccessConsentUsingPOST**](ConsentsApi.md#getConsentBySingleAccessConsentUsingPOST) | **Post** /consent-one-time-token | Post one time token
[**getConsentsUsingGET**](ConsentsApi.md#getConsentsUsingGET) | **Get** /consents | Get consents sorted by creation date
[**getUserConsentsUsingGET**](ConsentsApi.md#getUserConsentsUsingGET) | **Get** /users/:userUuid/consents | Get latest user consents


# **addConsentUsingPOST**
> Consent addConsentUsingPOST(userUuid, createConsentAccessToken)

Post consent

### Example 
```dart
import 'package:yapily_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//yapily_sdk.api.Configuration.username = 'YOUR_USERNAME';
//yapily_sdk.api.Configuration.password = 'YOUR_PASSWORD';
// TODO Configure OAuth2 access token for authorization: tokenAuth
//yapily_sdk.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ConsentsApi();
var userUuid = userUuid_example; // String | userUuid
var createConsentAccessToken = new CreateConsentAccessToken(); // CreateConsentAccessToken | createConsentAccessToken

try { 
    var result = api_instance.addConsentUsingPOST(userUuid, createConsentAccessToken);
    print(result);
} catch (e) {
    print("Exception when calling ConsentsApi->addConsentUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userUuid** | **String**| userUuid | [default to null]
 **createConsentAccessToken** | [**CreateConsentAccessToken**](CreateConsentAccessToken.md)| createConsentAccessToken | 

### Return type

[**Consent**](Consent.md)

### Authorization

[basicAuth](../README.md#basicAuth), [tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createConsentWithCodeUsingPOST**
> Consent createConsentWithCodeUsingPOST(consentByAuthCode)

Post auth-code and auth-state

### Example 
```dart
import 'package:yapily_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//yapily_sdk.api.Configuration.username = 'YOUR_USERNAME';
//yapily_sdk.api.Configuration.password = 'YOUR_PASSWORD';
// TODO Configure OAuth2 access token for authorization: tokenAuth
//yapily_sdk.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ConsentsApi();
var consentByAuthCode = new ConsentAuthCodeRequest(); // ConsentAuthCodeRequest | consentByAuthCode

try { 
    var result = api_instance.createConsentWithCodeUsingPOST(consentByAuthCode);
    print(result);
} catch (e) {
    print("Exception when calling ConsentsApi->createConsentWithCodeUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **consentByAuthCode** | [**ConsentAuthCodeRequest**](ConsentAuthCodeRequest.md)| consentByAuthCode | 

### Return type

[**Consent**](Consent.md)

### Authorization

[basicAuth](../README.md#basicAuth), [tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteUsingDELETE**
> ApiResponseOfConsentDeleteResponse deleteUsingDELETE(consentId, forceDelete)

Delete consent

### Example 
```dart
import 'package:yapily_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//yapily_sdk.api.Configuration.username = 'YOUR_USERNAME';
//yapily_sdk.api.Configuration.password = 'YOUR_PASSWORD';
// TODO Configure OAuth2 access token for authorization: tokenAuth
//yapily_sdk.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ConsentsApi();
var consentId = consentId_example; // String | consentId
var forceDelete = true; // bool | forceDelete

try { 
    var result = api_instance.deleteUsingDELETE(consentId, forceDelete);
    print(result);
} catch (e) {
    print("Exception when calling ConsentsApi->deleteUsingDELETE: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **consentId** | **String**| consentId | [default to null]
 **forceDelete** | **bool**| forceDelete | [optional] [default to null]

### Return type

[**ApiResponseOfConsentDeleteResponse**](ApiResponseOfConsentDeleteResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth), [tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getConsentByIdUsingGET**
> ApiResponseOfConsent getConsentByIdUsingGET(consentId)

Get consent

### Example 
```dart
import 'package:yapily_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//yapily_sdk.api.Configuration.username = 'YOUR_USERNAME';
//yapily_sdk.api.Configuration.password = 'YOUR_PASSWORD';
// TODO Configure OAuth2 access token for authorization: tokenAuth
//yapily_sdk.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ConsentsApi();
var consentId = consentId_example; // String | consentId

try { 
    var result = api_instance.getConsentByIdUsingGET(consentId);
    print(result);
} catch (e) {
    print("Exception when calling ConsentsApi->getConsentByIdUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **consentId** | **String**| consentId | [default to null]

### Return type

[**ApiResponseOfConsent**](ApiResponseOfConsent.md)

### Authorization

[basicAuth](../README.md#basicAuth), [tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getConsentBySingleAccessConsentUsingPOST**
> Consent getConsentBySingleAccessConsentUsingPOST(oneTimeToken)

Post one time token

### Example 
```dart
import 'package:yapily_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//yapily_sdk.api.Configuration.username = 'YOUR_USERNAME';
//yapily_sdk.api.Configuration.password = 'YOUR_PASSWORD';
// TODO Configure OAuth2 access token for authorization: tokenAuth
//yapily_sdk.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ConsentsApi();
var oneTimeToken = new OneTimeTokenRequest(); // OneTimeTokenRequest | oneTimeToken

try { 
    var result = api_instance.getConsentBySingleAccessConsentUsingPOST(oneTimeToken);
    print(result);
} catch (e) {
    print("Exception when calling ConsentsApi->getConsentBySingleAccessConsentUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **oneTimeToken** | [**OneTimeTokenRequest**](OneTimeTokenRequest.md)| oneTimeToken | 

### Return type

[**Consent**](Consent.md)

### Authorization

[basicAuth](../README.md#basicAuth), [tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getConsentsUsingGET**
> ApiListResponseOfConsent getConsentsUsingGET(filter[applicationUserId], filter[userUuid], filter[institution], filter[status], from, before, limit, offset)

Get consents sorted by creation date

### Example 
```dart
import 'package:yapily_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//yapily_sdk.api.Configuration.username = 'YOUR_USERNAME';
//yapily_sdk.api.Configuration.password = 'YOUR_PASSWORD';
// TODO Configure OAuth2 access token for authorization: tokenAuth
//yapily_sdk.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ConsentsApi();
var filter[applicationUserId] = []; // List<String> | Filter consents by your application user Id (applicationUserId)
var filter[userUuid] = []; // List<String> | Filter consents by Yapily user Id (userUuid)
var filter[institution] = []; // List<String> | Use this parameter to filter consent by institution, using the Yapily institution Id
var filter[status] = []; // List<String> | Use this parameter to filter consent by status
var from = from_example; // String | Use this parameter to filter consents created after the date specified
var before = before_example; // String | Use this parameter to filter consents created before the date specified
var limit = 56; // int | Use this parameter to limit consent results, max limit is 20
var offset = 56; // int | Use this parameter to specify the offset of the results

try { 
    var result = api_instance.getConsentsUsingGET(filter[applicationUserId], filter[userUuid], filter[institution], filter[status], from, before, limit, offset);
    print(result);
} catch (e) {
    print("Exception when calling ConsentsApi->getConsentsUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter[applicationUserId]** | [**List&lt;String&gt;**](String.md)| Filter consents by your application user Id (applicationUserId) | [optional] [default to const []]
 **filter[userUuid]** | [**List&lt;String&gt;**](String.md)| Filter consents by Yapily user Id (userUuid) | [optional] [default to const []]
 **filter[institution]** | [**List&lt;String&gt;**](String.md)| Use this parameter to filter consent by institution, using the Yapily institution Id | [optional] [default to const []]
 **filter[status]** | [**List&lt;String&gt;**](String.md)| Use this parameter to filter consent by status | [optional] [default to const []]
 **from** | **String**| Use this parameter to filter consents created after the date specified | [optional] [default to null]
 **before** | **String**| Use this parameter to filter consents created before the date specified | [optional] [default to null]
 **limit** | **int**| Use this parameter to limit consent results, max limit is 20 | [optional] [default to null]
 **offset** | **int**| Use this parameter to specify the offset of the results | [optional] [default to 0]

### Return type

[**ApiListResponseOfConsent**](ApiListResponseOfConsent.md)

### Authorization

[basicAuth](../README.md#basicAuth), [tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserConsentsUsingGET**
> List<Consent> getUserConsentsUsingGET(userUuid, filter[institution], limit)

Get latest user consents

### Example 
```dart
import 'package:yapily_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//yapily_sdk.api.Configuration.username = 'YOUR_USERNAME';
//yapily_sdk.api.Configuration.password = 'YOUR_PASSWORD';
// TODO Configure OAuth2 access token for authorization: tokenAuth
//yapily_sdk.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ConsentsApi();
var userUuid = userUuid_example; // String | userUuid
var filter[institution] = filter[institution]_example; // String | Use this parameter to filter consent by institution, using the Yapily institution Id. This replaces the deprecated `institutionId` query param.
var limit = 56; // int | Use this parameter to limit consent results, max limit is 20

try { 
    var result = api_instance.getUserConsentsUsingGET(userUuid, filter[institution], limit);
    print(result);
} catch (e) {
    print("Exception when calling ConsentsApi->getUserConsentsUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userUuid** | **String**| userUuid | [default to null]
 **filter[institution]** | **String**| Use this parameter to filter consent by institution, using the Yapily institution Id. This replaces the deprecated &#x60;institutionId&#x60; query param. | [optional] [default to null]
 **limit** | **int**| Use this parameter to limit consent results, max limit is 20 | [optional] [default to null]

### Return type

[**List<Consent>**](Consent.md)

### Authorization

[basicAuth](../README.md#basicAuth), [tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

