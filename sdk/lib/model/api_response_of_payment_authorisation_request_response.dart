part of yapily_sdk.api;

class ApiResponseOfPaymentAuthorisationRequestResponse {
  
  ResponseMeta meta = null;
  

  PaymentAuthorisationRequestResponse data = null;
  

  Map<String, String> links = {};
  
  ApiResponseOfPaymentAuthorisationRequestResponse();

  @override
  String toString() {
    return 'ApiResponseOfPaymentAuthorisationRequestResponse[meta=$meta, data=$data, links=$links, ]';
  }

  ApiResponseOfPaymentAuthorisationRequestResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    meta =
      
      
      new ResponseMeta.fromJson(json['meta'])
;
    data =
      
      
      new PaymentAuthorisationRequestResponse.fromJson(json['data'])
;
    links =
        json['links']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'meta': meta,
      'data': data,
      'links': links
     };
  }

  static List<ApiResponseOfPaymentAuthorisationRequestResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<ApiResponseOfPaymentAuthorisationRequestResponse>() : json.map((value) => new ApiResponseOfPaymentAuthorisationRequestResponse.fromJson(value)).toList();
  }

  static Map<String, ApiResponseOfPaymentAuthorisationRequestResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ApiResponseOfPaymentAuthorisationRequestResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ApiResponseOfPaymentAuthorisationRequestResponse.fromJson(value));
    }
    return map;
  }
}

