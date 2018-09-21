part of yapily_sdk.api;

class ApiListResponseOfFeatureDetails {
  
  ResponseMeta meta = null;
  

  List<FeatureDetails> data = [];
  
  ApiListResponseOfFeatureDetails();

  @override
  String toString() {
    return 'ApiListResponseOfFeatureDetails[meta=$meta, data=$data, ]';
  }

  ApiListResponseOfFeatureDetails.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    meta =
      
      
      new ResponseMeta.fromJson(json['meta'])
;
    data =
      FeatureDetails.listFromJson(json['data'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'meta': meta,
      'data': data
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

