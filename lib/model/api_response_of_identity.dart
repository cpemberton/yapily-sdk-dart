part of yapily_sdk.api;

class ApiResponseOfIdentity {
  
  Identity data = null;
  
  ApiResponseOfIdentity();

  @override
  String toString() {
    return 'ApiResponseOfIdentity[data=$data, ]';
  }

  ApiResponseOfIdentity.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    data =
      
      
      new Identity.fromJson(json['data'])
;
  }

  Map<String, dynamic> toJson() {
    return {
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

