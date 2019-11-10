part of yapily_sdk.api;

class ApiListResponseOfAccountStatement {
  
  ResponseListMeta meta = null;
  

  List<AccountStatement> data = [];
  

  Map<String, String> links = {};
  
  ApiListResponseOfAccountStatement();

  @override
  String toString() {
    return 'ApiListResponseOfAccountStatement[meta=$meta, data=$data, links=$links, ]';
  }

  ApiListResponseOfAccountStatement.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    meta =
      
      
      new ResponseListMeta.fromJson(json['meta'])
;
    data =
      AccountStatement.listFromJson(json['data'])
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

  static List<ApiListResponseOfAccountStatement> listFromJson(List<dynamic> json) {
    return json == null ? new List<ApiListResponseOfAccountStatement>() : json.map((value) => new ApiListResponseOfAccountStatement.fromJson(value)).toList();
  }

  static Map<String, ApiListResponseOfAccountStatement> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ApiListResponseOfAccountStatement>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ApiListResponseOfAccountStatement.fromJson(value));
    }
    return map;
  }
}

