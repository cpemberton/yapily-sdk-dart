part of yapily_sdk.api;



class IdentityApi {
  final ApiClient apiClient;

  IdentityApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Get identity
  ///
  /// 
  Future<ApiResponseOfIdentity> getIdentityUsingGET(String consent) async {
    Object postBody = null;

    // verify required params are set
    if(consent == null) {
     throw new ApiException(400, "Missing required param: consent");
    }

    // create path and map variables
    String path = "/identity".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    headerParams["consent"] = consent;

    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["basicAuth"];

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
          apiClient.deserialize(response.body, 'ApiResponseOfIdentity') as ApiResponseOfIdentity ;
    } else {
      return null;
    }
  }
}
