part of yapily_sdk.api;

class ApiResponseOfPaymentResponse {
  
  PaymentResponse data = null;
  
  ApiResponseOfPaymentResponse();

  @override
  String toString() {
    return 'ApiResponseOfPaymentResponse[data=$data, ]';
  }

  ApiResponseOfPaymentResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    data =
      
      
      new PaymentResponse.fromJson(json['data'])
;
  }

  Map<String, dynamic> toJson() {
    return {
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

