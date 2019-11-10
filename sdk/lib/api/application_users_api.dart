part of yapily_sdk.api;



class ApplicationUsersApi {
  final ApiClient apiClient;

  ApplicationUsersApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Add an application user
  ///
  /// 
  Future<ApplicationUser> addUserUsingPOST(NewApplicationUser newApplicationUser) async {
    Object postBody = newApplicationUser;

    // verify required params are set
    if(newApplicationUser == null) {
     throw new ApiException(400, "Missing required param: newApplicationUser");
    }

    // create path and map variables
    String path = "/users".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json;charset=UTF-8"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["basicAuth", "tokenAuth"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          apiClient.deserialize(response.body, 'ApplicationUser') as ApplicationUser ;
    } else {
      return null;
    }
  }
  /// Delete an application user and sub-resources (including consent resources on institution APIs if they exist)
  ///
  /// 
  Future<ApiResponseOfUserDeleteResponse> deleteUserUsingDELETE(String userUuid) async {
    Object postBody = null;

    // verify required params are set
    if(userUuid == null) {
     throw new ApiException(400, "Missing required param: userUuid");
    }

    // create path and map variables
    String path = "/users/{userUuid}".replaceAll("{format}","json").replaceAll("{" + "userUuid" + "}", userUuid.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["basicAuth", "tokenAuth"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'DELETE',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          apiClient.deserialize(response.body, 'ApiResponseOfUserDeleteResponse') as ApiResponseOfUserDeleteResponse ;
    } else {
      return null;
    }
  }
  /// Get details of a user deletion job
  ///
  /// 
  Future<ApiResponseOfBulkUserDeleteDetails> getDeleteUsersJobUsingGET(String jobId) async {
    Object postBody = null;

    // verify required params are set
    if(jobId == null) {
     throw new ApiException(400, "Missing required param: jobId");
    }

    // create path and map variables
    String path = "/delete-users/{job-id}".replaceAll("{format}","json").replaceAll("{" + "job-id" + "}", jobId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["basicAuth", "tokenAuth"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          apiClient.deserialize(response.body, 'ApiResponseOfBulkUserDeleteDetails') as ApiResponseOfBulkUserDeleteDetails ;
    } else {
      return null;
    }
  }
  /// Get details of all user deletion jobs
  ///
  /// 
  Future<ApiListResponseOfBulkUserDelete> getDeleteUsersJobsUsingGET() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/delete-users".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["basicAuth", "tokenAuth"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          apiClient.deserialize(response.body, 'ApiListResponseOfBulkUserDelete') as ApiListResponseOfBulkUserDelete ;
    } else {
      return null;
    }
  }
  /// Get an application user
  ///
  /// 
  Future<ApplicationUser> getUserUsingGET(String userUuid) async {
    Object postBody = null;

    // verify required params are set
    if(userUuid == null) {
     throw new ApiException(400, "Missing required param: userUuid");
    }

    // create path and map variables
    String path = "/users/{userUuid}".replaceAll("{format}","json").replaceAll("{" + "userUuid" + "}", userUuid.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["basicAuth", "tokenAuth"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          apiClient.deserialize(response.body, 'ApplicationUser') as ApplicationUser ;
    } else {
      return null;
    }
  }
  /// Get application users
  ///
  /// 
  Future<List<ApplicationUser>> getUsersUsingGET() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/users".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["basicAuth", "tokenAuth"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
        (apiClient.deserialize(response.body, 'List<ApplicationUser>') as List).map((item) => item as ApplicationUser).toList();
    } else {
      return null;
    }
  }
  /// Start a job to delete application users by specifying their identifiers
  ///
  /// 
  Future<ApiResponseOfBulkUserDeleteDetails> startDeleteUsersJobUsingPOST(UserDeleteRequest userDeleteRequest) async {
    Object postBody = userDeleteRequest;

    // verify required params are set
    if(userDeleteRequest == null) {
     throw new ApiException(400, "Missing required param: userDeleteRequest");
    }

    // create path and map variables
    String path = "/delete-users".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json;charset=UTF-8"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["basicAuth", "tokenAuth"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          apiClient.deserialize(response.body, 'ApiResponseOfBulkUserDeleteDetails') as ApiResponseOfBulkUserDeleteDetails ;
    } else {
      return null;
    }
  }
}
