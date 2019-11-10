part of yapily_sdk.api;

class Branch {
  
  String identification = null;
  
  Branch();

  @override
  String toString() {
    return 'Branch[identification=$identification, ]';
  }

  Branch.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    identification =
        json['identification']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'identification': identification
     };
  }

  static List<Branch> listFromJson(List<dynamic> json) {
    return json == null ? new List<Branch>() : json.map((value) => new Branch.fromJson(value)).toList();
  }

  static Map<String, Branch> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Branch>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Branch.fromJson(value));
    }
    return map;
  }
}

