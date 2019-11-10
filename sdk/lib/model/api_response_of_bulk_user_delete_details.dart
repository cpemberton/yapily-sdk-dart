part of yapily_sdk.api;

class ApiResponseOfBulkUserDeleteDetails {
  
  ResponseMeta meta = null;
  

  BulkUserDeleteDetails data = null;
  

  Map<String, String> links = {};
  
  ApiResponseOfBulkUserDeleteDetails();

  @override
  String toString() {
    return 'ApiResponseOfBulkUserDeleteDetails[meta=$meta, data=$data, links=$links, ]';
  }

  ApiResponseOfBulkUserDeleteDetails.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    meta =
      
      
      new ResponseMeta.fromJson(json['meta'])
;
    data =
      
      
      new BulkUserDeleteDetails.fromJson(json['data'])
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

  static List<ApiResponseOfBulkUserDeleteDetails> listFromJson(List<dynamic> json) {
    return json == null ? new List<ApiResponseOfBulkUserDeleteDetails>() : json.map((value) => new ApiResponseOfBulkUserDeleteDetails.fromJson(value)).toList();
  }

  static Map<String, ApiResponseOfBulkUserDeleteDetails> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ApiResponseOfBulkUserDeleteDetails>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ApiResponseOfBulkUserDeleteDetails.fromJson(value));
    }
    return map;
  }
}

