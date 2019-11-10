part of yapily_sdk.api;

class BulkUserDelete {
  
  String id = null;
  

  String status = null;
  //enum statusEnum {  IN_PROGRESS,  COMPLETED,  FAILED,  };

  DateTime startedAt = null;
  

  Map<String, String> links = {};
  
  BulkUserDelete();

  @override
  String toString() {
    return 'BulkUserDelete[id=$id, status=$status, startedAt=$startedAt, links=$links, ]';
  }

  BulkUserDelete.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id =
        json['id']
    ;
    status =
        json['status']
    ;
    startedAt = json['startedAt'] == null ? null : DateTime.parse(json['startedAt']);
    links =
        json['links']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'status': status,
      'startedAt': startedAt == null ? '' : startedAt.toUtc().toIso8601String(),
      'links': links
     };
  }

  static List<BulkUserDelete> listFromJson(List<dynamic> json) {
    return json == null ? new List<BulkUserDelete>() : json.map((value) => new BulkUserDelete.fromJson(value)).toList();
  }

  static Map<String, BulkUserDelete> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, BulkUserDelete>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new BulkUserDelete.fromJson(value));
    }
    return map;
  }
}

