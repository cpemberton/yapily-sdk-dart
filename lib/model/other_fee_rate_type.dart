part of yapily_sdk.api;

class OtherFeeRateType {
  
  String code = null;
  

  String description = null;
  

  String name = null;
  
  OtherFeeRateType();

  @override
  String toString() {
    return 'OtherFeeRateType[code=$code, description=$description, name=$name, ]';
  }

  OtherFeeRateType.fromJson(Map<String, dynamic> json) {
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

  static List<OtherFeeRateType> listFromJson(List<dynamic> json) {
    return json == null ? new List<OtherFeeRateType>() : json.map((value) => new OtherFeeRateType.fromJson(value)).toList();
  }

  static Map<String, OtherFeeRateType> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OtherFeeRateType>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OtherFeeRateType.fromJson(value));
    }
    return map;
  }
}

