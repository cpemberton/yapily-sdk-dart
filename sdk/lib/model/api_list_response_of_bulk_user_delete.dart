part of yapily_sdk.api;

class ApiListResponseOfBulkUserDelete {
  
  ResponseListMeta meta = null;
  

  List<BulkUserDelete> data = [];
  

  Map<String, String> links = {};
  
  ApiListResponseOfBulkUserDelete();

  @override
  String toString() {
    return 'ApiListResponseOfBulkUserDelete[meta=$meta, data=$data, links=$links, ]';
  }

  ApiListResponseOfBulkUserDelete.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    meta =
      
      
      new ResponseListMeta.fromJson(json['meta'])
;
    data =
      BulkUserDelete.listFromJson(json['data'])
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

  static List<ApiListResponseOfBulkUserDelete> listFromJson(List<dynamic> json) {
    return json == null ? new List<ApiListResponseOfBulkUserDelete>() : json.map((value) => new ApiListResponseOfBulkUserDelete.fromJson(value)).toList();
  }

  static Map<String, ApiListResponseOfBulkUserDelete> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ApiListResponseOfBulkUserDelete>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ApiListResponseOfBulkUserDelete.fromJson(value));
    }
    return map;
  }
}

