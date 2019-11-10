part of yapily_sdk.api;

class AccountIdentification {
  
  String type = null;
  //enum typeEnum {  SORT_CODE,  ACCOUNT_NUMBER,  IBAN,  BBAN,  SWIFT,  BIC,  PAN,  MASKED_PAN,  MSISDN,  ABA,  ABA_WIRE,  ABA_ACH,  };

  String identification = null;
  
  AccountIdentification();

  @override
  String toString() {
    return 'AccountIdentification[type=$type, identification=$identification, ]';
  }

  AccountIdentification.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type =
        json['type']
    ;
    identification =
        json['identification']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'identification': identification
     };
  }

  static List<AccountIdentification> listFromJson(List<dynamic> json) {
    return json == null ? new List<AccountIdentification>() : json.map((value) => new AccountIdentification.fromJson(value)).toList();
  }

  static Map<String, AccountIdentification> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AccountIdentification>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AccountIdentification.fromJson(value));
    }
    return map;
  }
}

