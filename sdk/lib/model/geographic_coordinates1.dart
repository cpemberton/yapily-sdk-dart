part of yapily_sdk.api;

class GeographicCoordinates1 {
  
  String latitude = null;
  

  String longitude = null;
  
  GeographicCoordinates1();

  @override
  String toString() {
    return 'GeographicCoordinates1[latitude=$latitude, longitude=$longitude, ]';
  }

  GeographicCoordinates1.fromJson(Map<String, dynamic> json) {
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

  static List<GeographicCoordinates1> listFromJson(List<dynamic> json) {
    return json == null ? new List<GeographicCoordinates1>() : json.map((value) => new GeographicCoordinates1.fromJson(value)).toList();
  }

  static Map<String, GeographicCoordinates1> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GeographicCoordinates1>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GeographicCoordinates1.fromJson(value));
    }
    return map;
  }
}

