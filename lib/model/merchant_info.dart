part of yapily_sdk.api;

class MerchantInfo {
  
  String categoryCode = null;
  

  String customerId = null;
  

  Address address = null;
  
  MerchantInfo();

  @override
  String toString() {
    return 'MerchantInfo[categoryCode=$categoryCode, customerId=$customerId, address=$address, ]';
  }

  MerchantInfo.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    categoryCode =
        json['categoryCode']
    ;
    customerId =
        json['customerId']
    ;
    address =
      
      
      new Address.fromJson(json['address'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'categoryCode': categoryCode,
      'customerId': customerId,
      'address': address
     };
  }

  static List<MerchantInfo> listFromJson(List<dynamic> json) {
    return json == null ? new List<MerchantInfo>() : json.map((value) => new MerchantInfo.fromJson(value)).toList();
  }

  static Map<String, MerchantInfo> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, MerchantInfo>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new MerchantInfo.fromJson(value));
    }
    return map;
  }
}

