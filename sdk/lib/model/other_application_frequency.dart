part of yapily_sdk.api;

class OtherApplicationFrequency {
  
  String code = null;
  

  String description = null;
  

  String name = null;
  
  OtherApplicationFrequency();

  @override
  String toString() {
    return 'OtherApplicationFrequency[code=$code, description=$description, name=$name, ]';
  }

  OtherApplicationFrequency.fromJson(Map<String, dynamic> json) {
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

  static List<OtherApplicationFrequency> listFromJson(List<dynamic> json) {
    return json == null ? new List<OtherApplicationFrequency>() : json.map((value) => new OtherApplicationFrequency.fromJson(value)).toList();
  }

  static Map<String, OtherApplicationFrequency> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OtherApplicationFrequency>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OtherApplicationFrequency.fromJson(value));
    }
    return map;
  }
}

