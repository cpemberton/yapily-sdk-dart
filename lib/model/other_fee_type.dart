part of yapily_sdk.api;

class OtherFeeType {
  
  String code = null;
  

  String description = null;
  

  String name = null;
  
  OtherFeeType();

  @override
  String toString() {
    return 'OtherFeeType[code=$code, description=$description, name=$name, ]';
  }

  OtherFeeType.fromJson(Map<String, dynamic> json) {
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

  static List<OtherFeeType> listFromJson(List<dynamic> json) {
    return json == null ? new List<OtherFeeType>() : json.map((value) => new OtherFeeType.fromJson(value)).toList();
  }

  static Map<String, OtherFeeType> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OtherFeeType>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OtherFeeType.fromJson(value));
    }
    return map;
  }
}

