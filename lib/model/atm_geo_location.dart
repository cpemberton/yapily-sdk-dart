part of yapily_sdk.api;

class ATMGeoLocation {
  
  ATMGeographicCoordinates geographicCoordinates = null;
  
  ATMGeoLocation();

  @override
  String toString() {
    return 'ATMGeoLocation[geographicCoordinates=$geographicCoordinates, ]';
  }

  ATMGeoLocation.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    geographicCoordinates =
      
      
      new ATMGeographicCoordinates.fromJson(json['geographicCoordinates'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'geographicCoordinates': geographicCoordinates
     };
  }

  static List<ATMGeoLocation> listFromJson(List<dynamic> json) {
    return json == null ? new List<ATMGeoLocation>() : json.map((value) => new ATMGeoLocation.fromJson(value)).toList();
  }

  static Map<String, ATMGeoLocation> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ATMGeoLocation>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ATMGeoLocation.fromJson(value));
    }
    return map;
  }
}

