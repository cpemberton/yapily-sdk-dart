part of yapily_sdk.api;

class ApiResponseOfConsent {
  
  ResponseMeta meta = null;
  

  Consent data = null;
  
  ApiResponseOfConsent();

  @override
  String toString() {
    return 'ApiResponseOfConsent[meta=$meta, data=$data, ]';
  }

  ApiResponseOfConsent.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    meta =
      
      
      new ResponseMeta.fromJson(json['meta'])
;
    data =
      
      
      new Consent.fromJson(json['data'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'meta': meta,
      'data': data
     };
  }

  static List<ApiResponseOfConsent> listFromJson(List<dynamic> json) {
    return json == null ? new List<ApiResponseOfConsent>() : json.map((value) => new ApiResponseOfConsent.fromJson(value)).toList();
  }

  static Map<String, ApiResponseOfConsent> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ApiResponseOfConsent>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ApiResponseOfConsent.fromJson(value));
    }
    return map;
  }
}

