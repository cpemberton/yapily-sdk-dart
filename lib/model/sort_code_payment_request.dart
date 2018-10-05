part of yapily_sdk.api;

class SortCodePaymentRequest {
  
  String senderAccountId = null;
  

  String name = null;
  

  num amount = null;
  

  String currency = null;
  

  String reference = null;
  

  String country = null;
  

  String accountNumber = null;
  

  String sortCode = null;
  
  SortCodePaymentRequest();

  @override
  String toString() {
    return 'SortCodePaymentRequest[senderAccountId=$senderAccountId, name=$name, amount=$amount, currency=$currency, reference=$reference, country=$country, accountNumber=$accountNumber, sortCode=$sortCode, ]';
  }

  SortCodePaymentRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    senderAccountId =
        json['senderAccountId']
    ;
    name =
        json['name']
    ;
    amount =
        json['amount']
    ;
    currency =
        json['currency']
    ;
    reference =
        json['reference']
    ;
    country =
        json['country']
    ;
    accountNumber =
        json['accountNumber']
    ;
    sortCode =
        json['sortCode']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'senderAccountId': senderAccountId,
      'name': name,
      'amount': amount,
      'currency': currency,
      'reference': reference,
      'country': country,
      'accountNumber': accountNumber,
      'sortCode': sortCode
     };
  }

  static List<SortCodePaymentRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<SortCodePaymentRequest>() : json.map((value) => new SortCodePaymentRequest.fromJson(value)).toList();
  }

  static Map<String, SortCodePaymentRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, SortCodePaymentRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new SortCodePaymentRequest.fromJson(value));
    }
    return map;
  }
}

