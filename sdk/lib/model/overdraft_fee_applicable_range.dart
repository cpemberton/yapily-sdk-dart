part of yapily_sdk.api;

class OverdraftFeeApplicableRange {
  
  String maximumAmount = null;
  

  String maximumRate = null;
  

  String minimumAmount = null;
  

  String minimumRate = null;
  
  OverdraftFeeApplicableRange();

  @override
  String toString() {
    return 'OverdraftFeeApplicableRange[maximumAmount=$maximumAmount, maximumRate=$maximumRate, minimumAmount=$minimumAmount, minimumRate=$minimumRate, ]';
  }

  OverdraftFeeApplicableRange.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    maximumAmount =
        json['maximumAmount']
    ;
    maximumRate =
        json['maximumRate']
    ;
    minimumAmount =
        json['minimumAmount']
    ;
    minimumRate =
        json['minimumRate']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'maximumAmount': maximumAmount,
      'maximumRate': maximumRate,
      'minimumAmount': minimumAmount,
      'minimumRate': minimumRate
     };
  }

  static List<OverdraftFeeApplicableRange> listFromJson(List<dynamic> json) {
    return json == null ? new List<OverdraftFeeApplicableRange>() : json.map((value) => new OverdraftFeeApplicableRange.fromJson(value)).toList();
  }

  static Map<String, OverdraftFeeApplicableRange> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OverdraftFeeApplicableRange>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OverdraftFeeApplicableRange.fromJson(value));
    }
    return map;
  }
}

