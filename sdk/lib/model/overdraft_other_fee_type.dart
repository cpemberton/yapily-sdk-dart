part of yapily_sdk.api;

class OverdraftOtherFeeType {
  
  String code = null;
  

  String description = null;
  

  String name = null;
  
  OverdraftOtherFeeType();

  @override
  String toString() {
    return 'OverdraftOtherFeeType[code=$code, description=$description, name=$name, ]';
  }

  OverdraftOtherFeeType.fromJson(Map<String, dynamic> json) {
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

  static List<OverdraftOtherFeeType> listFromJson(List<dynamic> json) {
    return json == null ? new List<OverdraftOtherFeeType>() : json.map((value) => new OverdraftOtherFeeType.fromJson(value)).toList();
  }

  static Map<String, OverdraftOtherFeeType> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OverdraftOtherFeeType>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OverdraftOtherFeeType.fromJson(value));
    }
    return map;
  }
}

