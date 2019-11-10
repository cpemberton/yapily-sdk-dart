part of yapily_sdk.api;

class ApiListResponseOfConsent {
  
  ResponseListMeta meta = null;
  

  List<Consent> data = [];
  

  Map<String, String> links = {};
  
  ApiListResponseOfConsent();

  @override
  String toString() {
    return 'ApiListResponseOfConsent[meta=$meta, data=$data, links=$links, ]';
  }

  ApiListResponseOfConsent.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    meta =
      
      
      new ResponseListMeta.fromJson(json['meta'])
;
    data =
      Consent.listFromJson(json['data'])
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

  static List<ApiListResponseOfConsent> listFromJson(List<dynamic> json) {
    return json == null ? new List<ApiListResponseOfConsent>() : json.map((value) => new ApiListResponseOfConsent.fromJson(value)).toList();
  }

  static Map<String, ApiListResponseOfConsent> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ApiListResponseOfConsent>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ApiListResponseOfConsent.fromJson(value));
    }
    return map;
  }
}

