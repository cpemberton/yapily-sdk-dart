part of yapily_sdk.api;

class OneTimeTokenRequest {
  
  String oneTimeToken = null;
  
  OneTimeTokenRequest();

  @override
  String toString() {
    return 'OneTimeTokenRequest[oneTimeToken=$oneTimeToken, ]';
  }

  OneTimeTokenRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    oneTimeToken =
        json['oneTimeToken']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'oneTimeToken': oneTimeToken
     };
  }

  static List<OneTimeTokenRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<OneTimeTokenRequest>() : json.map((value) => new OneTimeTokenRequest.fromJson(value)).toList();
  }

  static Map<String, OneTimeTokenRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OneTimeTokenRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OneTimeTokenRequest.fromJson(value));
    }
    return map;
  }
}

