part of yapily_sdk.api;

class PaymentResponse {
  
  String id = null;
  

  String status = null;
  //enum statusEnum {  PENDING,  FAILED,  DECLINED,  COMPLETED,  UNKNOWN,  };

  DateTime createdAt = null;
  

  String reference = null;
  

  num amount = null;
  

  String currency = null;
  

  String authUrl = null;
  
  PaymentResponse();

  @override
  String toString() {
    return 'PaymentResponse[id=$id, status=$status, createdAt=$createdAt, reference=$reference, amount=$amount, currency=$currency, authUrl=$authUrl, ]';
  }

  PaymentResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id =
        json['id']
    ;
    status =
        json['status']
    ;
    createdAt = json['createdAt'] == null ? null : DateTime.parse(json['createdAt']);
    reference =
        json['reference']
    ;
    amount =
        json['amount']
    ;
    currency =
        json['currency']
    ;
    authUrl =
        json['authUrl']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'status': status,
      'createdAt': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'reference': reference,
      'amount': amount,
      'currency': currency,
      'authUrl': authUrl
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

