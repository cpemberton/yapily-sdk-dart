part of yapily_sdk.api;

class StatementReference {
  
  String value = null;
  
  StatementReference();

  @override
  String toString() {
    return 'StatementReference[value=$value, ]';
  }

  StatementReference.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    value =
        json['value']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'value': value
     };
  }

  static List<StatementReference> listFromJson(List<dynamic> json) {
    return json == null ? new List<StatementReference>() : json.map((value) => new StatementReference.fromJson(value)).toList();
  }

  static Map<String, StatementReference> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, StatementReference>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new StatementReference.fromJson(value));
    }
    return map;
  }
}

