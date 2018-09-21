part of yapily_sdk.api;

class ApplicationUser {
  
  String applicationUuid = null;
  

  List<InstitutionConsent> institutionConsents = [];
  

  String referenceId = null;
  
/* User UUID */
  String uuid = null;
  
  ApplicationUser();

  @override
  String toString() {
    return 'ApplicationUser[applicationUuid=$applicationUuid, institutionConsents=$institutionConsents, referenceId=$referenceId, uuid=$uuid, ]';
  }

  ApplicationUser.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    applicationUuid =
        json['applicationUuid']
    ;
    institutionConsents =
      InstitutionConsent.listFromJson(json['institutionConsents'])
;
    referenceId =
        json['referenceId']
    ;
    uuid =
        json['uuid']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'applicationUuid': applicationUuid,
      'institutionConsents': institutionConsents,
      'referenceId': referenceId,
      'uuid': uuid
     };
  }

  static List<ApplicationUser> listFromJson(List<dynamic> json) {
    return json == null ? new List<ApplicationUser>() : json.map((value) => new ApplicationUser.fromJson(value)).toList();
  }

  static Map<String, ApplicationUser> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ApplicationUser>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ApplicationUser.fromJson(value));
    }
    return map;
  }
}

