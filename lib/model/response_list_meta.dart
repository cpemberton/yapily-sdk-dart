part of yapily_sdk.api;

class ResponseListMeta {
  
  String tracingId = null;
  

  int count = null;
  

  Pagination pagination = null;
  
  ResponseListMeta();

  @override
  String toString() {
    return 'ResponseListMeta[tracingId=$tracingId, count=$count, pagination=$pagination, ]';
  }

  ResponseListMeta.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    tracingId =
        json['tracingId']
    ;
    count =
        json['count']
    ;
    pagination =
      
      
      new Pagination.fromJson(json['pagination'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'tracingId': tracingId,
      'count': count,
      'pagination': pagination
     };
  }

  static List<ResponseListMeta> listFromJson(List<dynamic> json) {
    return json == null ? new List<ResponseListMeta>() : json.map((value) => new ResponseListMeta.fromJson(value)).toList();
  }

  static Map<String, ResponseListMeta> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ResponseListMeta>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ResponseListMeta.fromJson(value));
    }
    return map;
  }
}

