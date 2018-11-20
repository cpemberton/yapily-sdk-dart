part of yapily_sdk.api;

class Address {
  
  List<String> addressLines = [];
  

  String streetName = null;
  

  String buildingNumber = null;
  

  String postCode = null;
  

  String townName = null;
  

  List<String> county = [];
  

  String country = null;
  
  Address();

  @override
  String toString() {
    return 'Address[addressLines=$addressLines, streetName=$streetName, buildingNumber=$buildingNumber, postCode=$postCode, townName=$townName, county=$county, country=$country, ]';
  }

  Address.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    addressLines =
        (json['addressLines'] as List).map((item) => item as String).toList()
    ;
    streetName =
        json['streetName']
    ;
    buildingNumber =
        json['buildingNumber']
    ;
    postCode =
        json['postCode']
    ;
    townName =
        json['townName']
    ;
    county =
        (json['county'] as List).map((item) => item as String).toList()
    ;
    country =
        json['country']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'addressLines': addressLines,
      'streetName': streetName,
      'buildingNumber': buildingNumber,
      'postCode': postCode,
      'townName': townName,
      'county': county,
      'country': country
     };
  }

  static List<Address> listFromJson(List<dynamic> json) {
    return json == null ? new List<Address>() : json.map((value) => new Address.fromJson(value)).toList();
  }

  static Map<String, Address> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Address>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Address.fromJson(value));
    }
    return map;
  }
}

