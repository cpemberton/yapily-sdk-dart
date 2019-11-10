part of yapily_sdk.api;

class CreateConsentAccessToken {
  
  String accessToken = null;
  

  String refreshToken = null;
  

  String institutionId = null;
  

  String scope = null;
  
  CreateConsentAccessToken();

  @override
  String toString() {
    return 'CreateConsentAccessToken[accessToken=$accessToken, refreshToken=$refreshToken, institutionId=$institutionId, scope=$scope, ]';
  }

  CreateConsentAccessToken.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    accessToken =
        json['accessToken']
    ;
    refreshToken =
        json['refreshToken']
    ;
    institutionId =
        json['institutionId']
    ;
    scope =
        json['scope']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'accessToken': accessToken,
      'refreshToken': refreshToken,
      'institutionId': institutionId,
      'scope': scope
     };
  }

  static List<CreateConsentAccessToken> listFromJson(List<dynamic> json) {
    return json == null ? new List<CreateConsentAccessToken>() : json.map((value) => new CreateConsentAccessToken.fromJson(value)).toList();
  }

  static Map<String, CreateConsentAccessToken> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CreateConsentAccessToken>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CreateConsentAccessToken.fromJson(value));
    }
    return map;
  }
}

