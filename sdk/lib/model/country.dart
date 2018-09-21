part of yapily_sdk.api;

class Country {
  
  String countryCode2 = null;
  

  String displayName = null;
  
  Country();

  @override
  String toString() {
    return 'Country[countryCode2=$countryCode2, displayName=$displayName, ]';
  }

  Country.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    countryCode2 =
        json['countryCode2']
    ;
    displayName =
        json['displayName']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'countryCode2': countryCode2,
      'displayName': displayName
     };
  }

  static List<Country> listFromJson(List<dynamic> json) {
    return json == null ? new List<Country>() : json.map((value) => new Country.fromJson(value)).toList();
  }

  static Map<String, Country> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Country>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Country.fromJson(value));
    }
    return map;
  }
}

