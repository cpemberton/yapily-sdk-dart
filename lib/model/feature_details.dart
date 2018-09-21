part of yapily_sdk.api;

class FeatureDetails {
  
  String documentationUrl = null;
  

  String endpoint = null;
  

  String feature = null;
  //enum featureEnum {  ACCOUNTS,  ACCOUNT,  ACCOUNT_TRANSACTIONS,  ACCOUNT_TRANSACTIONS_WITH_MERCHANT,  IDENTITY,  INITIATE_SINGLE_PAYMENT_SORTCODE,  EXISTING_PAYMENT_INITIATION_DETAILS,  CREATE_SINGLE_PAYMENT_SORTCODE,  EXISTING_PAYMENTS_DETAILS,  TRANSFER,  OPEN_DATA_PERSONAL_CURRENT_ACCOUNTS,  OPEN_DATA_ATMS,  };
  FeatureDetails();

  @override
  String toString() {
    return 'FeatureDetails[documentationUrl=$documentationUrl, endpoint=$endpoint, feature=$feature, ]';
  }

  FeatureDetails.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    documentationUrl =
        json['documentationUrl']
    ;
    endpoint =
        json['endpoint']
    ;
    feature =
        json['feature']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'documentationUrl': documentationUrl,
      'endpoint': endpoint,
      'feature': feature
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

