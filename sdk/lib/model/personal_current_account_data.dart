part of yapily_sdk.api;

class PersonalCurrentAccountData {
  
  List<PersonalCurrentAccountBrand> brand = [];
  
  PersonalCurrentAccountData();

  @override
  String toString() {
    return 'PersonalCurrentAccountData[brand=$brand, ]';
  }

  PersonalCurrentAccountData.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    brand =
      PersonalCurrentAccountBrand.listFromJson(json['brand'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'brand': brand
     };
  }

  static List<PersonalCurrentAccountData> listFromJson(List<dynamic> json) {
    return json == null ? new List<PersonalCurrentAccountData>() : json.map((value) => new PersonalCurrentAccountData.fromJson(value)).toList();
  }

  static Map<String, PersonalCurrentAccountData> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PersonalCurrentAccountData>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PersonalCurrentAccountData.fromJson(value));
    }
    return map;
  }
}

