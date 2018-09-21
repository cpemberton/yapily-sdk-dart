part of yapily_sdk.api;

class OverdraftOverdraftTierBandSet {
  
  bool authorisedIndicator = null;
  

  String bufferAmount = null;
  

  String identification = null;
  

  List<String> notes = [];
  

  List<OverdraftOverdraftFeesCharges1> overdraftFeesCharges = [];
  

  List<OverdraftOverdraftTierBand> overdraftTierBand = [];
  

  String overdraftType = null;
  //enum overdraftTypeEnum {  Committed,  OnDemand,  Other,  };

  String tierBandMethod = null;
  //enum tierBandMethodEnum {  Tiered,  Whole,  };
  OverdraftOverdraftTierBandSet();

  @override
  String toString() {
    return 'OverdraftOverdraftTierBandSet[authorisedIndicator=$authorisedIndicator, bufferAmount=$bufferAmount, identification=$identification, notes=$notes, overdraftFeesCharges=$overdraftFeesCharges, overdraftTierBand=$overdraftTierBand, overdraftType=$overdraftType, tierBandMethod=$tierBandMethod, ]';
  }

  OverdraftOverdraftTierBandSet.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    authorisedIndicator =
        json['authorisedIndicator']
    ;
    bufferAmount =
        json['bufferAmount']
    ;
    identification =
        json['identification']
    ;
    notes =
        (json['notes'] as List).map((item) => item as String).toList()
    ;
    overdraftFeesCharges =
      OverdraftOverdraftFeesCharges1.listFromJson(json['overdraftFeesCharges'])
;
    overdraftTierBand =
      OverdraftOverdraftTierBand.listFromJson(json['overdraftTierBand'])
;
    overdraftType =
        json['overdraftType']
    ;
    tierBandMethod =
        json['tierBandMethod']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'authorisedIndicator': authorisedIndicator,
      'bufferAmount': bufferAmount,
      'identification': identification,
      'notes': notes,
      'overdraftFeesCharges': overdraftFeesCharges,
      'overdraftTierBand': overdraftTierBand,
      'overdraftType': overdraftType,
      'tierBandMethod': tierBandMethod
     };
  }

  static List<OverdraftOverdraftTierBandSet> listFromJson(List<dynamic> json) {
    return json == null ? new List<OverdraftOverdraftTierBandSet>() : json.map((value) => new OverdraftOverdraftTierBandSet.fromJson(value)).toList();
  }

  static Map<String, OverdraftOverdraftTierBandSet> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OverdraftOverdraftTierBandSet>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OverdraftOverdraftTierBandSet.fromJson(value));
    }
    return map;
  }
}

