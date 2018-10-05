part of yapily_sdk.api;

class ApplicationUser {
  /* User UUID */
  String uuid = null;
  

  String applicationUuid = null;
  

  String referenceId = null;
  

  List<InstitutionConsent> institutionConsents = [];
  
  ApplicationUser();

  @override
  String toString() {
    return 'ApplicationUser[uuid=$uuid, applicationUuid=$applicationUuid, referenceId=$referenceId, institutionConsents=$institutionConsents, ]';
  }

  ApplicationUser.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    uuid =
        json['uuid']
    ;
    applicationUuid =
        json['applicationUuid']
    ;
    referenceId =
        json['referenceId']
    ;
    institutionConsents =
      InstitutionConsent.listFromJson(json['institutionConsents'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'uuid': uuid,
      'applicationUuid': applicationUuid,
      'referenceId': referenceId,
      'institutionConsents': institutionConsents
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

