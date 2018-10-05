part of yapily_sdk.api;

class FeatureDetails {
  
  String feature = null;
  //enum featureEnum {  INITIATE_ACCOUNT_REQUEST,  ACCOUNT_REQUEST_DETAILS,  ACCOUNTS,  ACCOUNT,  ACCOUNT_TRANSACTIONS,  ACCOUNT_TRANSACTIONS_WITH_MERCHANT,  IDENTITY,  INITIATE_SINGLE_PAYMENT_SORTCODE,  EXISTING_PAYMENT_INITIATION_DETAILS,  CREATE_SINGLE_PAYMENT_SORTCODE,  EXISTING_PAYMENTS_DETAILS,  TRANSFER,  OPEN_DATA_PERSONAL_CURRENT_ACCOUNTS,  OPEN_DATA_ATMS,  };

  String endpoint = null;
  

  String documentationUrl = null;
  
  FeatureDetails();

  @override
  String toString() {
    return 'FeatureDetails[feature=$feature, endpoint=$endpoint, documentationUrl=$documentationUrl, ]';
  }

  FeatureDetails.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    feature =
        json['feature']
    ;
    endpoint =
        json['endpoint']
    ;
    documentationUrl =
        json['documentationUrl']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'feature': feature,
      'endpoint': endpoint,
      'documentationUrl': documentationUrl
     };
  }

  static List<FeatureDetails> listFromJson(List<dynamic> json) {
    return json == null ? new List<FeatureDetails>() : json.map((value) => new FeatureDetails.fromJson(value)).toList();
  }

  static Map<String, FeatureDetails> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, FeatureDetails>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FeatureDetails.fromJson(value));
    }
    return map;
  }
}

