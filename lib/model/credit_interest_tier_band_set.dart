part of yapily_sdk.api;

class CreditInterestTierBandSet {
  
  String calculationMethod = null;
  //enum calculationMethodEnum {  Compound,  SimpleInterest,  };

  List<CreditInterestCreditInterestEligibility> creditInterestEligibility = [];
  

  String destination = null;
  //enum destinationEnum {  PayAway,  SelfCredit,  };

  List<String> notes = [];
  

  List<CreditInterestTierBand> tierBand = [];
  

  String tierBandMethod = null;
  //enum tierBandMethodEnum {  Tiered,  Whole,  };
  CreditInterestTierBandSet();

  @override
  String toString() {
    return 'CreditInterestTierBandSet[calculationMethod=$calculationMethod, creditInterestEligibility=$creditInterestEligibility, destination=$destination, notes=$notes, tierBand=$tierBand, tierBandMethod=$tierBandMethod, ]';
  }

  CreditInterestTierBandSet.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    calculationMethod =
        json['calculationMethod']
    ;
    creditInterestEligibility =
      CreditInterestCreditInterestEligibility.listFromJson(json['creditInterestEligibility'])
;
    destination =
        json['destination']
    ;
    notes =
        (json['notes'] as List).map((item) => item as String).toList()
    ;
    tierBand =
      CreditInterestTierBand.listFromJson(json['tierBand'])
;
    tierBandMethod =
        json['tierBandMethod']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'calculationMethod': calculationMethod,
      'creditInterestEligibility': creditInterestEligibility,
      'destination': destination,
      'notes': notes,
      'tierBand': tierBand,
      'tierBandMethod': tierBandMethod
     };
  }

  static List<CreditInterestTierBandSet> listFromJson(List<dynamic> json) {
    return json == null ? new List<CreditInterestTierBandSet>() : json.map((value) => new CreditInterestTierBandSet.fromJson(value)).toList();
  }

  static Map<String, CreditInterestTierBandSet> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CreditInterestTierBandSet>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CreditInterestTierBandSet.fromJson(value));
    }
    return map;
  }
}

