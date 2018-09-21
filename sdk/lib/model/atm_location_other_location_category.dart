part of yapily_sdk.api;

class ATMLocationOtherLocationCategory {
  
  String code = null;
  

  String description = null;
  

  String name = null;
  
  ATMLocationOtherLocationCategory();

  @override
  String toString() {
    return 'ATMLocationOtherLocationCategory[code=$code, description=$description, name=$name, ]';
  }

  ATMLocationOtherLocationCategory.fromJson(Map<String, dynamic> json) {
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

  static List<ATMLocationOtherLocationCategory> listFromJson(List<dynamic> json) {
    return json == null ? new List<ATMLocationOtherLocationCategory>() : json.map((value) => new ATMLocationOtherLocationCategory.fromJson(value)).toList();
  }

  static Map<String, ATMLocationOtherLocationCategory> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ATMLocationOtherLocationCategory>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ATMLocationOtherLocationCategory.fromJson(value));
    }
    return map;
  }
}

