part of yapily_sdk.api;

class PaymentResponse {
  
  String id = null;
  

  String institutionConsentId = null;
  

  String paymentIdempotencyId = null;
  

  String paymentLifecycleId = null;
  

  String status = null;
  //enum statusEnum {  PENDING,  FAILED,  DECLINED,  COMPLETED,  EXPIRED,  UNKNOWN,  ACTIVE,  INACTIVE,  };

  PaymentStatusDetails statusDetails = null;
  

  Payee payeeDetails = null;
  

  String reference = null;
  

  num amount = null;
  

  String currency = null;
  

  Amount amountDetails = null;
  

  Amount firstPaymentAmount = null;
  

  DateTime firstPaymentDateTime = null;
  

  Amount nextPaymentAmount = null;
  

  DateTime nextPaymentDateTime = null;
  

  Amount finalPaymentAmount = null;
  

  DateTime finalPaymentDateTime = null;
  

  DateTime createdAt = null;
  

  Amount previousPaymentAmount = null;
  

  DateTime previousPaymentDateTime = null;
  

  List<ChargeDetails> chargeDetails = [];
  

  String scheduledPaymentType = null;
  

  DateTime scheduledPaymentDateTime = null;
  

  FrequencyResponse frequency = null;
  
  PaymentResponse();

  @override
  String toString() {
    return 'PaymentResponse[id=$id, institutionConsentId=$institutionConsentId, paymentIdempotencyId=$paymentIdempotencyId, paymentLifecycleId=$paymentLifecycleId, status=$status, statusDetails=$statusDetails, payeeDetails=$payeeDetails, reference=$reference, amount=$amount, currency=$currency, amountDetails=$amountDetails, firstPaymentAmount=$firstPaymentAmount, firstPaymentDateTime=$firstPaymentDateTime, nextPaymentAmount=$nextPaymentAmount, nextPaymentDateTime=$nextPaymentDateTime, finalPaymentAmount=$finalPaymentAmount, finalPaymentDateTime=$finalPaymentDateTime, createdAt=$createdAt, previousPaymentAmount=$previousPaymentAmount, previousPaymentDateTime=$previousPaymentDateTime, chargeDetails=$chargeDetails, scheduledPaymentType=$scheduledPaymentType, scheduledPaymentDateTime=$scheduledPaymentDateTime, frequency=$frequency, ]';
  }

  PaymentResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id =
        json['id']
    ;
    institutionConsentId =
        json['institutionConsentId']
    ;
    paymentIdempotencyId =
        json['paymentIdempotencyId']
    ;
    paymentLifecycleId =
        json['paymentLifecycleId']
    ;
    status =
        json['status']
    ;
    statusDetails =
      
      
      new PaymentStatusDetails.fromJson(json['statusDetails'])
;
    payeeDetails =
      
      
      new Payee.fromJson(json['payeeDetails'])
;
    reference =
        json['reference']
    ;
    amount =
        json['amount']
    ;
    currency =
        json['currency']
    ;
    amountDetails =
      
      
      new Amount.fromJson(json['amountDetails'])
;
    firstPaymentAmount =
      
      
      new Amount.fromJson(json['firstPaymentAmount'])
;
    firstPaymentDateTime = json['firstPaymentDateTime'] == null ? null : DateTime.parse(json['firstPaymentDateTime']);
    nextPaymentAmount =
      
      
      new Amount.fromJson(json['nextPaymentAmount'])
;
    nextPaymentDateTime = json['nextPaymentDateTime'] == null ? null : DateTime.parse(json['nextPaymentDateTime']);
    finalPaymentAmount =
      
      
      new Amount.fromJson(json['finalPaymentAmount'])
;
    finalPaymentDateTime = json['finalPaymentDateTime'] == null ? null : DateTime.parse(json['finalPaymentDateTime']);
    createdAt = json['createdAt'] == null ? null : DateTime.parse(json['createdAt']);
    previousPaymentAmount =
      
      
      new Amount.fromJson(json['previousPaymentAmount'])
;
    previousPaymentDateTime = json['previousPaymentDateTime'] == null ? null : DateTime.parse(json['previousPaymentDateTime']);
    chargeDetails =
      ChargeDetails.listFromJson(json['chargeDetails'])
;
    scheduledPaymentType =
        json['scheduledPaymentType']
    ;
    scheduledPaymentDateTime = json['scheduledPaymentDateTime'] == null ? null : DateTime.parse(json['scheduledPaymentDateTime']);
    frequency =
      
      
      new FrequencyResponse.fromJson(json['frequency'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'institutionConsentId': institutionConsentId,
      'paymentIdempotencyId': paymentIdempotencyId,
      'paymentLifecycleId': paymentLifecycleId,
      'status': status,
      'statusDetails': statusDetails,
      'payeeDetails': payeeDetails,
      'reference': reference,
      'amount': amount,
      'currency': currency,
      'amountDetails': amountDetails,
      'firstPaymentAmount': firstPaymentAmount,
      'firstPaymentDateTime': firstPaymentDateTime == null ? '' : firstPaymentDateTime.toUtc().toIso8601String(),
      'nextPaymentAmount': nextPaymentAmount,
      'nextPaymentDateTime': nextPaymentDateTime == null ? '' : nextPaymentDateTime.toUtc().toIso8601String(),
      'finalPaymentAmount': finalPaymentAmount,
      'finalPaymentDateTime': finalPaymentDateTime == null ? '' : finalPaymentDateTime.toUtc().toIso8601String(),
      'createdAt': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'previousPaymentAmount': previousPaymentAmount,
      'previousPaymentDateTime': previousPaymentDateTime == null ? '' : previousPaymentDateTime.toUtc().toIso8601String(),
      'chargeDetails': chargeDetails,
      'scheduledPaymentType': scheduledPaymentType,
      'scheduledPaymentDateTime': scheduledPaymentDateTime == null ? '' : scheduledPaymentDateTime.toUtc().toIso8601String(),
      'frequency': frequency
     };
  }

  static List<PaymentResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<PaymentResponse>() : json.map((value) => new PaymentResponse.fromJson(value)).toList();
  }

  static Map<String, PaymentResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PaymentResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PaymentResponse.fromJson(value));
    }
    return map;
  }
}

