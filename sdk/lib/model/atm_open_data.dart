part of yapily_sdk.api;

class ATMOpenData {
  
  List<ATMOpenDataBrand> brand = [];
  
  ATMOpenData();

  @override
  String toString() {
    return 'ATMOpenData[brand=$brand, ]';
  }

  ATMOpenData.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    brand =
      ATMOpenDataBrand.listFromJson(json['brand'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'brand': brand
     };
  }

  static List<ATMOpenData> listFromJson(List<dynamic> json) {
    return json == null ? new List<ATMOpenData>() : json.map((value) => new ATMOpenData.fromJson(value)).toList();
  }

  static Map<String, ATMOpenData> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ATMOpenData>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ATMOpenData.fromJson(value));
    }
    return map;
  }
}

