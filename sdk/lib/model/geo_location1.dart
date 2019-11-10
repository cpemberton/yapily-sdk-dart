part of yapily_sdk.api;

class GeoLocation1 {
  
  GeographicCoordinates1 geographicCoordinates = null;
  
  GeoLocation1();

  @override
  String toString() {
    return 'GeoLocation1[geographicCoordinates=$geographicCoordinates, ]';
  }

  GeoLocation1.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    geographicCoordinates =
      
      
      new GeographicCoordinates1.fromJson(json['geographicCoordinates'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'geographicCoordinates': geographicCoordinates
     };
  }

  static List<GeoLocation1> listFromJson(List<dynamic> json) {
    return json == null ? new List<GeoLocation1>() : json.map((value) => new GeoLocation1.fromJson(value)).toList();
  }

  static Map<String, GeoLocation1> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GeoLocation1>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GeoLocation1.fromJson(value));
    }
    return map;
  }
}

