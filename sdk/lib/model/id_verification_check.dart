part of yapily_sdk.api;

class IDVerificationCheck {
  
  List<String> notes = [];
  

  String URL = null;
  
  IDVerificationCheck();

  @override
  String toString() {
    return 'IDVerificationCheck[notes=$notes, URL=$URL, ]';
  }

  IDVerificationCheck.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    notes =
        (json['notes'] as List).map((item) => item as String).toList()
    ;
    URL =
        json['URL']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'notes': notes,
      'URL': URL
     };
  }

  static List<IDVerificationCheck> listFromJson(List<dynamic> json) {
    return json == null ? new List<IDVerificationCheck>() : json.map((value) => new IDVerificationCheck.fromJson(value)).toList();
  }

  static Map<String, IDVerificationCheck> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, IDVerificationCheck>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new IDVerificationCheck.fromJson(value));
    }
    return map;
  }
}

