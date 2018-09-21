part of yapily_sdk.api;

class InstitutionConsent {
  
  String institutionId = null;
  
  InstitutionConsent();

  @override
  String toString() {
    return 'InstitutionConsent[institutionId=$institutionId, ]';
  }

  InstitutionConsent.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    institutionId =
        json['institutionId']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'institutionId': institutionId
     };
  }

  static List<InstitutionConsent> listFromJson(List<dynamic> json) {
    return json == null ? new List<InstitutionConsent>() : json.map((value) => new InstitutionConsent.fromJson(value)).toList();
  }

  static Map<String, InstitutionConsent> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InstitutionConsent>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InstitutionConsent.fromJson(value));
    }
    return map;
  }
}

