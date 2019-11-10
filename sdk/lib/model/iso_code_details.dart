part of yapily_sdk.api;

class IsoCodeDetails {
  
  String code = null;
  

  String name = null;
  
  IsoCodeDetails();

  @override
  String toString() {
    return 'IsoCodeDetails[code=$code, name=$name, ]';
  }

  IsoCodeDetails.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    code =
        json['code']
    ;
    name =
        json['name']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'code': code,
      'name': name
     };
  }

  static List<IsoCodeDetails> listFromJson(List<dynamic> json) {
    return json == null ? new List<IsoCodeDetails>() : json.map((value) => new IsoCodeDetails.fromJson(value)).toList();
  }

  static Map<String, IsoCodeDetails> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, IsoCodeDetails>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new IsoCodeDetails.fromJson(value));
    }
    return map;
  }
}

