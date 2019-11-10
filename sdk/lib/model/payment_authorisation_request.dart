part of yapily_sdk.api;

class PaymentAuthorisationRequest {
  
  String userUuid = null;
  

  String applicationUserId = null;
  

  List<String> forwardParameters = [];
  

  String institutionId = null;
  

  String callback = null;
  

  bool oneTimeToken = null;
  

  PaymentRequest paymentRequest = null;
  

  num totalMaxAmount = null;
  

  String totalMaxAmountFrequency = null;
  //enum totalMaxAmountFrequencyEnum {  DAILY,  WEEKLY,  MONTHLY,  YEARLY,  };

  num maxAmountPerRequest = null;
  

  DateTime startsAt = null;
  

  DateTime expiresAt = null;
  

  bool allowOverdraft = null;
  
  PaymentAuthorisationRequest();

  @override
  String toString() {
    return 'PaymentAuthorisationRequest[userUuid=$userUuid, applicationUserId=$applicationUserId, forwardParameters=$forwardParameters, institutionId=$institutionId, callback=$callback, oneTimeToken=$oneTimeToken, paymentRequest=$paymentRequest, totalMaxAmount=$totalMaxAmount, totalMaxAmountFrequency=$totalMaxAmountFrequency, maxAmountPerRequest=$maxAmountPerRequest, startsAt=$startsAt, expiresAt=$expiresAt, allowOverdraft=$allowOverdraft, ]';
  }

  PaymentAuthorisationRequest.fromJson(Map<String, dynamic> json) {
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
      
      
      new PaymentRequest.fromJson(json['paymentRequest'])
;
    totalMaxAmount =
        json['totalMaxAmount']
    ;
    totalMaxAmountFrequency =
        json['totalMaxAmountFrequency']
    ;
    maxAmountPerRequest =
        json['maxAmountPerRequest']
    ;
    startsAt = json['startsAt'] == null ? null : DateTime.parse(json['startsAt']);
    expiresAt = json['expiresAt'] == null ? null : DateTime.parse(json['expiresAt']);
    allowOverdraft =
        json['allowOverdraft']
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
      'paymentRequest': paymentRequest,
      'totalMaxAmount': totalMaxAmount,
      'totalMaxAmountFrequency': totalMaxAmountFrequency,
      'maxAmountPerRequest': maxAmountPerRequest,
      'startsAt': startsAt == null ? '' : startsAt.toUtc().toIso8601String(),
      'expiresAt': expiresAt == null ? '' : expiresAt.toUtc().toIso8601String(),
      'allowOverdraft': allowOverdraft
     };
  }

  static List<PaymentAuthorisationRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<PaymentAuthorisationRequest>() : json.map((value) => new PaymentAuthorisationRequest.fromJson(value)).toList();
  }

  static Map<String, PaymentAuthorisationRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PaymentAuthorisationRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PaymentAuthorisationRequest.fromJson(value));
    }
    return map;
  }
}

