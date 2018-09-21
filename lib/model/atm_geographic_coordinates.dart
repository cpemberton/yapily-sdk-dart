part of yapily_sdk.api;

class ATMGeographicCoordinates {
  
  String latitude = null;
  

  String longitude = null;
  
  ATMGeographicCoordinates();

  @override
  String toString() {
    return 'ATMGeographicCoordinates[latitude=$latitude, longitude=$longitude, ]';
  }

  ATMGeographicCoordinates.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    latitude =
        json['latitude']
    ;
    longitude =
        json['longitude']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'latitude': latitude,
      'longitude': longitude
     };
  }

  static List<ATMGeographicCoordinates> listFromJson(List<dynamic> json) {
    return json == null ? new List<ATMGeographicCoordinates>() : json.map((value) => new ATMGeographicCoordinates.fromJson(value)).toList();
  }

  static Map<String, ATMGeographicCoordinates> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ATMGeographicCoordinates>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ATMGeographicCoordinates.fromJson(value));
    }
    return map;
  }
}

