part of yapily_sdk.api;

class NewApplicationUser {
  
  String applicationUserId = null;
  

  String referenceId = null;
  
  NewApplicationUser();

  @override
  String toString() {
    return 'NewApplicationUser[applicationUserId=$applicationUserId, referenceId=$referenceId, ]';
  }

  NewApplicationUser.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    applicationUserId =
        json['applicationUserId']
    ;
    referenceId =
        json['referenceId']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'applicationUserId': applicationUserId,
      'referenceId': referenceId
     };
  }

  static List<NewApplicationUser> listFromJson(List<dynamic> json) {
    return json == null ? new List<NewApplicationUser>() : json.map((value) => new NewApplicationUser.fromJson(value)).toList();
  }

  static Map<String, NewApplicationUser> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, NewApplicationUser>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new NewApplicationUser.fromJson(value));
    }
    return map;
  }
}

