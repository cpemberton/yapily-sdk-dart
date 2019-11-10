part of yapily_sdk.api;



class OAuthApi {
  final ApiClient apiClient;

  OAuthApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Retrieve Access Token
  ///
  /// 
  Future<YapilyAccessToken> oauthToken(String grantType) async {
    Object postBody = null;

    // verify required params are set
    if(grantType == null) {
     throw new ApiException(400, "Missing required param: grantType");
    }

    // create path and map variables
    String path = "/oauth/token".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/x-www-form-urlencoded"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["basicAuth"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if (grantType != null) {
        hasFields = true;
        mp.fields['grant_type'] = parameterToString(grantType);
      }
      
      if(hasFields)
        postBody = mp;
    }
    else {
      if (grantType != null)
        formParams['grant_type'] = parameterToString(grantType);
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
          apiClient.deserialize(response.body, 'YapilyAccessToken') as YapilyAccessToken ;
    } else {
      return null;
    }
  }
}
