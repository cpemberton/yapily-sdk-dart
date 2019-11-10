part of yapily_sdk.api;

class ProprietaryBankTransactionCode {
  
  String code = null;
  

  String issuer = null;
  
  ProprietaryBankTransactionCode();

  @override
  String toString() {
    return 'ProprietaryBankTransactionCode[code=$code, issuer=$issuer, ]';
  }

  ProprietaryBankTransactionCode.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    code =
        json['code']
    ;
    issuer =
        json['issuer']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'code': code,
      'issuer': issuer
     };
  }

  static List<ProprietaryBankTransactionCode> listFromJson(List<dynamic> json) {
    return json == null ? new List<ProprietaryBankTransactionCode>() : json.map((value) => new ProprietaryBankTransactionCode.fromJson(value)).toList();
  }

  static Map<String, ProprietaryBankTransactionCode> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ProprietaryBankTransactionCode>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ProprietaryBankTransactionCode.fromJson(value));
    }
    return map;
  }
}

