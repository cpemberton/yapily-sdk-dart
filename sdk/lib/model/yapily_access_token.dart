part of yapily_sdk.api;

class YapilyAccessToken {
  
  String accessToken = null;
  

  int expiresIn = null;
  

  String jti = null;
  

  String scope = null;
  

  String tokenType = null;
  
  YapilyAccessToken();

  @override
  String toString() {
    return 'YapilyAccessToken[accessToken=$accessToken, expiresIn=$expiresIn, jti=$jti, scope=$scope, tokenType=$tokenType, ]';
  }

  YapilyAccessToken.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    accessToken =
        json['accessToken']
    ;
    expiresIn =
        json['expiresIn']
    ;
    jti =
        json['jti']
    ;
    scope =
        json['scope']
    ;
    tokenType =
        json['tokenType']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'accessToken': accessToken,
      'expiresIn': expiresIn,
      'jti': jti,
      'scope': scope,
      'tokenType': tokenType
     };
  }

  static List<YapilyAccessToken> listFromJson(List<dynamic> json) {
    return json == null ? new List<YapilyAccessToken>() : json.map((value) => new YapilyAccessToken.fromJson(value)).toList();
  }

  static Map<String, YapilyAccessToken> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, YapilyAccessToken>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new YapilyAccessToken.fromJson(value));
    }
    return map;
  }
}

