part of yapily_sdk.api;

class Next {
  
  DateTime before = null;
  

  DateTime from = null;
  
  Next();

  @override
  String toString() {
    return 'Next[before=$before, from=$from, ]';
  }

  Next.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    before = json['before'] == null ? null : DateTime.parse(json['before']);
    from = json['from'] == null ? null : DateTime.parse(json['from']);
  }

  Map<String, dynamic> toJson() {
    return {
      'before': before == null ? '' : before.toUtc().toIso8601String(),
      'from': from == null ? '' : from.toUtc().toIso8601String()
     };
  }

  static List<Next> listFromJson(List<dynamic> json) {
    return json == null ? new List<Next>() : json.map((value) => new Next.fromJson(value)).toList();
  }

  static Map<String, Next> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Next>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Next.fromJson(value));
    }
    return map;
  }
}

