# yapily_sdk.api.ApplicationUsersApi

## Load the API package
```dart
import 'package:yapily_sdk/api.dart';
```

All URIs are relative to *https://api.yapily.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addUserUsingPOST**](ApplicationUsersApi.md#addUserUsingPOST) | **POST** /users | Add an application user
[**deleteUserUsingDELETE**](ApplicationUsersApi.md#deleteUserUsingDELETE) | **DELETE** /users/{userUuid} | Delete an application user and sub-resources (including consent resources on institution APIs if they exist)
[**getDeleteUsersJobUsingGET**](ApplicationUsersApi.md#getDeleteUsersJobUsingGET) | **GET** /delete-users/{job-id} | Get details of a user deletion job
[**getDeleteUsersJobsUsingGET**](ApplicationUsersApi.md#getDeleteUsersJobsUsingGET) | **GET** /delete-users | Get details of all user deletion jobs
[**getUserUsingGET**](ApplicationUsersApi.md#getUserUsingGET) | **GET** /users/{userUuid} | Get an application user
[**getUsersUsingGET**](ApplicationUsersApi.md#getUsersUsingGET) | **GET** /users | Get application users
[**startDeleteUsersJobUsingPOST**](ApplicationUsersApi.md#startDeleteUsersJobUsingPOST) | **POST** /delete-users | Start a job to delete application users by specifying their identifiers


# **addUserUsingPOST**
> ApplicationUser addUserUsingPOST(newApplicationUser)

Add an application user

### Example 
```dart
import 'package:yapily_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//yapily_sdk.api.Configuration.username = 'YOUR_USERNAME';
//yapily_sdk.api.Configuration.password = 'YOUR_PASSWORD';
// TODO Configure OAuth2 access token for authorization: tokenAuth
//yapily_sdk.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ApplicationUsersApi();
var newApplicationUser = new NewApplicationUser(); // NewApplicationUser | newApplicationUser

try { 
    var result = api_instance.addUserUsingPOST(newApplicationUser);
    print(result);
} catch (e) {
    print("Exception when calling ApplicationUsersApi->addUserUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **newApplicationUser** | [**NewApplicationUser**](NewApplicationUser.md)| newApplicationUser | 

### Return type

[**ApplicationUser**](ApplicationUser.md)

### Authorization

[basicAuth](../README.md#basicAuth), [tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteUserUsingDELETE**
> ApiResponseOfUserDeleteResponse deleteUserUsingDELETE(userUuid)

Delete an application user and sub-resources (including consent resources on institution APIs if they exist)

### Example 
```dart
import 'package:yapily_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//yapily_sdk.api.Configuration.username = 'YOUR_USERNAME';
//yapily_sdk.api.Configuration.password = 'YOUR_PASSWORD';
// TODO Configure OAuth2 access token for authorization: tokenAuth
//yapily_sdk.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ApplicationUsersApi();
var userUuid = userUuid_example; // String | userUuid

try { 
    var result = api_instance.deleteUserUsingDELETE(userUuid);
    print(result);
} catch (e) {
    print("Exception when calling ApplicationUsersApi->deleteUserUsingDELETE: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userUuid** | **String**| userUuid | 

### Return type

[**ApiResponseOfUserDeleteResponse**](ApiResponseOfUserDeleteResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth), [tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDeleteUsersJobUsingGET**
> ApiResponseOfBulkUserDeleteDetails getDeleteUsersJobUsingGET(jobId)

Get details of a user deletion job

### Example 
```dart
import 'package:yapily_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//yapily_sdk.api.Configuration.username = 'YOUR_USERNAME';
//yapily_sdk.api.Configuration.password = 'YOUR_PASSWORD';
// TODO Configure OAuth2 access token for authorization: tokenAuth
//yapily_sdk.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ApplicationUsersApi();
var jobId = jobId_example; // String | job-id

try { 
    var result = api_instance.getDeleteUsersJobUsingGET(jobId);
    print(result);
} catch (e) {
    print("Exception when calling ApplicationUsersApi->getDeleteUsersJobUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **jobId** | **String**| job-id | 

### Return type

[**ApiResponseOfBulkUserDeleteDetails**](ApiResponseOfBulkUserDeleteDetails.md)

### Authorization

[basicAuth](../README.md#basicAuth), [tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDeleteUsersJobsUsingGET**
> ApiListResponseOfBulkUserDelete getDeleteUsersJobsUsingGET()

Get details of all user deletion jobs

### Example 
```dart
import 'package:yapily_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//yapily_sdk.api.Configuration.username = 'YOUR_USERNAME';
//yapily_sdk.api.Configuration.password = 'YOUR_PASSWORD';
// TODO Configure OAuth2 access token for authorization: tokenAuth
//yapily_sdk.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ApplicationUsersApi();

try { 
    var result = api_instance.getDeleteUsersJobsUsingGET();
    print(result);
} catch (e) {
    print("Exception when calling ApplicationUsersApi->getDeleteUsersJobsUsingGET: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ApiListResponseOfBulkUserDelete**](ApiListResponseOfBulkUserDelete.md)

### Authorization

[basicAuth](../README.md#basicAuth), [tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserUsingGET**
> ApplicationUser getUserUsingGET(userUuid)

Get an application user

### Example 
```dart
import 'package:yapily_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//yapily_sdk.api.Configuration.username = 'YOUR_USERNAME';
//yapily_sdk.api.Configuration.password = 'YOUR_PASSWORD';
// TODO Configure OAuth2 access token for authorization: tokenAuth
//yapily_sdk.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ApplicationUsersApi();
var userUuid = userUuid_example; // String | userUuid

try { 
    var result = api_instance.getUserUsingGET(userUuid);
    print(result);
} catch (e) {
    print("Exception when calling ApplicationUsersApi->getUserUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userUuid** | **String**| userUuid | 

### Return type

[**ApplicationUser**](ApplicationUser.md)

### Authorization

[basicAuth](../README.md#basicAuth), [tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUsersUsingGET**
> List<ApplicationUser> getUsersUsingGET()

Get application users

### Example 
```dart
import 'package:yapily_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//yapily_sdk.api.Configuration.username = 'YOUR_USERNAME';
//yapily_sdk.api.Configuration.password = 'YOUR_PASSWORD';
// TODO Configure OAuth2 access token for authorization: tokenAuth
//yapily_sdk.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ApplicationUsersApi();

try { 
    var result = api_instance.getUsersUsingGET();
    print(result);
} catch (e) {
    print("Exception when calling ApplicationUsersApi->getUsersUsingGET: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<ApplicationUser>**](ApplicationUser.md)

### Authorization

[basicAuth](../README.md#basicAuth), [tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **startDeleteUsersJobUsingPOST**
> ApiResponseOfBulkUserDeleteDetails startDeleteUsersJobUsingPOST(userDeleteRequest)

Start a job to delete application users by specifying their identifiers

### Example 
```dart
import 'package:yapily_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//yapily_sdk.api.Configuration.username = 'YOUR_USERNAME';
//yapily_sdk.api.Configuration.password = 'YOUR_PASSWORD';
// TODO Configure OAuth2 access token for authorization: tokenAuth
//yapily_sdk.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ApplicationUsersApi();
var userDeleteRequest = new UserDeleteRequest(); // UserDeleteRequest | userDeleteRequest

try { 
    var result = api_instance.startDeleteUsersJobUsingPOST(userDeleteRequest);
    print(result);
} catch (e) {
    print("Exception when calling ApplicationUsersApi->startDeleteUsersJobUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userDeleteRequest** | [**UserDeleteRequest**](UserDeleteRequest.md)| userDeleteRequest | 

### Return type

[**ApiResponseOfBulkUserDeleteDetails**](ApiResponseOfBulkUserDeleteDetails.md)

### Authorization

[basicAuth](../README.md#basicAuth), [tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

