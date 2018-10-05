part of yapily_sdk.api;

class SortCodePaymentAuthRequest {
  
  String userUuid = null;
  

  String institutionId = null;
  

  String callback = null;
  

  SortCodePaymentRequest paymentRequest = null;
  
  SortCodePaymentAuthRequest();

  @override
  String toString() {
    return 'SortCodePaymentAuthRequest[userUuid=$userUuid, institutionId=$institutionId, callback=$callback, paymentRequest=$paymentRequest, ]';
  }

  SortCodePaymentAuthRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    userUuid =
        json['userUuid']
    ;
    institutionId =
        json['institutionId']
    ;
    callback =
        json['callback']
    ;
    paymentRequest =
      
      
      new SortCodePaymentRequest.fromJson(json['paymentRequest'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'userUuid': userUuid,
      'institutionId': institutionId,
      'callback': callback,
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

