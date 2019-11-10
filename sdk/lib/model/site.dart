part of yapily_sdk.api;

class Site {
  
  String identification = null;
  

  String name = null;
  
  Site();

  @override
  String toString() {
    return 'Site[identification=$identification, name=$name, ]';
  }

  Site.fromJson(Map<String, dynamic> json) {
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

  static List<Site> listFromJson(List<dynamic> json) {
    return json == null ? new List<Site>() : json.map((value) => new Site.fromJson(value)).toList();
  }

  static Map<String, Site> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Site>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Site.fromJson(value));
    }
    return map;
  }
}

