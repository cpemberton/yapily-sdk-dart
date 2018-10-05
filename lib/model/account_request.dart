part of yapily_sdk.api;

class AccountRequest {
  
  DateTime transactionFrom = null;
  

  DateTime transactionTo = null;
  

  DateTime expiresAt = null;
  
  AccountRequest();

  @override
  String toString() {
    return 'AccountRequest[transactionFrom=$transactionFrom, transactionTo=$transactionTo, expiresAt=$expiresAt, ]';
  }

  AccountRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    transactionFrom = json['transactionFrom'] == null ? null : DateTime.parse(json['transactionFrom']);
    transactionTo = json['transactionTo'] == null ? null : DateTime.parse(json['transactionTo']);
    expiresAt = json['expiresAt'] == null ? null : DateTime.parse(json['expiresAt']);
  }

  Map<String, dynamic> toJson() {
    return {
      'transactionFrom': transactionFrom == null ? '' : transactionFrom.toUtc().toIso8601String(),
      'transactionTo': transactionTo == null ? '' : transactionTo.toUtc().toIso8601String(),
      'expiresAt': expiresAt == null ? '' : expiresAt.toUtc().toIso8601String()
     };
  }

  static List<AccountRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<AccountRequest>() : json.map((value) => new AccountRequest.fromJson(value)).toList();
  }

  static Map<String, AccountRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AccountRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AccountRequest.fromJson(value));
    }
    return map;
  }
}

