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
          apiClient.deserialize(response.body, 'Consent') as Consent ;
    } else {
      return null;
    }
  }
  /// Post auth-code and auth-state
  ///
  /// 
  Future<Consent> createConsentWithCodeUsingPOST(ConsentAuthCodeRequest consentByAuthCode) async {
    Object postBody = consentByAuthCode;

    // verify required params are set
    if(consentByAuthCode == null) {
     throw new ApiException(400, "Missing required param: consentByAuthCode");
    }

    // create path and map variables
    String path = "/consent-auth-code".replaceAll("{format}","json");

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
  Future<ApiResponseOfConsentDeleteResponse> deleteUsingDELETE(String consentId, { bool forceDelete }) async {
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
    if(forceDelete != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "forceDelete", forceDelete));
    }
    
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
          apiClient.deserialize(response.body, 'ApiResponseOfConsentDeleteResponse') as ApiResponseOfConsentDeleteResponse ;
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
          apiClient.deserialize(response.body, 'ApiResponseOfConsent') as ApiResponseOfConsent ;
    } else {
      return null;
    }
  }
  /// Post one time token
  ///
  /// 
  Future<Consent> getConsentBySingleAccessConsentUsingPOST(OneTimeTokenRequest oneTimeToken) async {
    Object postBody = oneTimeToken;

    // verify required params are set
    if(oneTimeToken == null) {
     throw new ApiException(400, "Missing required param: oneTimeToken");
    }

    // create path and map variables
    String path = "/consent-one-time-token".replaceAll("{format}","json");

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
  /// Get consents sorted by creation date
  ///
  /// 
  Future<ApiListResponseOfConsent> getConsentsUsingGET({ List<String> filter[applicationUserId], List<String> filter[userUuid], List<String> filter[institution], List<String> filter[status], String from, String before, int limit, int offset }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/consents".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(filter[applicationUserId] != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "filter[applicationUserId]", filter[applicationUserId]));
    }
    if(filter[userUuid] != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "filter[userUuid]", filter[userUuid]));
    }
    if(filter[institution] != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "filter[institution]", filter[institution]));
    }
    if(filter[status] != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "filter[status]", filter[status]));
    }
    if(from != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "from", from));
    }
    if(before != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "before", before));
    }
    if(limit != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "limit", limit));
    }
    if(offset != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "offset", offset));
    }
    
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
          apiClient.deserialize(response.body, 'ApiListResponseOfConsent') as ApiListResponseOfConsent ;
    } else {
      return null;
    }
  }
  /// Get latest user consents
  ///
  /// 
  Future<List<Consent>> getUserConsentsUsingGET(String userUuid, { String filter[institution], int limit }) async {
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
    if(filter[institution] != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter[institution]", filter[institution]));
    }
    if(limit != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "limit", limit));
    }
    
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
        (apiClient.deserialize(response.body, 'List<Consent>') as List).map((item) => item as Consent).toList();
    } else {
      return null;
    }
  }
}
