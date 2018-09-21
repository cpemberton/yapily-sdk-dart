part of yapily_sdk.api;

class ATMBranch {
  
  String identification = null;
  
  ATMBranch();

  @override
  String toString() {
    return 'ATMBranch[identification=$identification, ]';
  }

  ATMBranch.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    identification =
        json['identification']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'identification': identification
     };
  }

  static List<ATMBranch> listFromJson(List<dynamic> json) {
    return json == null ? new List<ATMBranch>() : json.map((value) => new ATMBranch.fromJson(value)).toList();
  }

  static Map<String, ATMBranch> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ATMBranch>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ATMBranch.fromJson(value));
    }
    return map;
  }
}

