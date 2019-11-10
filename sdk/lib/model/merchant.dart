part of yapily_sdk.api;

class Merchant {
  
  String merchantName = null;
  

  String merchantCategoryCode = null;
  
  Merchant();

  @override
  String toString() {
    return 'Merchant[merchantName=$merchantName, merchantCategoryCode=$merchantCategoryCode, ]';
  }

  Merchant.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    merchantName =
        json['merchantName']
    ;
    merchantCategoryCode =
        json['merchantCategoryCode']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'merchantName': merchantName,
      'merchantCategoryCode': merchantCategoryCode
     };
  }

  static List<Merchant> listFromJson(List<dynamic> json) {
    return json == null ? new List<Merchant>() : json.map((value) => new Merchant.fromJson(value)).toList();
  }

  static Map<String, Merchant> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Merchant>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Merchant.fromJson(value));
    }
    return map;
  }
}

