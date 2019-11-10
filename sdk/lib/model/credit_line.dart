part of yapily_sdk.api;

class CreditLine {
  
  String type = null;
  //enum typeEnum {  AVAILABLE,  CREDIT,  EMERGENCY,  PRE_AGREED,  TEMPORARY,  OTHER,  UNKNOWN,  };

  Amount creditLineAmount = null;
  
  CreditLine();

  @override
  String toString() {
    return 'CreditLine[type=$type, creditLineAmount=$creditLineAmount, ]';
  }

  CreditLine.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type =
        json['type']
    ;
    creditLineAmount =
      
      
      new Amount.fromJson(json['creditLineAmount'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'creditLineAmount': creditLineAmount
     };
  }

  static List<CreditLine> listFromJson(List<dynamic> json) {
    return json == null ? new List<CreditLine>() : json.map((value) => new CreditLine.fromJson(value)).toList();
  }

  static Map<String, CreditLine> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CreditLine>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CreditLine.fromJson(value));
    }
    return map;
  }
}

