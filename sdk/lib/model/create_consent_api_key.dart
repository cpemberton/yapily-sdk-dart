part of yapily_sdk.api;

class CreateConsentApiKey {
  
  String apiKey = null;
  

  String institutionId = null;
  
  CreateConsentApiKey();

  @override
  String toString() {
    return 'CreateConsentApiKey[apiKey=$apiKey, institutionId=$institutionId, ]';
  }

  CreateConsentApiKey.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    apiKey =
        json['apiKey']
    ;
    institutionId =
        json['institutionId']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'apiKey': apiKey,
      'institutionId': institutionId
     };
  }

  static List<CreateConsentApiKey> listFromJson(List<dynamic> json) {
    return json == null ? new List<CreateConsentApiKey>() : json.map((value) => new CreateConsentApiKey.fromJson(value)).toList();
  }

  static Map<String, CreateConsentApiKey> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CreateConsentApiKey>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CreateConsentApiKey.fromJson(value));
    }
    return map;
  }
}

