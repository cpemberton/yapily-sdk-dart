part of yapily_sdk.api;

class CreditInterestTierBand {
  
  String AER = null;
  

  String applicationFrequency = null;
  //enum applicationFrequencyEnum {  PerAcademicTerm,  Daily,  HalfYearly,  Monthly,  Other,  Quarterly,  PerStatementDate,  Weekly,  Yearly,  };

  String bankInterestRateType = null;
  //enum bankInterestRateTypeEnum {  LinkedBaseRate,  Gross,  Net,  Other,  };

  String calculationFrequency = null;
  //enum calculationFrequencyEnum {  PerAcademicTerm,  Daily,  HalfYearly,  Monthly,  Other,  Quarterly,  PerStatementDate,  Weekly,  Yearly,  };

  String depositInterestAppliedCoverage = null;
  //enum depositInterestAppliedCoverageEnum {  Tiered,  Whole,  };

  String fixedVariableInterestRateType = null;
  //enum fixedVariableInterestRateTypeEnum {  Fixed,  Variable,  };

  String identification = null;
  

  List<String> notes = [];
  

  OtherApplicationFrequency otherApplicationFrequency = null;
  

  OtherBankInterestType otherBankInterestType = null;
  

  OtherCalculationFrequency otherCalculationFrequency = null;
  

  String tierValueMaximum = null;
  

  String tierValueMinimum = null;
  
  CreditInterestTierBand();

  @override
  String toString() {
    return 'CreditInterestTierBand[AER=$AER, applicationFrequency=$applicationFrequency, bankInterestRateType=$bankInterestRateType, calculationFrequency=$calculationFrequency, depositInterestAppliedCoverage=$depositInterestAppliedCoverage, fixedVariableInterestRateType=$fixedVariableInterestRateType, identification=$identification, notes=$notes, otherApplicationFrequency=$otherApplicationFrequency, otherBankInterestType=$otherBankInterestType, otherCalculationFrequency=$otherCalculationFrequency, tierValueMaximum=$tierValueMaximum, tierValueMinimum=$tierValueMinimum, ]';
  }

  CreditInterestTierBand.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    AER =
        json['AER']
    ;
    applicationFrequency =
        json['applicationFrequency']
    ;
    bankInterestRateType =
        json['bankInterestRateType']
    ;
    calculationFrequency =
        json['calculationFrequency']
    ;
    depositInterestAppliedCoverage =
        json['depositInterestAppliedCoverage']
    ;
    fixedVariableInterestRateType =
        json['fixedVariableInterestRateType']
    ;
    identification =
        json['identification']
    ;
    notes =
        (json['notes'] as List).map((item) => item as String).toList()
    ;
    otherApplicationFrequency =
      
      
      new OtherApplicationFrequency.fromJson(json['otherApplicationFrequency'])
;
    otherBankInterestType =
      
      
      new OtherBankInterestType.fromJson(json['otherBankInterestType'])
;
    otherCalculationFrequency =
      
      
      new OtherCalculationFrequency.fromJson(json['otherCalculationFrequency'])
;
    tierValueMaximum =
        json['tierValueMaximum']
    ;
    tierValueMinimum =
        json['tierValueMinimum']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'AER': AER,
      'applicationFrequency': applicationFrequency,
      'bankInterestRateType': bankInterestRateType,
      'calculationFrequency': calculationFrequency,
      'depositInterestAppliedCoverage': depositInterestAppliedCoverage,
      'fixedVariableInterestRateType': fixedVariableInterestRateType,
      'identification': identification,
      'notes': notes,
      'otherApplicationFrequency': otherApplicationFrequency,
      'otherBankInterestType': otherBankInterestType,
      'otherCalculationFrequency': otherCalculationFrequency,
      'tierValueMaximum': tierValueMaximum,
      'tierValueMinimum': tierValueMinimum
     };
  }

  static List<CreditInterestTierBand> listFromJson(List<dynamic> json) {
    return json == null ? new List<CreditInterestTierBand>() : json.map((value) => new CreditInterestTierBand.fromJson(value)).toList();
  }

  static Map<String, CreditInterestTierBand> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CreditInterestTierBand>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CreditInterestTierBand.fromJson(value));
    }
    return map;
  }
}

