part of yapily_sdk.api;

class OverdraftOverdraftFeesCharges {
  
  List<OverdraftOverdraftFeeChargeCap> overdraftFeeChargeCap = [];
  

  List<OverdraftOverdraftFeeChargeDetail> overdraftFeeChargeDetail = [];
  
  OverdraftOverdraftFeesCharges();

  @override
  String toString() {
    return 'OverdraftOverdraftFeesCharges[overdraftFeeChargeCap=$overdraftFeeChargeCap, overdraftFeeChargeDetail=$overdraftFeeChargeDetail, ]';
  }

  OverdraftOverdraftFeesCharges.fromJson(Map<String, dynamic> json) {
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

  static List<OverdraftOverdraftFeesCharges> listFromJson(List<dynamic> json) {
    return json == null ? new List<OverdraftOverdraftFeesCharges>() : json.map((value) => new OverdraftOverdraftFeesCharges.fromJson(value)).toList();
  }

  static Map<String, OverdraftOverdraftFeesCharges> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OverdraftOverdraftFeesCharges>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OverdraftOverdraftFeesCharges.fromJson(value));
    }
    return map;
  }
}

