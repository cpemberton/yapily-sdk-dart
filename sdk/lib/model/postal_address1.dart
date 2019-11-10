part of yapily_sdk.api;

class PostalAddress1 {
  
  List<String> addressLine = [];
  

  String buildingNumber = null;
  

  String country = null;
  

  List<String> countrySubDivision = [];
  

  GeoLocation1 geoLocation = null;
  

  String postCode = null;
  

  String streetName = null;
  

  String townName = null;
  
  PostalAddress1();

  @override
  String toString() {
    return 'PostalAddress1[addressLine=$addressLine, buildingNumber=$buildingNumber, country=$country, countrySubDivision=$countrySubDivision, geoLocation=$geoLocation, postCode=$postCode, streetName=$streetName, townName=$townName, ]';
  }

  PostalAddress1.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    addressLine =
        (json['addressLine'] as List).map((item) => item as String).toList()
    ;
    buildingNumber =
        json['buildingNumber']
    ;
    country =
        json['country']
    ;
    countrySubDivision =
        (json['countrySubDivision'] as List).map((item) => item as String).toList()
    ;
    geoLocation =
      
      
      new GeoLocation1.fromJson(json['geoLocation'])
;
    postCode =
        json['postCode']
    ;
    streetName =
        json['streetName']
    ;
    townName =
        json['townName']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'addressLine': addressLine,
      'buildingNumber': buildingNumber,
      'country': country,
      'countrySubDivision': countrySubDivision,
      'geoLocation': geoLocation,
      'postCode': postCode,
      'streetName': streetName,
      'townName': townName
     };
  }

  static List<PostalAddress1> listFromJson(List<dynamic> json) {
    return json == null ? new List<PostalAddress1>() : json.map((value) => new PostalAddress1.fromJson(value)).toList();
  }

  static Map<String, PostalAddress1> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PostalAddress1>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PostalAddress1.fromJson(value));
    }
    return map;
  }
}

