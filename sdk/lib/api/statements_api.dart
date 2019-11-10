part of yapily_sdk.api;



class StatementsApi {
  final ApiClient apiClient;

  StatementsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Get account statement file
  ///
  /// 
  Future<String> getStatementFileUsingGET(String consent, String accountId, String statementId) async {
    Object postBody = null;

    // verify required params are set
    if(consent == null) {
     throw new ApiException(400, "Missing required param: consent");
    }
    if(accountId == null) {
     throw new ApiException(400, "Missing required param: accountId");
    }
    if(statementId == null) {
     throw new ApiException(400, "Missing required param: statementId");
    }

    // create path and map variables
    String path = "/accounts/{accountId}/statements/{statementId}/file".replaceAll("{format}","json").replaceAll("{" + "accountId" + "}", accountId.toString()).replaceAll("{" + "statementId" + "}", statementId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    headerParams["consent"] = consent;

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
          apiClient.deserialize(response.body, 'String') as String ;
    } else {
      return null;
    }
  }
  /// Get account statement
  ///
  /// 
  Future<ApiResponseOfAccountStatement> getStatementUsingGET(String consent, String accountId, String statementId) async {
    Object postBody = null;

    // verify required params are set
    if(consent == null) {
     throw new ApiException(400, "Missing required param: consent");
    }
    if(accountId == null) {
     throw new ApiException(400, "Missing required param: accountId");
    }
    if(statementId == null) {
     throw new ApiException(400, "Missing required param: statementId");
    }

    // create path and map variables
    String path = "/accounts/{accountId}/statements/{statementId}".replaceAll("{format}","json").replaceAll("{" + "accountId" + "}", accountId.toString()).replaceAll("{" + "statementId" + "}", statementId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    headerParams["consent"] = consent;

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
          apiClient.deserialize(response.body, 'ApiResponseOfAccountStatement') as ApiResponseOfAccountStatement ;
    } else {
      return null;
    }
  }
  /// Get account statements
  ///
  /// 
  Future<ApiListResponseOfAccountStatement> getStatementsUsingGET(String consent, String accountId, { String from, String before, int limit, String sort, int offset }) async {
    Object postBody = null;

    // verify required params are set
    if(consent == null) {
     throw new ApiException(400, "Missing required param: consent");
    }
    if(accountId == null) {
     throw new ApiException(400, "Missing required param: accountId");
    }

    // create path and map variables
    String path = "/accounts/{accountId}/statements".replaceAll("{format}","json").replaceAll("{" + "accountId" + "}", accountId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(from != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "from", from));
    }
    if(before != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "before", before));
    }
    if(limit != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "limit", limit));
    }
    if(sort != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "sort", sort));
    }
    if(offset != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "offset", offset));
    }
    headerParams["consent"] = consent;

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
          apiClient.deserialize(response.body, 'ApiListResponseOfAccountStatement') as ApiListResponseOfAccountStatement ;
    } else {
      return null;
    }
  }
}
