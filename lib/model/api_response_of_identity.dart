part of yapily_sdk.api;

class ApiResponseOfIdentity {
  
  ResponseMeta meta = null;
  

  Identity data = null;
  
  ApiResponseOfIdentity();

  @override
  String toString() {
    return 'ApiResponseOfIdentity[meta=$meta, data=$data, ]';
  }

  ApiResponseOfIdentity.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    meta =
      
      
      new ResponseMeta.fromJson(json['meta'])
;
    data =
      
      
      new Identity.fromJson(json['data'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'meta': meta,
      'data': data
     };
  }

  static List<ApiResponseOfIdentity> listFromJson(List<dynamic> json) {
    return json == null ? new List<ApiResponseOfIdentity>() : json.map((value) => new ApiResponseOfIdentity.fromJson(value)).toList();
  }

  static Map<String, ApiResponseOfIdentity> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ApiResponseOfIdentity>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ApiResponseOfIdentity.fromJson(value));
    }
    return map;
  }
}

