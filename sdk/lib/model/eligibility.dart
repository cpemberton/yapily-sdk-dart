part of yapily_sdk.api;

class Eligibility {
  
  AgeEligibility ageEligibility = null;
  

  CreditCheck creditCheck = null;
  

  IDVerificationCheck iDVerificationCheck = null;
  

  List<EligibilityOtherEligibility> otherEligibility = [];
  

  ResidencyEligibility residencyEligibility = null;
  
  Eligibility();

  @override
  String toString() {
    return 'Eligibility[ageEligibility=$ageEligibility, creditCheck=$creditCheck, iDVerificationCheck=$iDVerificationCheck, otherEligibility=$otherEligibility, residencyEligibility=$residencyEligibility, ]';
  }

  Eligibility.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    ageEligibility =
      
      
      new AgeEligibility.fromJson(json['ageEligibility'])
;
    creditCheck =
      
      
      new CreditCheck.fromJson(json['creditCheck'])
;
    iDVerificationCheck =
      
      
      new IDVerificationCheck.fromJson(json['iDVerificationCheck'])
;
    otherEligibility =
      EligibilityOtherEligibility.listFromJson(json['otherEligibility'])
;
    residencyEligibility =
      
      
      new ResidencyEligibility.fromJson(json['residencyEligibility'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'ageEligibility': ageEligibility,
      'creditCheck': creditCheck,
      'iDVerificationCheck': iDVerificationCheck,
      'otherEligibility': otherEligibility,
      'residencyEligibility': residencyEligibility
     };
  }

  static List<Eligibility> listFromJson(List<dynamic> json) {
    return json == null ? new List<Eligibility>() : json.map((value) => new Eligibility.fromJson(value)).toList();
  }

  static Map<String, Eligibility> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Eligibility>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Eligibility.fromJson(value));
    }
    return map;
  }
}

