part of yapily_sdk.api;

class Transaction {
  
  String id = null;
  

  DateTime date = null;
  

  num amount = null;
  

  String currency = null;
  

  String description = null;
  

  Merchant merchant = null;
  
  Transaction();

  @override
  String toString() {
    return 'Transaction[id=$id, date=$date, amount=$amount, currency=$currency, description=$description, merchant=$merchant, ]';
  }

  Transaction.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id =
        json['id']
    ;
    date = json['date'] == null ? null : DateTime.parse(json['date']);
    amount =
        json['amount']
    ;
    currency =
        json['currency']
    ;
    description =
        json['description']
    ;
    merchant =
      
      
      new Merchant.fromJson(json['merchant'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'date': date == null ? '' : date.toUtc().toIso8601String(),
      'amount': amount,
      'currency': currency,
      'description': description,
      'merchant': merchant
     };
  }

  static List<Transaction> listFromJson(List<dynamic> json) {
    return json == null ? new List<Transaction>() : json.map((value) => new Transaction.fromJson(value)).toList();
  }

  static Map<String, Transaction> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Transaction>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Transaction.fromJson(value));
    }
    return map;
  }
}

