part of yapily_sdk.api;

class Overdraft {
  
  List<String> notes = [];
  

  List<OverdraftOverdraftTierBandSet> overdraftTierBandSet = [];
  

  String tcsAndCsURL = null;
  
  Overdraft();

  @override
  String toString() {
    return 'Overdraft[notes=$notes, overdraftTierBandSet=$overdraftTierBandSet, tcsAndCsURL=$tcsAndCsURL, ]';
  }

  Overdraft.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    notes =
        (json['notes'] as List).map((item) => item as String).toList()
    ;
    overdraftTierBandSet =
      OverdraftOverdraftTierBandSet.listFromJson(json['overdraftTierBandSet'])
;
    tcsAndCsURL =
        json['tcsAndCsURL']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'notes': notes,
      'overdraftTierBandSet': overdraftTierBandSet,
      'tcsAndCsURL': tcsAndCsURL
     };
  }

  static List<Overdraft> listFromJson(List<dynamic> json) {
    return json == null ? new List<Overdraft>() : json.map((value) => new Overdraft.fromJson(value)).toList();
  }

  static Map<String, Overdraft> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Overdraft>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Overdraft.fromJson(value));
    }
    return map;
  }
}

