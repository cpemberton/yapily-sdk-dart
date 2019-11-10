part of yapily_sdk.api;

class ApiListResponseOfFeatureDetails {
  
  ResponseListMeta meta = null;
  

  List<FeatureDetails> data = [];
  

  Map<String, String> links = {};
  
  ApiListResponseOfFeatureDetails();

  @override
  String toString() {
    return 'ApiListResponseOfFeatureDetails[meta=$meta, data=$data, links=$links, ]';
  }

  ApiListResponseOfFeatureDetails.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    meta =
      
      
      new ResponseListMeta.fromJson(json['meta'])
;
    data =
      FeatureDetails.listFromJson(json['data'])
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

  static List<ApiListResponseOfFeatureDetails> listFromJson(List<dynamic> json) {
    return json == null ? new List<ApiListResponseOfFeatureDetails>() : json.map((value) => new ApiListResponseOfFeatureDetails.fromJson(value)).toList();
  }

  static Map<String, ApiListResponseOfFeatureDetails> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ApiListResponseOfFeatureDetails>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ApiListResponseOfFeatureDetails.fromJson(value));
    }
    return map;
  }
}

