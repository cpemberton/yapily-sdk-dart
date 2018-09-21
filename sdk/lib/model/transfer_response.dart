part of yapily_sdk.api;

class TransferResponse {
  
  String fromAccountId = null;
  

  String toAccountId = null;
  

  String status = null;
  //enum statusEnum {  PENDING,  FAILED,  DECLINED,  COMPLETED,  UNKNOWN,  };

  DateTime createdAt = null;
  

  String reference = null;
  

  num balance = null;
  

  String currency = null;
  
  TransferResponse();

  @override
  String toString() {
    return 'TransferResponse[fromAccountId=$fromAccountId, toAccountId=$toAccountId, status=$status, createdAt=$createdAt, reference=$reference, balance=$balance, currency=$currency, ]';
  }

  TransferResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    fromAccountId =
        json['fromAccountId']
    ;
    toAccountId =
        json['toAccountId']
    ;
    status =
        json['status']
    ;
    createdAt = json['createdAt'] == null ? null : DateTime.parse(json['createdAt']);
    reference =
        json['reference']
    ;
    balance =
        json['balance']
    ;
    currency =
        json['currency']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'fromAccountId': fromAccountId,
      'toAccountId': toAccountId,
      'status': status,
      'createdAt': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'reference': reference,
      'balance': balance,
      'currency': currency
     };
  }

  static List<TransferResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<TransferResponse>() : json.map((value) => new TransferResponse.fromJson(value)).toList();
  }

  static Map<String, TransferResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TransferResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TransferResponse.fromJson(value));
    }
    return map;
  }
}

