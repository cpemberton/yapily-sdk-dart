part of yapily_sdk.api;

class OtherType {
  
  String code = null;
  

  String description = null;
  

  String name = null;
  
  OtherType();

  @override
  String toString() {
    return 'OtherType[code=$code, description=$description, name=$name, ]';
  }

  OtherType.fromJson(Map<String, dynamic> json) {
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

  static List<OtherType> listFromJson(List<dynamic> json) {
    return json == null ? new List<OtherType>() : json.map((value) => new OtherType.fromJson(value)).toList();
  }

  static Map<String, OtherType> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OtherType>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OtherType.fromJson(value));
    }
    return map;
  }
}

