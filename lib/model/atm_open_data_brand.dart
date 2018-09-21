part of yapily_sdk.api;

class ATMOpenDataBrand {
  
  List<ATMOpenDataATM> ATM = [];
  

  String brandName = null;
  
  ATMOpenDataBrand();

  @override
  String toString() {
    return 'ATMOpenDataBrand[ATM=$ATM, brandName=$brandName, ]';
  }

  ATMOpenDataBrand.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    ATM =
      ATMOpenDataATM.listFromJson(json['ATM'])
;
    brandName =
        json['brandName']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'ATM': ATM,
      'brandName': brandName
     };
  }

  static List<ATMOpenDataBrand> listFromJson(List<dynamic> json) {
    return json == null ? new List<ATMOpenDataBrand>() : json.map((value) => new ATMOpenDataBrand.fromJson(value)).toList();
  }

  static Map<String, ATMOpenDataBrand> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ATMOpenDataBrand>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ATMOpenDataBrand.fromJson(value));
    }
    return map;
  }
}

