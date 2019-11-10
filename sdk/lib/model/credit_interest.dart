part of yapily_sdk.api;

class CreditInterest {
  
  List<CreditInterestTierBandSet> tierBandSet = [];
  
  CreditInterest();

  @override
  String toString() {
    return 'CreditInterest[tierBandSet=$tierBandSet, ]';
  }

  CreditInterest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    tierBandSet =
      CreditInterestTierBandSet.listFromJson(json['tierBandSet'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'tierBandSet': tierBandSet
     };
  }

  static List<CreditInterest> listFromJson(List<dynamic> json) {
    return json == null ? new List<CreditInterest>() : json.map((value) => new CreditInterest.fromJson(value)).toList();
  }

  static Map<String, CreditInterest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CreditInterest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CreditInterest.fromJson(value));
    }
    return map;
  }
}

