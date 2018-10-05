part of yapily_sdk.api;

class ResponseMeta {
  
  String tracingId = null;
  
  ResponseMeta();

  @override
  String toString() {
    return 'ResponseMeta[tracingId=$tracingId, ]';
  }

  ResponseMeta.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    tracingId =
        json['tracingId']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'tracingId': tracingId
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

