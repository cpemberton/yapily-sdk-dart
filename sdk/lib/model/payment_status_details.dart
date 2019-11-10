part of yapily_sdk.api;

class PaymentStatusDetails {
  
  String status = null;
  //enum statusEnum {  PENDING,  FAILED,  DECLINED,  COMPLETED,  EXPIRED,  UNKNOWN,  ACTIVE,  INACTIVE,  };

  String statusReason = null;
  

  String statusReasonDescription = null;
  

  DateTime statusUpdateDate = null;
  

  MultiAuthorisation multiAuthorisationStatus = null;
  
  PaymentStatusDetails();

  @override
  String toString() {
    return 'PaymentStatusDetails[status=$status, statusReason=$statusReason, statusReasonDescription=$statusReasonDescription, statusUpdateDate=$statusUpdateDate, multiAuthorisationStatus=$multiAuthorisationStatus, ]';
  }

  PaymentStatusDetails.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    status =
        json['status']
    ;
    statusReason =
        json['statusReason']
    ;
    statusReasonDescription =
        json['statusReasonDescription']
    ;
    statusUpdateDate = json['statusUpdateDate'] == null ? null : DateTime.parse(json['statusUpdateDate']);
    multiAuthorisationStatus =
      
      
      new MultiAuthorisation.fromJson(json['multiAuthorisationStatus'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'status': status,
      'statusReason': statusReason,
      'statusReasonDescription': statusReasonDescription,
      'statusUpdateDate': statusUpdateDate == null ? '' : statusUpdateDate.toUtc().toIso8601String(),
      'multiAuthorisationStatus': multiAuthorisationStatus
     };
  }

  static List<PaymentStatusDetails> listFromJson(List<dynamic> json) {
    return json == null ? new List<PaymentStatusDetails>() : json.map((value) => new PaymentStatusDetails.fromJson(value)).toList();
  }

  static Map<String, PaymentStatusDetails> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PaymentStatusDetails>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PaymentStatusDetails.fromJson(value));
    }
    return map;
  }
}

