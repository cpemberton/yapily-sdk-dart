part of yapily_sdk.api;

class CreditInterestCreditInterestEligibility {
  
  String amount = null;
  

  String description = null;
  

  bool indicator = null;
  

  String name = null;
  

  List<String> notes = [];
  

  OtherType otherType = null;
  

  String period = null;
  //enum periodEnum {  Day,  Half Year,  Month,  Quarter,  Week,  AcademicTerm,  Year,  };

  String textual = null;
  

  String type = null;
  //enum typeEnum {  DirectDebits,  ExistingCustomers,  MinimumOperatingBalance,  MinimumDeposit,  NewCustomersOnly,  PreviousBankruptcyAllowed,  Other,  StudentsOnly,  SoleStudentAccount,  SoleUkAccount,  SwitchersOnly,  UCASFulltimeTwoYears,  };
  CreditInterestCreditInterestEligibility();

  @override
  String toString() {
    return 'CreditInterestCreditInterestEligibility[amount=$amount, description=$description, indicator=$indicator, name=$name, notes=$notes, otherType=$otherType, period=$period, textual=$textual, type=$type, ]';
  }

  CreditInterestCreditInterestEligibility.fromJson(Map<String, dynamic> json) {
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

  static List<CreditInterestCreditInterestEligibility> listFromJson(List<dynamic> json) {
    return json == null ? new List<CreditInterestCreditInterestEligibility>() : json.map((value) => new CreditInterestCreditInterestEligibility.fromJson(value)).toList();
  }

  static Map<String, CreditInterestCreditInterestEligibility> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CreditInterestCreditInterestEligibility>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CreditInterestCreditInterestEligibility.fromJson(value));
    }
    return map;
  }
}

