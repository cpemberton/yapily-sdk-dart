part of yapily_sdk.api;

class ApiResponseOfConsentDeleteResponse {
  
  ResponseMeta meta = null;
  

  ConsentDeleteResponse data = null;
  

  Map<String, String> links = {};
  
  ApiResponseOfConsentDeleteResponse();

  @override
  String toString() {
    return 'ApiResponseOfConsentDeleteResponse[meta=$meta, data=$data, links=$links, ]';
  }

  ApiResponseOfConsentDeleteResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    meta =
      
      
      new ResponseMeta.fromJson(json['meta'])
;
    data =
      
      
      new ConsentDeleteResponse.fromJson(json['data'])
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

  static List<ApiResponseOfConsentDeleteResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<ApiResponseOfConsentDeleteResponse>() : json.map((value) => new ApiResponseOfConsentDeleteResponse.fromJson(value)).toList();
  }

  static Map<String, ApiResponseOfConsentDeleteResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ApiResponseOfConsentDeleteResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ApiResponseOfConsentDeleteResponse.fromJson(value));
    }
    return map;
  }
}

