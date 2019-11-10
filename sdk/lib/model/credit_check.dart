part of yapily_sdk.api;

class CreditCheck {
  
  List<String> notes = [];
  

  String scoringType = null;
  //enum scoringTypeEnum {  Hard,  Soft,  };
  CreditCheck();

  @override
  String toString() {
    return 'CreditCheck[notes=$notes, scoringType=$scoringType, ]';
  }

  CreditCheck.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    notes =
        (json['notes'] as List).map((item) => item as String).toList()
    ;
    scoringType =
        json['scoringType']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'notes': notes,
      'scoringType': scoringType
     };
  }

  static List<CreditCheck> listFromJson(List<dynamic> json) {
    return json == null ? new List<CreditCheck>() : json.map((value) => new CreditCheck.fromJson(value)).toList();
  }

  static Map<String, CreditCheck> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CreditCheck>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CreditCheck.fromJson(value));
    }
    return map;
  }
}

