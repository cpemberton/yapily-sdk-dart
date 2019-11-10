part of yapily_sdk.api;

class ApiListResponseOfPaymentResponse {
  
  ResponseListMeta meta = null;
  

  List<PaymentResponse> data = [];
  

  Map<String, String> links = {};
  
  ApiListResponseOfPaymentResponse();

  @override
  String toString() {
    return 'ApiListResponseOfPaymentResponse[meta=$meta, data=$data, links=$links, ]';
  }

  ApiListResponseOfPaymentResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    meta =
      
      
      new ResponseListMeta.fromJson(json['meta'])
;
    data =
      PaymentResponse.listFromJson(json['data'])
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

  static List<ApiListResponseOfPaymentResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<ApiListResponseOfPaymentResponse>() : json.map((value) => new ApiListResponseOfPaymentResponse.fromJson(value)).toList();
  }

  static Map<String, ApiListResponseOfPaymentResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ApiListResponseOfPaymentResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ApiListResponseOfPaymentResponse.fromJson(value));
    }
    return map;
  }
}

