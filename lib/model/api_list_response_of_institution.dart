part of yapily_sdk.api;

class ApiListResponseOfInstitution {
  
  ResponseListMeta meta = null;
  

  List<Institution> data = [];
  
  ApiListResponseOfInstitution();

  @override
  String toString() {
    return 'ApiListResponseOfInstitution[meta=$meta, data=$data, ]';
  }

  ApiListResponseOfInstitution.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    meta =
      
      
      new ResponseListMeta.fromJson(json['meta'])
;
    data =
      Institution.listFromJson(json['data'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'meta': meta,
      'data': data
     };
  }

  static List<ApiListResponseOfInstitution> listFromJson(List<dynamic> json) {
    return json == null ? new List<ApiListResponseOfInstitution>() : json.map((value) => new ApiListResponseOfInstitution.fromJson(value)).toList();
  }

  static Map<String, ApiListResponseOfInstitution> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ApiListResponseOfInstitution>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ApiListResponseOfInstitution.fromJson(value));
    }
    return map;
  }
}

