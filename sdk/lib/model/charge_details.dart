part of yapily_sdk.api;

class ChargeDetails {
  /* Amount paid by charge bearer */
  Amount chargeAmount = null;
  
  ChargeDetails();

  @override
  String toString() {
    return 'ChargeDetails[chargeAmount=$chargeAmount, ]';
  }

  ChargeDetails.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    chargeAmount =
      
      
      new Amount.fromJson(json['chargeAmount'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'chargeAmount': chargeAmount
     };
  }

  static List<ChargeDetails> listFromJson(List<dynamic> json) {
    return json == null ? new List<ChargeDetails>() : json.map((value) => new ChargeDetails.fromJson(value)).toList();
  }

  static Map<String, ChargeDetails> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ChargeDetails>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ChargeDetails.fromJson(value));
    }
    return map;
  }
}

