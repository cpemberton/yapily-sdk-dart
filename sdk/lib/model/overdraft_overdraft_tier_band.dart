part of yapily_sdk.api;

class OverdraftOverdraftTierBand {
  
  bool bankGuaranteedIndicator = null;
  

  String EAR = null;
  

  String identification = null;
  

  List<String> notes = [];
  

  List<OverdraftOverdraftFeesCharges> overdraftFeesCharges = [];
  

  String overdraftInterestChargingCoverage = null;
  //enum overdraftInterestChargingCoverageEnum {  Tiered,  Whole,  };

  String tierValueMax = null;
  

  String tierValueMin = null;
  
  OverdraftOverdraftTierBand();

  @override
  String toString() {
    return 'OverdraftOverdraftTierBand[bankGuaranteedIndicator=$bankGuaranteedIndicator, EAR=$EAR, identification=$identification, notes=$notes, overdraftFeesCharges=$overdraftFeesCharges, overdraftInterestChargingCoverage=$overdraftInterestChargingCoverage, tierValueMax=$tierValueMax, tierValueMin=$tierValueMin, ]';
  }

  OverdraftOverdraftTierBand.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    bankGuaranteedIndicator =
        json['bankGuaranteedIndicator']
    ;
    EAR =
        json['EAR']
    ;
    identification =
        json['identification']
    ;
    notes =
        (json['notes'] as List).map((item) => item as String).toList()
    ;
    overdraftFeesCharges =
      OverdraftOverdraftFeesCharges.listFromJson(json['overdraftFeesCharges'])
;
    overdraftInterestChargingCoverage =
        json['overdraftInterestChargingCoverage']
    ;
    tierValueMax =
        json['tierValueMax']
    ;
    tierValueMin =
        json['tierValueMin']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'bankGuaranteedIndicator': bankGuaranteedIndicator,
      'EAR': EAR,
      'identification': identification,
      'notes': notes,
      'overdraftFeesCharges': overdraftFeesCharges,
      'overdraftInterestChargingCoverage': overdraftInterestChargingCoverage,
      'tierValueMax': tierValueMax,
      'tierValueMin': tierValueMin
     };
  }

  static List<OverdraftOverdraftTierBand> listFromJson(List<dynamic> json) {
    return json == null ? new List<OverdraftOverdraftTierBand>() : json.map((value) => new OverdraftOverdraftTierBand.fromJson(value)).toList();
  }

  static Map<String, OverdraftOverdraftTierBand> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OverdraftOverdraftTierBand>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OverdraftOverdraftTierBand.fromJson(value));
    }
    return map;
  }
}

