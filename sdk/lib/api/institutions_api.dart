part of yapily_sdk.api;



class InstitutionsApi {
  final ApiClient apiClient;

  InstitutionsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Retrieve details for Yapily&#39;s institution features
  ///
  /// 
  Future<ApiListResponseOfFeatureDetails> getFeatureDetailsUsingGET() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/features".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'ApiListResponseOfFeatureDetails') as ApiListResponseOfFeatureDetails ;
    } else {
      return null;
    }
  }
  /// Retrieves details of a specific institution available in Yapily
  ///
  /// 
  Future<Institution> getInstitutionUsingGET(String institutionId) async {
    Object postBody = null;

    // verify required params are set
    if(institutionId == null) {
     throw new ApiException(400, "Missing required param: institutionId");
    }

    // create path and map variables
    String path = "/institutions/{institutionId}".replaceAll("{format}","json").replaceAll("{" + "institutionId" + "}", institutionId.toString());

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
          apiClient.deserialize(response.body, 'Institution') as Institution ;
    } else {
      return null;
    }
  }
  /// Retrieves the list of institutions available in Yapily
  ///
  /// 
  Future<ApiListResponseOfInstitution> getInstitutionsUsingGET() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/institutions".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'ApiListResponseOfInstitution') as ApiListResponseOfInstitution ;
    } else {
      return null;
    }
  }
}
