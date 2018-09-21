part of yapily_sdk.api;

class ATMSite {
  
  String identification = null;
  

  String name = null;
  
  ATMSite();

  @override
  String toString() {
    return 'ATMSite[identification=$identification, name=$name, ]';
  }

  ATMSite.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    identification =
        json['identification']
    ;
    name =
        json['name']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'identification': identification,
      'name': name
     };
  }

  static List<ATMSite> listFromJson(List<dynamic> json) {
    return json == null ? new List<ATMSite>() : json.map((value) => new ATMSite.fromJson(value)).toList();
  }

  static Map<String, ATMSite> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ATMSite>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ATMSite.fromJson(value));
    }
    return map;
  }
}

