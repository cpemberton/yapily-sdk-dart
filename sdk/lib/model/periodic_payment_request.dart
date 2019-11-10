part of yapily_sdk.api;

class PeriodicPaymentRequest {
  
  FrequencyRequest frequency = null;
  

  int numberOfPayments = null;
  

  DateTime nextPaymentDateTime = null;
  

  Amount nextPaymentAmount = null;
  

  DateTime finalPaymentDateTime = null;
  

  Amount finalPaymentAmount = null;
  
  PeriodicPaymentRequest();

  @override
  String toString() {
    return 'PeriodicPaymentRequest[frequency=$frequency, numberOfPayments=$numberOfPayments, nextPaymentDateTime=$nextPaymentDateTime, nextPaymentAmount=$nextPaymentAmount, finalPaymentDateTime=$finalPaymentDateTime, finalPaymentAmount=$finalPaymentAmount, ]';
  }

  PeriodicPaymentRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    frequency =
      
      
      new FrequencyRequest.fromJson(json['frequency'])
;
    numberOfPayments =
        json['numberOfPayments']
    ;
    nextPaymentDateTime = json['nextPaymentDateTime'] == null ? null : DateTime.parse(json['nextPaymentDateTime']);
    nextPaymentAmount =
      
      
      new Amount.fromJson(json['nextPaymentAmount'])
;
    finalPaymentDateTime = json['finalPaymentDateTime'] == null ? null : DateTime.parse(json['finalPaymentDateTime']);
    finalPaymentAmount =
      
      
      new Amount.fromJson(json['finalPaymentAmount'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'frequency': frequency,
      'numberOfPayments': numberOfPayments,
      'nextPaymentDateTime': nextPaymentDateTime == null ? '' : nextPaymentDateTime.toUtc().toIso8601String(),
      'nextPaymentAmount': nextPaymentAmount,
      'finalPaymentDateTime': finalPaymentDateTime == null ? '' : finalPaymentDateTime.toUtc().toIso8601String(),
      'finalPaymentAmount': finalPaymentAmount
     };
  }

  static List<PeriodicPaymentRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<PeriodicPaymentRequest>() : json.map((value) => new PeriodicPaymentRequest.fromJson(value)).toList();
  }

  static Map<String, PeriodicPaymentRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PeriodicPaymentRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PeriodicPaymentRequest.fromJson(value));
    }
    return map;
  }
}

