part of yapily_sdk.api;

class ApiListResponseOfTransaction {
  
  ResponseListMeta meta = null;
  

  List<Transaction> data = [];
  
  ApiListResponseOfTransaction();

  @override
  String toString() {
    return 'ApiListResponseOfTransaction[meta=$meta, data=$data, ]';
  }

  ApiListResponseOfTransaction.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    meta =
      
      
      new ResponseListMeta.fromJson(json['meta'])
;
    data =
      Transaction.listFromJson(json['data'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'meta': meta,
      'data': data
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

