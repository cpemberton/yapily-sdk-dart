part of yapily_sdk.api;

class OtherBankInterestType {
  
  String code = null;
  

  String description = null;
  

  String name = null;
  
  OtherBankInterestType();

  @override
  String toString() {
    return 'OtherBankInterestType[code=$code, description=$description, name=$name, ]';
  }

  OtherBankInterestType.fromJson(Map<String, dynamic> json) {
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

  static List<OtherBankInterestType> listFromJson(List<dynamic> json) {
    return json == null ? new List<OtherBankInterestType>() : json.map((value) => new OtherBankInterestType.fromJson(value)).toList();
  }

  static Map<String, OtherBankInterestType> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OtherBankInterestType>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OtherBankInterestType.fromJson(value));
    }
    return map;
  }
}

