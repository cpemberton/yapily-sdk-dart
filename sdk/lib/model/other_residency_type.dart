part of yapily_sdk.api;

class OtherResidencyType {
  
  String code = null;
  

  String description = null;
  

  String name = null;
  
  OtherResidencyType();

  @override
  String toString() {
    return 'OtherResidencyType[code=$code, description=$description, name=$name, ]';
  }

  OtherResidencyType.fromJson(Map<String, dynamic> json) {
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

  static List<OtherResidencyType> listFromJson(List<dynamic> json) {
    return json == null ? new List<OtherResidencyType>() : json.map((value) => new OtherResidencyType.fromJson(value)).toList();
  }

  static Map<String, OtherResidencyType> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OtherResidencyType>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OtherResidencyType.fromJson(value));
    }
    return map;
  }
}

