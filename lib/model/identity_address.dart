part of yapily_sdk.api;

class IdentityAddress {
  
  List<String> addressLines = [];
  

  String city = null;
  

  String country = null;
  

  String postalCode = null;
  
  IdentityAddress();

  @override
  String toString() {
    return 'IdentityAddress[addressLines=$addressLines, city=$city, country=$country, postalCode=$postalCode, ]';
  }

  IdentityAddress.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    addressLines =
        (json['addressLines'] as List).map((item) => item as String).toList()
    ;
    city =
        json['city']
    ;
    country =
        json['country']
    ;
    postalCode =
        json['postalCode']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'addressLines': addressLines,
      'city': city,
      'country': country,
      'postalCode': postalCode
     };
  }

  static List<IdentityAddress> listFromJson(List<dynamic> json) {
    return json == null ? new List<IdentityAddress>() : json.map((value) => new IdentityAddress.fromJson(value)).toList();
  }

  static Map<String, IdentityAddress> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, IdentityAddress>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new IdentityAddress.fromJson(value));
    }
    return map;
  }
}

