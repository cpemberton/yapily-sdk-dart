part of yapily_sdk.api;



class TransfersApi {
  final ApiClient apiClient;

  TransfersApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Transfer money from one account to another account accessible with the same consent
  ///
  /// 
  Future<ApiResponseOfTransferResponse> transferUsingPUT(String consent, String accountId, { TransferRequest transferRequest }) async {
    Object postBody = transferRequest;

    // verify required params are set
    if(consent == null) {
     throw new ApiException(400, "Missing required param: consent");
    }
    if(accountId == null) {
     throw new ApiException(400, "Missing required param: accountId");
    }

    // create path and map variables
    String path = "/accounts/{accountId}/transfer".replaceAll("{format}","json").replaceAll("{" + "accountId" + "}", accountId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    headerParams["consent"] = consent;

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
                                             'PUT',
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
          apiClient.deserialize(response.body, 'ApiResponseOfTransferResponse') as ApiResponseOfTransferResponse ;
    } else {
      return null;
    }
  }
}
