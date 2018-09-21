part of yapily_sdk.api;

class ATMPostalAddress {
  
  List<String> addressLine = [];
  

  String buildingNumber = null;
  

  String country = null;
  

  List<String> countrySubDivision = [];
  

  ATMGeoLocation geoLocation = null;
  

  String postCode = null;
  

  String streetName = null;
  

  String townName = null;
  
  ATMPostalAddress();

  @override
  String toString() {
    return 'ATMPostalAddress[addressLine=$addressLine, buildingNumber=$buildingNumber, country=$country, countrySubDivision=$countrySubDivision, geoLocation=$geoLocation, postCode=$postCode, streetName=$streetName, townName=$townName, ]';
  }

  ATMPostalAddress.fromJson(Map<String, dynamic> json) {
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
      
      
      new ATMGeoLocation.fromJson(json['geoLocation'])
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

  static List<ATMPostalAddress> listFromJson(List<dynamic> json) {
    return json == null ? new List<ATMPostalAddress>() : json.map((value) => new ATMPostalAddress.fromJson(value)).toList();
  }

  static Map<String, ATMPostalAddress> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ATMPostalAddress>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ATMPostalAddress.fromJson(value));
    }
    return map;
  }
}

