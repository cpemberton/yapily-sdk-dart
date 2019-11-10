part of yapily_sdk.api;

class ApiResponseOfAccountStatement {
  
  ResponseMeta meta = null;
  

  AccountStatement data = null;
  

  Map<String, String> links = {};
  
  ApiResponseOfAccountStatement();

  @override
  String toString() {
    return 'ApiResponseOfAccountStatement[meta=$meta, data=$data, links=$links, ]';
  }

  ApiResponseOfAccountStatement.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    meta =
      
      
      new ResponseMeta.fromJson(json['meta'])
;
    data =
      
      
      new AccountStatement.fromJson(json['data'])
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

  static List<ApiResponseOfAccountStatement> listFromJson(List<dynamic> json) {
    return json == null ? new List<ApiResponseOfAccountStatement>() : json.map((value) => new ApiResponseOfAccountStatement.fromJson(value)).toList();
  }

  static Map<String, ApiResponseOfAccountStatement> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ApiResponseOfAccountStatement>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ApiResponseOfAccountStatement.fromJson(value));
    }
    return map;
  }
}

