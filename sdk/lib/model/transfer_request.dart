part of yapily_sdk.api;

class TransferRequest {
  
  String accountId = null;
  

  num amount = null;
  

  String currency = null;
  

  String reference = null;
  

  String transferReferenceId = null;
  
  TransferRequest();

  @override
  String toString() {
    return 'TransferRequest[accountId=$accountId, amount=$amount, currency=$currency, reference=$reference, transferReferenceId=$transferReferenceId, ]';
  }

  TransferRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    accountId =
        json['accountId']
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
    transferReferenceId =
        json['transferReferenceId']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'accountId': accountId,
      'amount': amount,
      'currency': currency,
      'reference': reference,
      'transferReferenceId': transferReferenceId
     };
  }

  static List<TransferRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<TransferRequest>() : json.map((value) => new TransferRequest.fromJson(value)).toList();
  }

  static Map<String, TransferRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TransferRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TransferRequest.fromJson(value));
    }
    return map;
  }
}

