part of yapily_sdk.api;

class ApiResponseOfAccount {
  
  ResponseMeta meta = null;
  

  Account data = null;
  
  ApiResponseOfAccount();

  @override
  String toString() {
    return 'ApiResponseOfAccount[meta=$meta, data=$data, ]';
  }

  ApiResponseOfAccount.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    meta =
      
      
      new ResponseMeta.fromJson(json['meta'])
;
    data =
      
      
      new Account.fromJson(json['data'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'meta': meta,
      'data': data
     };
  }

  static List<ApiResponseOfAccount> listFromJson(List<dynamic> json) {
    return json == null ? new List<ApiResponseOfAccount>() : json.map((value) => new ApiResponseOfAccount.fromJson(value)).toList();
  }

  static Map<String, ApiResponseOfAccount> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ApiResponseOfAccount>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ApiResponseOfAccount.fromJson(value));
    }
    return map;
  }
}

