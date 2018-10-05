part of yapily_sdk.api;

class ApiResponseOfPaymentResponse {
  
  ResponseMeta meta = null;
  

  PaymentResponse data = null;
  
  ApiResponseOfPaymentResponse();

  @override
  String toString() {
    return 'ApiResponseOfPaymentResponse[meta=$meta, data=$data, ]';
  }

  ApiResponseOfPaymentResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    meta =
      
      
      new ResponseMeta.fromJson(json['meta'])
;
    data =
      
      
      new PaymentResponse.fromJson(json['data'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'meta': meta,
      'data': data
     };
  }

  static List<ApiResponseOfPaymentResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<ApiResponseOfPaymentResponse>() : json.map((value) => new ApiResponseOfPaymentResponse.fromJson(value)).toList();
  }

  static Map<String, ApiResponseOfPaymentResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ApiResponseOfPaymentResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ApiResponseOfPaymentResponse.fromJson(value));
    }
    return map;
  }
}

