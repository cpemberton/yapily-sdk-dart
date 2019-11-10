part of yapily_sdk.api;

class PaymentRequest {
  
  String paymentIdempotencyId = null;
  

  List<AccountIdentification> payerAccountIdentifications = [];
  

  Amount amount = null;
  

  String reference = null;
  

  String contextType = null;
  //enum contextTypeEnum {  BILL,  GOODS,  SERVICES,  OTHER,  PERSON_TO_PERSON,  };

  String type = null;
  //enum typeEnum {  DOMESTIC_PAYMENT,  DOMESTIC_VARIABLE_RECURRING_PAYMENT,  DOMESTIC_SCHEDULED_PAYMENT,  DOMESTIC_PERIODIC_PAYMENT,  };

  DateTime paymentDateTime = null;
  

  Payee payee = null;
  

  PeriodicPaymentRequest periodicPayments = null;
  
  PaymentRequest();

  @override
  String toString() {
    return 'PaymentRequest[paymentIdempotencyId=$paymentIdempotencyId, payerAccountIdentifications=$payerAccountIdentifications, amount=$amount, reference=$reference, contextType=$contextType, type=$type, paymentDateTime=$paymentDateTime, payee=$payee, periodicPayments=$periodicPayments, ]';
  }

  PaymentRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    paymentIdempotencyId =
        json['paymentIdempotencyId']
    ;
    payerAccountIdentifications =
      AccountIdentification.listFromJson(json['payerAccountIdentifications'])
;
    amount =
      
      
      new Amount.fromJson(json['amount'])
;
    reference =
        json['reference']
    ;
    contextType =
        json['contextType']
    ;
    type =
        json['type']
    ;
    paymentDateTime = json['paymentDateTime'] == null ? null : DateTime.parse(json['paymentDateTime']);
    payee =
      
      
      new Payee.fromJson(json['payee'])
;
    periodicPayments =
      
      
      new PeriodicPaymentRequest.fromJson(json['periodicPayments'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'paymentIdempotencyId': paymentIdempotencyId,
      'payerAccountIdentifications': payerAccountIdentifications,
      'amount': amount,
      'reference': reference,
      'contextType': contextType,
      'type': type,
      'paymentDateTime': paymentDateTime == null ? '' : paymentDateTime.toUtc().toIso8601String(),
      'payee': payee,
      'periodicPayments': periodicPayments
     };
  }

  static List<PaymentRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<PaymentRequest>() : json.map((value) => new PaymentRequest.fromJson(value)).toList();
  }

  static Map<String, PaymentRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PaymentRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PaymentRequest.fromJson(value));
    }
    return map;
  }
}

