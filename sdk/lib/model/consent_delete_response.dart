part of yapily_sdk.api;

class ConsentDeleteResponse {
  
  String id = null;
  

  String deleteStatus = null;
  //enum deleteStatusEnum {  SUCCESS,  FAILED,  };

  String institutionId = null;
  

  String institutionConsentId = null;
  

  DateTime creationDate = null;
  
  ConsentDeleteResponse();

  @override
  String toString() {
    return 'ConsentDeleteResponse[id=$id, deleteStatus=$deleteStatus, institutionId=$institutionId, institutionConsentId=$institutionConsentId, creationDate=$creationDate, ]';
  }

  ConsentDeleteResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id =
        json['id']
    ;
    deleteStatus =
        json['deleteStatus']
    ;
    institutionId =
        json['institutionId']
    ;
    institutionConsentId =
        json['institutionConsentId']
    ;
    creationDate = json['creationDate'] == null ? null : DateTime.parse(json['creationDate']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'deleteStatus': deleteStatus,
      'institutionId': institutionId,
      'institutionConsentId': institutionConsentId,
      'creationDate': creationDate == null ? '' : creationDate.toUtc().toIso8601String()
     };
  }

  static List<ConsentDeleteResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<ConsentDeleteResponse>() : json.map((value) => new ConsentDeleteResponse.fromJson(value)).toList();
  }

  static Map<String, ConsentDeleteResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ConsentDeleteResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ConsentDeleteResponse.fromJson(value));
    }
    return map;
  }
}

