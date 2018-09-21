part of yapily_sdk.api;

class Consent {
  
  String consentToken = null;
  

  List<String> featureScope = [];
  //enum featureScopeEnum {  ACCOUNTS,  ACCOUNT,  ACCOUNT_TRANSACTIONS,  ACCOUNT_TRANSACTIONS_WITH_MERCHANT,  IDENTITY,  INITIATE_SINGLE_PAYMENT_SORTCODE,  EXISTING_PAYMENT_INITIATION_DETAILS,  CREATE_SINGLE_PAYMENT_SORTCODE,  EXISTING_PAYMENTS_DETAILS,  TRANSFER,  OPEN_DATA_PERSONAL_CURRENT_ACCOUNTS,  OPEN_DATA_ATMS,  };

  String requestId = null;
  

  String tokenType = null;
  
  Consent();

  @override
  String toString() {
    return 'Consent[consentToken=$consentToken, featureScope=$featureScope, requestId=$requestId, tokenType=$tokenType, ]';
  }

  Consent.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    consentToken =
        json['consentToken']
    ;
    featureScope =
        (json['featureScope'] as List).map((item) => item as String).toList()
    ;
    requestId =
        json['requestId']
    ;
    tokenType =
        json['tokenType']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'consentToken': consentToken,
      'featureScope': featureScope,
      'requestId': requestId,
      'tokenType': tokenType
     };
  }

  static List<Consent> listFromJson(List<dynamic> json) {
    return json == null ? new List<Consent>() : json.map((value) => new Consent.fromJson(value)).toList();
  }

  static Map<String, Consent> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Consent>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Consent.fromJson(value));
    }
    return map;
  }
}

