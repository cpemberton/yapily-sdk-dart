part of yapily_sdk.api;

class OtherCalculationFrequency {
  
  String code = null;
  

  String description = null;
  

  String name = null;
  
  OtherCalculationFrequency();

  @override
  String toString() {
    return 'OtherCalculationFrequency[code=$code, description=$description, name=$name, ]';
  }

  OtherCalculationFrequency.fromJson(Map<String, dynamic> json) {
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

  static List<OtherCalculationFrequency> listFromJson(List<dynamic> json) {
    return json == null ? new List<OtherCalculationFrequency>() : json.map((value) => new OtherCalculationFrequency.fromJson(value)).toList();
  }

  static Map<String, OtherCalculationFrequency> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OtherCalculationFrequency>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OtherCalculationFrequency.fromJson(value));
    }
    return map;
  }
}

