part of yapily_sdk.api;

class ATMOpenDataOtherATMServices {
  
  String code = null;
  

  String description = null;
  

  String name = null;
  
  ATMOpenDataOtherATMServices();

  @override
  String toString() {
    return 'ATMOpenDataOtherATMServices[code=$code, description=$description, name=$name, ]';
  }

  ATMOpenDataOtherATMServices.fromJson(Map<String, dynamic> json) {
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

  static List<ATMOpenDataOtherATMServices> listFromJson(List<dynamic> json) {
    return json == null ? new List<ATMOpenDataOtherATMServices>() : json.map((value) => new ATMOpenDataOtherATMServices.fromJson(value)).toList();
  }

  static Map<String, ATMOpenDataOtherATMServices> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ATMOpenDataOtherATMServices>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ATMOpenDataOtherATMServices.fromJson(value));
    }
    return map;
  }
}

