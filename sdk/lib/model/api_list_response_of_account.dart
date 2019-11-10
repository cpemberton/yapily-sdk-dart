part of yapily_sdk.api;

class ApiListResponseOfAccount {
  
  ResponseListMeta meta = null;
  

  List<Account> data = [];
  

  Map<String, String> links = {};
  
  ApiListResponseOfAccount();

  @override
  String toString() {
    return 'ApiListResponseOfAccount[meta=$meta, data=$data, links=$links, ]';
  }

  ApiListResponseOfAccount.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    meta =
      
      
      new ResponseListMeta.fromJson(json['meta'])
;
    data =
      Account.listFromJson(json['data'])
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

  static List<ApiListResponseOfAccount> listFromJson(List<dynamic> json) {
    return json == null ? new List<ApiListResponseOfAccount>() : json.map((value) => new ApiListResponseOfAccount.fromJson(value)).toList();
  }

  static Map<String, ApiListResponseOfAccount> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ApiListResponseOfAccount>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ApiListResponseOfAccount.fromJson(value));
    }
    return map;
  }
}

