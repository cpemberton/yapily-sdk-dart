part of yapily_sdk.api;

class UserDeleteRequest {
  
  List<String> userUuids = [];
  

  List<String> applicationUserIds = [];
  
  UserDeleteRequest();

  @override
  String toString() {
    return 'UserDeleteRequest[userUuids=$userUuids, applicationUserIds=$applicationUserIds, ]';
  }

  UserDeleteRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    userUuids =
        (json['userUuids'] as List).map((item) => item as String).toList()
    ;
    applicationUserIds =
        (json['applicationUserIds'] as List).map((item) => item as String).toList()
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'userUuids': userUuids,
      'applicationUserIds': applicationUserIds
     };
  }

  static List<UserDeleteRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<UserDeleteRequest>() : json.map((value) => new UserDeleteRequest.fromJson(value)).toList();
  }

  static Map<String, UserDeleteRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UserDeleteRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UserDeleteRequest.fromJson(value));
    }
    return map;
  }
}

