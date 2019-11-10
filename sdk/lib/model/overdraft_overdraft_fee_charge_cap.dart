part of yapily_sdk.api;

class OverdraftOverdraftFeeChargeCap {
  
  String cappingPeriod = null;
  //enum cappingPeriodEnum {  Day,  Half Year,  Month,  Quarter,  Week,  AcademicTerm,  Year,  };

  String feeCapAmount = null;
  

  double feeCapOccurrence = null;
  

  List<String> feeType = [];
  //enum feeTypeEnum {  ArrangedOverdraft,  EmergencyBorrowing,  BorrowingItem,  OverdraftRenewal,  AnnualReview,  OverdraftSetup,  Surcharge,  TempOverdraft,  UnauthorisedBorrowing,  UnauthorisedPaidTrans,  Other,  UnauthorisedUnpaidTrans,  };

  String minMaxType = null;
  //enum minMaxTypeEnum {  Minimum,  Maximum,  };

  List<String> notes = [];
  

  List<OverdraftOtherFeeType> otherFeeType = [];
  

  bool overdraftControlIndicator = null;
  
  OverdraftOverdraftFeeChargeCap();

  @override
  String toString() {
    return 'OverdraftOverdraftFeeChargeCap[cappingPeriod=$cappingPeriod, feeCapAmount=$feeCapAmount, feeCapOccurrence=$feeCapOccurrence, feeType=$feeType, minMaxType=$minMaxType, notes=$notes, otherFeeType=$otherFeeType, overdraftControlIndicator=$overdraftControlIndicator, ]';
  }

  OverdraftOverdraftFeeChargeCap.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    cappingPeriod =
        json['cappingPeriod']
    ;
    feeCapAmount =
        json['feeCapAmount']
    ;
    feeCapOccurrence =
        json['feeCapOccurrence']
    ;
    feeType =
        (json['feeType'] as List).map((item) => item as String).toList()
    ;
    minMaxType =
        json['minMaxType']
    ;
    notes =
        (json['notes'] as List).map((item) => item as String).toList()
    ;
    otherFeeType =
      OverdraftOtherFeeType.listFromJson(json['otherFeeType'])
;
    overdraftControlIndicator =
        json['overdraftControlIndicator']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'cappingPeriod': cappingPeriod,
      'feeCapAmount': feeCapAmount,
      'feeCapOccurrence': feeCapOccurrence,
      'feeType': feeType,
      'minMaxType': minMaxType,
      'notes': notes,
      'otherFeeType': otherFeeType,
      'overdraftControlIndicator': overdraftControlIndicator
     };
  }

  static List<OverdraftOverdraftFeeChargeCap> listFromJson(List<dynamic> json) {
    return json == null ? new List<OverdraftOverdraftFeeChargeCap>() : json.map((value) => new OverdraftOverdraftFeeChargeCap.fromJson(value)).toList();
  }

  static Map<String, OverdraftOverdraftFeeChargeCap> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OverdraftOverdraftFeeChargeCap>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OverdraftOverdraftFeeChargeCap.fromJson(value));
    }
    return map;
  }
}

