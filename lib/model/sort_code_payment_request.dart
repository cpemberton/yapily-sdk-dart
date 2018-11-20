part of yapily_sdk.api;

class SortCodePaymentRequest {
  
  String senderAccountId = null;
  

  String name = null;
  

  num amount = null;
  

  String currency = null;
  

  String reference = null;
  

  String country = null;
  

  String type = null;
  //enum typeEnum {  BILL,  GOODS,  SERVICES,  OTHER,  PERSON_TO_PERSON,  };

  String accountNumber = null;
  

  String sortCode = null;
  

  MerchantInfo merchantInfo = null;
  
  SortCodePaymentRequest();

  @override
  String toString() {
    return 'SortCodePaymentRequest[senderAccountId=$senderAccountId, name=$name, amount=$amount, currency=$currency, reference=$reference, country=$country, type=$type, accountNumber=$accountNumber, sortCode=$sortCode, merchantInfo=$merchantInfo, ]';
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
    type =
        json['type']
    ;
    accountNumber =
        json['accountNumber']
    ;
    sortCode =
        json['sortCode']
    ;
    merchantInfo =
      
      
      new MerchantInfo.fromJson(json['merchantInfo'])
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
      'type': type,
      'accountNumber': accountNumber,
      'sortCode': sortCode,
      'merchantInfo': merchantInfo
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

