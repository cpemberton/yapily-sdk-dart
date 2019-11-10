part of yapily_sdk.api;

class Payee {
  
  String name = null;
  

  Address address = null;
  

  List<AccountIdentification> accountIdentifications = [];
  

  String merchantCategoryCode = null;
  

  String merchantId = null;
  
  Payee();

  @override
  String toString() {
    return 'Payee[name=$name, address=$address, accountIdentifications=$accountIdentifications, merchantCategoryCode=$merchantCategoryCode, merchantId=$merchantId, ]';
  }

  Payee.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name =
        json['name']
    ;
    address =
      
      
      new Address.fromJson(json['address'])
;
    accountIdentifications =
      AccountIdentification.listFromJson(json['accountIdentifications'])
;
    merchantCategoryCode =
        json['merchantCategoryCode']
    ;
    merchantId =
        json['merchantId']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'address': address,
      'accountIdentifications': accountIdentifications,
      'merchantCategoryCode': merchantCategoryCode,
      'merchantId': merchantId
     };
  }

  static List<Payee> listFromJson(List<dynamic> json) {
    return json == null ? new List<Payee>() : json.map((value) => new Payee.fromJson(value)).toList();
  }

  static Map<String, Payee> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Payee>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Payee.fromJson(value));
    }
    return map;
  }
}

