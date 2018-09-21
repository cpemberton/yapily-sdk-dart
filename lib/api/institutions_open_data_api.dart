part of yapily_sdk.api;



class InstitutionsOpenDataApi {
  final ApiClient apiClient;

  InstitutionsOpenDataApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Retrieves data about all ATMs of the selected institution
  ///
  /// 
  Future<ApiResponseOfListOfATMOpenDataResponse> getATMDataUsingGET(String institutionId) async {
    Object postBody = null;

    // verify required params are set
    if(institutionId == null) {
     throw new ApiException(400, "Missing required param: institutionId");
    }

    // create path and map variables
    String path = "/institutions/{institutionId}/atms".replaceAll("{format}","json").replaceAll("{" + "institutionId" + "}", institutionId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
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
          apiClient.deserialize(response.body, 'ApiResponseOfListOfATMOpenDataResponse') as ApiResponseOfListOfATMOpenDataResponse ;
    } else {
      return null;
    }
  }
  /// Retrieves details of personal current accounts for an institution
  ///
  /// 
  Future<ApiResponseOfListOfPersonalCurrentAccountData> getPersonalCurrentAccountsUsingGET(String institutionId) async {
    Object postBody = null;

    // verify required params are set
    if(institutionId == null) {
     throw new ApiException(400, "Missing required param: institutionId");
    }

    // create path and map variables
    String path = "/institutions/{institutionId}/personal-current-accounts".replaceAll("{format}","json").replaceAll("{" + "institutionId" + "}", institutionId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
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
          apiClient.deserialize(response.body, 'ApiResponseOfListOfPersonalCurrentAccountData') as ApiResponseOfListOfPersonalCurrentAccountData ;
    } else {
      return null;
    }
  }
}
