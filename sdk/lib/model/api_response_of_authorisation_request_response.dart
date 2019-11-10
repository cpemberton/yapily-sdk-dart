part of yapily_sdk.api;

class ApiResponseOfAuthorisationRequestResponse {
  
  ResponseMeta meta = null;
  

  AuthorisationRequestResponse data = null;
  

  Map<String, String> links = {};
  
  ApiResponseOfAuthorisationRequestResponse();

  @override
  String toString() {
    return 'ApiResponseOfAuthorisationRequestResponse[meta=$meta, data=$data, links=$links, ]';
  }

  ApiResponseOfAuthorisationRequestResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    meta =
      
      
      new ResponseMeta.fromJson(json['meta'])
;
    data =
      
      
      new AuthorisationRequestResponse.fromJson(json['data'])
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

  static List<ApiResponseOfAuthorisationRequestResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<ApiResponseOfAuthorisationRequestResponse>() : json.map((value) => new ApiResponseOfAuthorisationRequestResponse.fromJson(value)).toList();
  }

  static Map<String, ApiResponseOfAuthorisationRequestResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ApiResponseOfAuthorisationRequestResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ApiResponseOfAuthorisationRequestResponse.fromJson(value));
    }
    return map;
  }
}

