part of yapily_sdk.api;

class ConsentAuthCodeRequest {
  
  String authCode = null;
  

  String authState = null;
  
  ConsentAuthCodeRequest();

  @override
  String toString() {
    return 'ConsentAuthCodeRequest[authCode=$authCode, authState=$authState, ]';
  }

  ConsentAuthCodeRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    authCode =
        json['authCode']
    ;
    authState =
        json['authState']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'authCode': authCode,
      'authState': authState
     };
  }

  static List<ConsentAuthCodeRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<ConsentAuthCodeRequest>() : json.map((value) => new ConsentAuthCodeRequest.fromJson(value)).toList();
  }

  static Map<String, ConsentAuthCodeRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ConsentAuthCodeRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ConsentAuthCodeRequest.fromJson(value));
    }
    return map;
  }
}

