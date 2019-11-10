part of yapily_sdk.api;

class ApiResponseOfListOfPersonalCurrentAccountData {
  
  ResponseMeta meta = null;
  

  List<PersonalCurrentAccountData> data = [];
  

  Map<String, String> links = {};
  
  ApiResponseOfListOfPersonalCurrentAccountData();

  @override
  String toString() {
    return 'ApiResponseOfListOfPersonalCurrentAccountData[meta=$meta, data=$data, links=$links, ]';
  }

  ApiResponseOfListOfPersonalCurrentAccountData.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    meta =
      
      
      new ResponseMeta.fromJson(json['meta'])
;
    data =
      PersonalCurrentAccountData.listFromJson(json['data'])
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

  static List<ApiResponseOfListOfPersonalCurrentAccountData> listFromJson(List<dynamic> json) {
    return json == null ? new List<ApiResponseOfListOfPersonalCurrentAccountData>() : json.map((value) => new ApiResponseOfListOfPersonalCurrentAccountData.fromJson(value)).toList();
  }

  static Map<String, ApiResponseOfListOfPersonalCurrentAccountData> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ApiResponseOfListOfPersonalCurrentAccountData>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ApiResponseOfListOfPersonalCurrentAccountData.fromJson(value));
    }
    return map;
  }
}

