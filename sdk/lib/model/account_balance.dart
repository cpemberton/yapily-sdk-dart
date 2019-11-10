part of yapily_sdk.api;

class AccountBalance {
  
  String type = null;
  //enum typeEnum {  CLOSING_AVAILABLE,  CLOSING_BOOKED,  CLOSING_CLEARED,  EXPECTED,  FORWARD_AVAILABLE,  INFORMATION,  INTERIM_AVAILABLE,  INTERIM_BOOKED,  INTERIM_CLEARED,  OPENING_AVAILABLE,  OPENING_BOOKED,  OPENING_CLEARED,  PREVIOUSLY_CLOSED_BOOKED,  AUTHORISED,  OTHER,  UNKNOWN,  };
/* Timestamp of the last change of the balance amount */
  DateTime dateTime = null;
  

  Amount balanceAmount = null;
  
/* Indicates whether or not the credit line is included in the balance */
  bool creditLineIncluded = null;
  

  List<CreditLine> creditLines = [];
  
  AccountBalance();

  @override
  String toString() {
    return 'AccountBalance[type=$type, dateTime=$dateTime, balanceAmount=$balanceAmount, creditLineIncluded=$creditLineIncluded, creditLines=$creditLines, ]';
  }

  AccountBalance.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type =
        json['type']
    ;
    dateTime = json['dateTime'] == null ? null : DateTime.parse(json['dateTime']);
    balanceAmount =
      
      
      new Amount.fromJson(json['balanceAmount'])
;
    creditLineIncluded =
        json['creditLineIncluded']
    ;
    creditLines =
      CreditLine.listFromJson(json['creditLines'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'dateTime': dateTime == null ? '' : dateTime.toUtc().toIso8601String(),
      'balanceAmount': balanceAmount,
      'creditLineIncluded': creditLineIncluded,
      'creditLines': creditLines
     };
  }

  static List<AccountBalance> listFromJson(List<dynamic> json) {
    return json == null ? new List<AccountBalance>() : json.map((value) => new AccountBalance.fromJson(value)).toList();
  }

  static Map<String, AccountBalance> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AccountBalance>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AccountBalance.fromJson(value));
    }
    return map;
  }
}

