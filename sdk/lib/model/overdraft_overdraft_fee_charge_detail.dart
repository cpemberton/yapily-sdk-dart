part of yapily_sdk.api;

class OverdraftOverdraftFeeChargeDetail {
  
  String applicationFrequency = null;
  //enum applicationFrequencyEnum {  AccountClosing,  AccountOpening,  AcademicTerm,  ChargingPeriod,  Daily,  PerItem,  Monthly,  OnAccountAnniversary,  Other,  PerHour,  PerOccurrence,  PerSheet,  PerTransaction,  PerTransactionAmount,  PerTransactionPercentage,  Quarterly,  SixMonthly,  StatementMonthly,  Weekly,  Yearly,  };

  String calculationFrequency = null;
  //enum calculationFrequencyEnum {  AccountClosing,  AccountOpening,  AcademicTerm,  ChargingPeriod,  Daily,  PerItem,  Monthly,  OnAccountAnniversary,  Other,  PerHour,  PerOccurrence,  PerSheet,  PerTransaction,  PerTransactionAmount,  PerTransactionPercentage,  Quarterly,  SixMonthly,  StatementMonthly,  Weekly,  Yearly,  };

  String feeAmount = null;
  

  String feeRate = null;
  

  String feeRateType = null;
  //enum feeRateTypeEnum {  LinkedBaseRate,  Gross,  Net,  Other,  };

  String feeType = null;
  //enum feeTypeEnum {  ArrangedOverdraft,  EmergencyBorrowing,  BorrowingItem,  OverdraftRenewal,  AnnualReview,  OverdraftSetup,  Surcharge,  TempOverdraft,  UnauthorisedBorrowing,  UnauthorisedPaidTrans,  UnauthorisedUnpaidTrans,  };

  String incrementalBorrowingAmount = null;
  

  List<String> notes = [];
  

  OtherApplicationFrequency otherApplicationFrequency = null;
  

  OtherCalculationFrequency otherCalculationFrequency = null;
  

  OtherFeeRateType otherFeeRateType = null;
  

  OtherFeeType otherFeeType = null;
  

  bool overdraftControlIndicator = null;
  

  OverdraftFeeApplicableRange overdraftFeeApplicableRange = null;
  
  OverdraftOverdraftFeeChargeDetail();

  @override
  String toString() {
    return 'OverdraftOverdraftFeeChargeDetail[applicationFrequency=$applicationFrequency, calculationFrequency=$calculationFrequency, feeAmount=$feeAmount, feeRate=$feeRate, feeRateType=$feeRateType, feeType=$feeType, incrementalBorrowingAmount=$incrementalBorrowingAmount, notes=$notes, otherApplicationFrequency=$otherApplicationFrequency, otherCalculationFrequency=$otherCalculationFrequency, otherFeeRateType=$otherFeeRateType, otherFeeType=$otherFeeType, overdraftControlIndicator=$overdraftControlIndicator, overdraftFeeApplicableRange=$overdraftFeeApplicableRange, ]';
  }

  OverdraftOverdraftFeeChargeDetail.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    applicationFrequency =
        json['applicationFrequency']
    ;
    calculationFrequency =
        json['calculationFrequency']
    ;
    feeAmount =
        json['feeAmount']
    ;
    feeRate =
        json['feeRate']
    ;
    feeRateType =
        json['feeRateType']
    ;
    feeType =
        json['feeType']
    ;
    incrementalBorrowingAmount =
        json['incrementalBorrowingAmount']
    ;
    notes =
        (json['notes'] as List).map((item) => item as String).toList()
    ;
    otherApplicationFrequency =
      
      
      new OtherApplicationFrequency.fromJson(json['otherApplicationFrequency'])
;
    otherCalculationFrequency =
      
      
      new OtherCalculationFrequency.fromJson(json['otherCalculationFrequency'])
;
    otherFeeRateType =
      
      
      new OtherFeeRateType.fromJson(json['otherFeeRateType'])
;
    otherFeeType =
      
      
      new OtherFeeType.fromJson(json['otherFeeType'])
;
    overdraftControlIndicator =
        json['overdraftControlIndicator']
    ;
    overdraftFeeApplicableRange =
      
      
      new OverdraftFeeApplicableRange.fromJson(json['overdraftFeeApplicableRange'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'applicationFrequency': applicationFrequency,
      'calculationFrequency': calculationFrequency,
      'feeAmount': feeAmount,
      'feeRate': feeRate,
      'feeRateType': feeRateType,
      'feeType': feeType,
      'incrementalBorrowingAmount': incrementalBorrowingAmount,
      'notes': notes,
      'otherApplicationFrequency': otherApplicationFrequency,
      'otherCalculationFrequency': otherCalculationFrequency,
      'otherFeeRateType': otherFeeRateType,
      'otherFeeType': otherFeeType,
      'overdraftControlIndicator': overdraftControlIndicator,
      'overdraftFeeApplicableRange': overdraftFeeApplicableRange
     };
  }

  static List<OverdraftOverdraftFeeChargeDetail> listFromJson(List<dynamic> json) {
    return json == null ? new List<OverdraftOverdraftFeeChargeDetail>() : json.map((value) => new OverdraftOverdraftFeeChargeDetail.fromJson(value)).toList();
  }

  static Map<String, OverdraftOverdraftFeeChargeDetail> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OverdraftOverdraftFeeChargeDetail>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OverdraftOverdraftFeeChargeDetail.fromJson(value));
    }
    return map;
  }
}

