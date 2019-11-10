part of yapily_sdk.api;

class OverdraftOverdraftFeesCharges1 {
  
  List<OverdraftOverdraftFeeChargeCap> overdraftFeeChargeCap = [];
  

  List<OverdraftOverdraftFeeChargeDetail> overdraftFeeChargeDetail = [];
  
  OverdraftOverdraftFeesCharges1();

  @override
  String toString() {
    return 'OverdraftOverdraftFeesCharges1[overdraftFeeChargeCap=$overdraftFeeChargeCap, overdraftFeeChargeDetail=$overdraftFeeChargeDetail, ]';
  }

  OverdraftOverdraftFeesCharges1.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    overdraftFeeChargeCap =
      OverdraftOverdraftFeeChargeCap.listFromJson(json['overdraftFeeChargeCap'])
;
    overdraftFeeChargeDetail =
      OverdraftOverdraftFeeChargeDetail.listFromJson(json['overdraftFeeChargeDetail'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'overdraftFeeChargeCap': overdraftFeeChargeCap,
      'overdraftFeeChargeDetail': overdraftFeeChargeDetail
     };
  }

  static List<OverdraftOverdraftFeesCharges1> listFromJson(List<dynamic> json) {
    return json == null ? new List<OverdraftOverdraftFeesCharges1>() : json.map((value) => new OverdraftOverdraftFeesCharges1.fromJson(value)).toList();
  }

  static Map<String, OverdraftOverdraftFeesCharges1> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OverdraftOverdraftFeesCharges1>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OverdraftOverdraftFeesCharges1.fromJson(value));
    }
    return map;
  }
}

