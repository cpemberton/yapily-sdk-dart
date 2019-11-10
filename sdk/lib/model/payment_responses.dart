part of yapily_sdk.api;

class PaymentResponses {
  
  List<PaymentResponse> payments = [];
  
  PaymentResponses();

  @override
  String toString() {
    return 'PaymentResponses[payments=$payments, ]';
  }

  PaymentResponses.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    payments =
      PaymentResponse.listFromJson(json['payments'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'payments': payments
     };
  }

  static List<PaymentResponses> listFromJson(List<dynamic> json) {
    return json == null ? new List<PaymentResponses>() : json.map((value) => new PaymentResponses.fromJson(value)).toList();
  }

  static Map<String, PaymentResponses> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PaymentResponses>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PaymentResponses.fromJson(value));
    }
    return map;
  }
}

