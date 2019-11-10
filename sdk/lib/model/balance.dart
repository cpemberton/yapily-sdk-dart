part of yapily_sdk.api;

class Balance {
  
  String type = null;
  //enum typeEnum {  CLOSING_AVAILABLE,  CLOSING_BOOKED,  CLOSING_CLEARED,  EXPECTED,  FORWARD_AVAILABLE,  INFORMATION,  INTERIM_AVAILABLE,  INTERIM_BOOKED,  INTERIM_CLEARED,  OPENING_AVAILABLE,  OPENING_BOOKED,  OPENING_CLEARED,  PREVIOUSLY_CLOSED_BOOKED,  AUTHORISED,  OTHER,  UNKNOWN,  };

  Amount balanceAmount = null;
  
  Balance();

  @override
  String toString() {
    return 'Balance[type=$type, balanceAmount=$balanceAmount, ]';
  }

  Balance.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type =
        json['type']
    ;
    balanceAmount =
      
      
      new Amount.fromJson(json['balanceAmount'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'balanceAmount': balanceAmount
     };
  }

  static List<Balance> listFromJson(List<dynamic> json) {
    return json == null ? new List<Balance>() : json.map((value) => new Balance.fromJson(value)).toList();
  }

  static Map<String, Balance> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Balance>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Balance.fromJson(value));
    }
    return map;
  }
}

