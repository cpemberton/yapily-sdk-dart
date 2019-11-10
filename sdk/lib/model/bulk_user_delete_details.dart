part of yapily_sdk.api;

class BulkUserDeleteDetails {
  
  String id = null;
  

  List<String> invalidApplicationUserIds = [];
  

  List<String> invalidUserUuids = [];
  

  String status = null;
  //enum statusEnum {  IN_PROGRESS,  COMPLETED,  FAILED,  };

  DateTime startedAt = null;
  

  List<UserDeleteResponse> users = [];
  

  Map<String, String> links = {};
  
  BulkUserDeleteDetails();

  @override
  String toString() {
    return 'BulkUserDeleteDetails[id=$id, invalidApplicationUserIds=$invalidApplicationUserIds, invalidUserUuids=$invalidUserUuids, status=$status, startedAt=$startedAt, users=$users, links=$links, ]';
  }

  BulkUserDeleteDetails.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id =
        json['id']
    ;
    invalidApplicationUserIds =
        (json['invalidApplicationUserIds'] as List).map((item) => item as String).toList()
    ;
    invalidUserUuids =
        (json['invalidUserUuids'] as List).map((item) => item as String).toList()
    ;
    status =
        json['status']
    ;
    startedAt = json['startedAt'] == null ? null : DateTime.parse(json['startedAt']);
    users =
      UserDeleteResponse.listFromJson(json['users'])
;
    links =
        json['links']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'invalidApplicationUserIds': invalidApplicationUserIds,
      'invalidUserUuids': invalidUserUuids,
      'status': status,
      'startedAt': startedAt == null ? '' : startedAt.toUtc().toIso8601String(),
      'users': users,
      'links': links
     };
  }

  static List<BulkUserDeleteDetails> listFromJson(List<dynamic> json) {
    return json == null ? new List<BulkUserDeleteDetails>() : json.map((value) => new BulkUserDeleteDetails.fromJson(value)).toList();
  }

  static Map<String, BulkUserDeleteDetails> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, BulkUserDeleteDetails>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new BulkUserDeleteDetails.fromJson(value));
    }
    return map;
  }
}

