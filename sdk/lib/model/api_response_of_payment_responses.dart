part of yapily_sdk.api;

class ApiResponseOfPaymentResponses {
  
  ResponseMeta meta = null;
  

  PaymentResponses data = null;
  

  Map<String, String> links = {};
  
  ApiResponseOfPaymentResponses();

  @override
  String toString() {
    return 'ApiResponseOfPaymentResponses[meta=$meta, data=$data, links=$links, ]';
  }

  ApiResponseOfPaymentResponses.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    meta =
      
      
      new ResponseMeta.fromJson(json['meta'])
;
    data =
      
      
      new PaymentResponses.fromJson(json['data'])
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

  static List<ApiResponseOfPaymentResponses> listFromJson(List<dynamic> json) {
    return json == null ? new List<ApiResponseOfPaymentResponses>() : json.map((value) => new ApiResponseOfPaymentResponses.fromJson(value)).toList();
  }

  static Map<String, ApiResponseOfPaymentResponses> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ApiResponseOfPaymentResponses>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ApiResponseOfPaymentResponses.fromJson(value));
    }
    return map;
  }
}

