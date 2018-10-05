part of yapily_sdk.api;



class ConsentsApi {
  final ApiClient apiClient;

  ConsentsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Post consent
  ///
  /// 
  Future<Consent> addConsentUsingPOST(String userUuid, CreateConsentAccessToken createConsentAccessToken) async {
    Object postBody = createConsentAccessToken;

    // verify required params are set
    if(userUuid == null) {
     throw new ApiException(400, "Missing required param: userUuid");
    }
    if(createConsentAccessToken == null) {
     throw new ApiException(400, "Missing required param: createConsentAccessToken");
    }

    // create path and map variables
    String path = "/users/{userUuid}/consents".replaceAll("{format}","json").replaceAll("{" + "userUuid" + "}", userUuid.toString());

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
          apiClient.deserialize(response.body, 'Consent') as Consent ;
    } else {
      return null;
    }
  }
  /// Delete consent
  ///
  /// 
  Future<Object> deleteUsingDELETE(String consentId) async {
    Object postBody = null;

    // verify required params are set
    if(consentId == null) {
     throw new ApiException(400, "Missing required param: consentId");
    }

    // create path and map variables
    String path = "/consents/{consentId}".replaceAll("{format}","json").replaceAll("{" + "consentId" + "}", consentId.toString());

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
          apiClient.deserialize(response.body, 'Object') as Object ;
    } else {
      return null;
    }
  }
  /// Get consent
  ///
  /// 
  Future<ApiResponseOfConsent> getConsentByIdUsingGET(String consentId) async {
    Object postBody = null;

    // verify required params are set
    if(consentId == null) {
     throw new ApiException(400, "Missing required param: consentId");
    }

    // create path and map variables
    String path = "/consents/{consentId}".replaceAll("{format}","json").replaceAll("{" + "consentId" + "}", consentId.toString());

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
          apiClient.deserialize(response.body, 'ApiResponseOfConsent') as ApiResponseOfConsent ;
    } else {
      return null;
    }
  }
  /// Get user consents
  ///
  /// 
  Future<List<Consent>> getUserConsentsUsingGET(String userUuid, { String institutionId }) async {
    Object postBody = null;

    // verify required params are set
    if(userUuid == null) {
     throw new ApiException(400, "Missing required param: userUuid");
    }

    // create path and map variables
    String path = "/users/{userUuid}/consents".replaceAll("{format}","json").replaceAll("{" + "userUuid" + "}", userUuid.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(institutionId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "institutionId", institutionId));
    }
    
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
        (apiClient.deserialize(response.body, 'List<Consent>') as List).map((item) => item as Consent).toList();
    } else {
      return null;
    }
  }
}
