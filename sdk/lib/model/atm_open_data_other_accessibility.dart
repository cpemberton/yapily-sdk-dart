part of yapily_sdk.api;

class ATMOpenDataOtherAccessibility {
  
  String code = null;
  

  String description = null;
  

  String name = null;
  
  ATMOpenDataOtherAccessibility();

  @override
  String toString() {
    return 'ATMOpenDataOtherAccessibility[code=$code, description=$description, name=$name, ]';
  }

  ATMOpenDataOtherAccessibility.fromJson(Map<String, dynamic> json) {
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

  static List<ATMOpenDataOtherAccessibility> listFromJson(List<dynamic> json) {
    return json == null ? new List<ATMOpenDataOtherAccessibility>() : json.map((value) => new ATMOpenDataOtherAccessibility.fromJson(value)).toList();
  }

  static Map<String, ATMOpenDataOtherAccessibility> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ATMOpenDataOtherAccessibility>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ATMOpenDataOtherAccessibility.fromJson(value));
    }
    return map;
  }
}

