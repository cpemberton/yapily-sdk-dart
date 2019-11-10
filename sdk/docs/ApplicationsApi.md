# yapily_sdk.api.ApplicationsApi

## Load the API package
```dart
import 'package:yapily_sdk/api.dart';
```

All URIs are relative to *https://api.yapily.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getApplicationMeUsingGET**](ApplicationsApi.md#getApplicationMeUsingGET) | **GET** /me | Returns the details of the application that owns the request credentials
[**getJwksUsingGET**](ApplicationsApi.md#getJwksUsingGET) | **GET** /jwks | JSON Web Key Set (JWKS) for authenticated application
[**revokeTokensUsingPOST**](ApplicationsApi.md#revokeTokensUsingPOST) | **POST** /revoke-tokens | Revoke existing access tokens for application, which will also generate a new public key discoverable via /jwks


# **getApplicationMeUsingGET**
> Application getApplicationMeUsingGET()

Returns the details of the application that owns the request credentials

### Example 
```dart
import 'package:yapily_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//yapily_sdk.api.Configuration.username = 'YOUR_USERNAME';
//yapily_sdk.api.Configuration.password = 'YOUR_PASSWORD';
// TODO Configure OAuth2 access token for authorization: tokenAuth
//yapily_sdk.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ApplicationsApi();

try { 
    var result = api_instance.getApplicationMeUsingGET();
    print(result);
} catch (e) {
    print("Exception when calling ApplicationsApi->getApplicationMeUsingGET: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Application**](Application.md)

### Authorization

[basicAuth](../README.md#basicAuth), [tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getJwksUsingGET**
> Object getJwksUsingGET()

JSON Web Key Set (JWKS) for authenticated application

### Example 
```dart
import 'package:yapily_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//yapily_sdk.api.Configuration.username = 'YOUR_USERNAME';
//yapily_sdk.api.Configuration.password = 'YOUR_PASSWORD';
// TODO Configure OAuth2 access token for authorization: tokenAuth
//yapily_sdk.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ApplicationsApi();

try { 
    var result = api_instance.getJwksUsingGET();
    print(result);
} catch (e) {
    print("Exception when calling ApplicationsApi->getJwksUsingGET: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Object**](Object.md)

### Authorization

[basicAuth](../README.md#basicAuth), [tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **revokeTokensUsingPOST**
> ResponseEntity revokeTokensUsingPOST()

Revoke existing access tokens for application, which will also generate a new public key discoverable via /jwks

### Example 
```dart
import 'package:yapily_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//yapily_sdk.api.Configuration.username = 'YOUR_USERNAME';
//yapily_sdk.api.Configuration.password = 'YOUR_PASSWORD';
// TODO Configure OAuth2 access token for authorization: tokenAuth
//yapily_sdk.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ApplicationsApi();

try { 
    var result = api_instance.revokeTokensUsingPOST();
    print(result);
} catch (e) {
    print("Exception when calling ApplicationsApi->revokeTokensUsingPOST: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ResponseEntity**](ResponseEntity.md)

### Authorization

[basicAuth](../README.md#basicAuth), [tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

