part of yapily_sdk.api;

class ApiResponseOfUserDeleteResponse {
  
  ResponseMeta meta = null;
  

  UserDeleteResponse data = null;
  

  Map<String, String> links = {};
  
  ApiResponseOfUserDeleteResponse();

  @override
  String toString() {
    return 'ApiResponseOfUserDeleteResponse[meta=$meta, data=$data, links=$links, ]';
  }

  ApiResponseOfUserDeleteResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    meta =
      
      
      new ResponseMeta.fromJson(json['meta'])
;
    data =
      
      
      new UserDeleteResponse.fromJson(json['data'])
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

  static List<ApiResponseOfUserDeleteResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<ApiResponseOfUserDeleteResponse>() : json.map((value) => new ApiResponseOfUserDeleteResponse.fromJson(value)).toList();
  }

  static Map<String, ApiResponseOfUserDeleteResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ApiResponseOfUserDeleteResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ApiResponseOfUserDeleteResponse.fromJson(value));
    }
    return map;
  }
}

