part of yapily_sdk.api;

class ApiListResponseOfTransaction {
  
  ResponseListMeta meta = null;
  

  List<Transaction> data = [];
  

  Map<String, String> links = {};
  
  ApiListResponseOfTransaction();

  @override
  String toString() {
    return 'ApiListResponseOfTransaction[meta=$meta, data=$data, links=$links, ]';
  }

  ApiListResponseOfTransaction.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    meta =
      
      
      new ResponseListMeta.fromJson(json['meta'])
;
    data =
      Transaction.listFromJson(json['data'])
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

  static List<ApiListResponseOfTransaction> listFromJson(List<dynamic> json) {
    return json == null ? new List<ApiListResponseOfTransaction>() : json.map((value) => new ApiListResponseOfTransaction.fromJson(value)).toList();
  }

  static Map<String, ApiListResponseOfTransaction> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ApiListResponseOfTransaction>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ApiListResponseOfTransaction.fromJson(value));
    }
    return map;
  }
}

