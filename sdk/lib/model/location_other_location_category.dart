part of yapily_sdk.api;

class LocationOtherLocationCategory {
  
  String code = null;
  

  String description = null;
  

  String name = null;
  
  LocationOtherLocationCategory();

  @override
  String toString() {
    return 'LocationOtherLocationCategory[code=$code, description=$description, name=$name, ]';
  }

  LocationOtherLocationCategory.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    code =
        json['code']
    ;
    description =
        json['description']
    ;
    name =
        json['name']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'code': code,
      'description': description,
      'name': name
     };
  }

  static List<LocationOtherLocationCategory> listFromJson(List<dynamic> json) {
    return json == null ? new List<LocationOtherLocationCategory>() : json.map((value) => new LocationOtherLocationCategory.fromJson(value)).toList();
  }

  static Map<String, LocationOtherLocationCategory> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, LocationOtherLocationCategory>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new LocationOtherLocationCategory.fromJson(value));
    }
    return map;
  }
}

