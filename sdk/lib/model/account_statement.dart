part of yapily_sdk.api;

class AccountStatement {
  
  String id = null;
  

  DateTime startDateTime = null;
  

  DateTime endDateTime = null;
  

  DateTime creationDateTime = null;
  
  AccountStatement();

  @override
  String toString() {
    return 'AccountStatement[id=$id, startDateTime=$startDateTime, endDateTime=$endDateTime, creationDateTime=$creationDateTime, ]';
  }

  AccountStatement.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id =
        json['id']
    ;
    startDateTime = json['startDateTime'] == null ? null : DateTime.parse(json['startDateTime']);
    endDateTime = json['endDateTime'] == null ? null : DateTime.parse(json['endDateTime']);
    creationDateTime = json['creationDateTime'] == null ? null : DateTime.parse(json['creationDateTime']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'startDateTime': startDateTime == null ? '' : startDateTime.toUtc().toIso8601String(),
      'endDateTime': endDateTime == null ? '' : endDateTime.toUtc().toIso8601String(),
      'creationDateTime': creationDateTime == null ? '' : creationDateTime.toUtc().toIso8601String()
     };
  }

  static List<AccountStatement> listFromJson(List<dynamic> json) {
    return json == null ? new List<AccountStatement>() : json.map((value) => new AccountStatement.fromJson(value)).toList();
  }

  static Map<String, AccountStatement> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AccountStatement>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AccountStatement.fromJson(value));
    }
    return map;
  }
}

