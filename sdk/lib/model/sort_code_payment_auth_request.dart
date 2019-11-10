part of yapily_sdk.api;

class SortCodePaymentAuthRequest {
  
  String userUuid = null;
  

  String applicationUserId = null;
  

  List<String> forwardParameters = [];
  

  String institutionId = null;
  

  String callback = null;
  

  bool oneTimeToken = null;
  

  SortCodePaymentRequest paymentRequest = null;
  
  SortCodePaymentAuthRequest();

  @override
  String toString() {
    return 'SortCodePaymentAuthRequest[userUuid=$userUuid, applicationUserId=$applicationUserId, forwardParameters=$forwardParameters, institutionId=$institutionId, callback=$callback, oneTimeToken=$oneTimeToken, paymentRequest=$paymentRequest, ]';
  }

  SortCodePaymentAuthRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    userUuid =
        json['userUuid']
    ;
    applicationUserId =
        json['applicationUserId']
    ;
    forwardParameters =
        (json['forwardParameters'] as List).map((item) => item as String).toList()
    ;
    institutionId =
        json['institutionId']
    ;
    callback =
        json['callback']
    ;
    oneTimeToken =
        json['oneTimeToken']
    ;
    paymentRequest =
      
      
      new SortCodePaymentRequest.fromJson(json['paymentRequest'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'userUuid': userUuid,
      'applicationUserId': applicationUserId,
      'forwardParameters': forwardParameters,
      'institutionId': institutionId,
      'callback': callback,
      'oneTimeToken': oneTimeToken,
      'paymentRequest': paymentRequest
     };
  }

  static List<SortCodePaymentAuthRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<SortCodePaymentAuthRequest>() : json.map((value) => new SortCodePaymentAuthRequest.fromJson(value)).toList();
  }

  static Map<String, SortCodePaymentAuthRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, SortCodePaymentAuthRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new SortCodePaymentAuthRequest.fromJson(value));
    }
    return map;
  }
}

