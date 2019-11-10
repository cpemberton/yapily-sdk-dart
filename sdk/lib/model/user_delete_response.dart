part of yapily_sdk.api;

class UserDeleteResponse {
  
  String id = null;
  

  String deleteStatus = null;
  //enum deleteStatusEnum {  SUCCESS,  FAILED,  };

  DateTime creationDate = null;
  

  List<ConsentDeleteResponse> userConsents = [];
  
  UserDeleteResponse();

  @override
  String toString() {
    return 'UserDeleteResponse[id=$id, deleteStatus=$deleteStatus, creationDate=$creationDate, userConsents=$userConsents, ]';
  }

  UserDeleteResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id =
        json['id']
    ;
    deleteStatus =
        json['deleteStatus']
    ;
    creationDate = json['creationDate'] == null ? null : DateTime.parse(json['creationDate']);
    userConsents =
      ConsentDeleteResponse.listFromJson(json['userConsents'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'deleteStatus': deleteStatus,
      'creationDate': creationDate == null ? '' : creationDate.toUtc().toIso8601String(),
      'userConsents': userConsents
     };
  }

  static List<UserDeleteResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<UserDeleteResponse>() : json.map((value) => new UserDeleteResponse.fromJson(value)).toList();
  }

  static Map<String, UserDeleteResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UserDeleteResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UserDeleteResponse.fromJson(value));
    }
    return map;
  }
}

