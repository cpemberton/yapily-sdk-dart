part of yapily_sdk.api;

class Amount {
  
  num amount = null;
  
/* ISO 4217 currency code */
  String currency = null;
  
  Amount();

  @override
  String toString() {
    return 'Amount[amount=$amount, currency=$currency, ]';
  }

  Amount.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    amount =
        json['amount']
    ;
    currency =
        json['currency']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'amount': amount,
      'currency': currency
     };
  }

  static List<Amount> listFromJson(List<dynamic> json) {
    return json == null ? new List<Amount>() : json.map((value) => new Amount.fromJson(value)).toList();
  }

  static Map<String, Amount> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Amount>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Amount.fromJson(value));
    }
    return map;
  }
}

