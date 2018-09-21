part of yapily_sdk.api;

class EligibilityOtherEligibility {
  
  String amount = null;
  

  String description = null;
  

  bool indicator = null;
  

  String name = null;
  

  List<String> notes = [];
  

  OtherType otherType = null;
  

  String period = null;
  //enum periodEnum {  Day,  Half Year,  Month,  Quarter,  Week,  Year,  };

  String textual = null;
  

  String type = null;
  //enum typeEnum {  DirectDebits,  ExistingCustomers,  MinimumOperatingBalance,  MinimumDeposit,  NewCustomersOnly,  PreviousBankruptcyAllowed,  Other,  StudentsOnly,  SoleStudentAccount,  SoleUkAccount,  SwitchersOnly,  UCASFulltimeTwoYears,  };
  EligibilityOtherEligibility();

  @override
  String toString() {
    return 'EligibilityOtherEligibility[amount=$amount, description=$description, indicator=$indicator, name=$name, notes=$notes, otherType=$otherType, period=$period, textual=$textual, type=$type, ]';
  }

  EligibilityOtherEligibility.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    amount =
        json['amount']
    ;
    description =
        json['description']
    ;
    indicator =
        json['indicator']
    ;
    name =
        json['name']
    ;
    notes =
        (json['notes'] as List).map((item) => item as String).toList()
    ;
    otherType =
      
      
      new OtherType.fromJson(json['otherType'])
;
    period =
        json['period']
    ;
    textual =
        json['textual']
    ;
    type =
        json['type']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'amount': amount,
      'description': description,
      'indicator': indicator,
      'name': name,
      'notes': notes,
      'otherType': otherType,
      'period': period,
      'textual': textual,
      'type': type
     };
  }

  static List<EligibilityOtherEligibility> listFromJson(List<dynamic> json) {
    return json == null ? new List<EligibilityOtherEligibility>() : json.map((value) => new EligibilityOtherEligibility.fromJson(value)).toList();
  }

  static Map<String, EligibilityOtherEligibility> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, EligibilityOtherEligibility>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new EligibilityOtherEligibility.fromJson(value));
    }
    return map;
  }
}

