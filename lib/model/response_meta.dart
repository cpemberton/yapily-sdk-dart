part of yapily_sdk.api;

class ResponseMeta {
  
  int count = null;
  
  ResponseMeta();

  @override
  String toString() {
    return 'ResponseMeta[count=$count, ]';
  }

  ResponseMeta.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    count =
        json['count']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'count': count
     };
  }

  static List<ResponseMeta> listFromJson(List<dynamic> json) {
    return json == null ? new List<ResponseMeta>() : json.map((value) => new ResponseMeta.fromJson(value)).toList();
  }

  static Map<String, ResponseMeta> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ResponseMeta>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ResponseMeta.fromJson(value));
    }
    return map;
  }
}

