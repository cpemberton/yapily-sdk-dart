part of yapily_sdk.api;

class Consent {
  
  String id = null;
  

  String userUuid = null;
  

  String institutionId = null;
  

  String status = null;
  //enum statusEnum {  AWAITING_AUTHORIZATION,  AUTHORIZED,  REJECTED,  REVOKED,  FAILED,  EXPIRED,  UNKNOWN,  };

  DateTime createdAt = null;
  

  DateTime expiresAt = null;
  

  int timeToExpireInMillis = null;
  

  List<String> featureScope = [];
  //enum featureScopeEnum {  INITIATE_ACCOUNT_REQUEST,  ACCOUNT_REQUEST_DETAILS,  ACCOUNTS,  ACCOUNT,  ACCOUNT_TRANSACTIONS,  ACCOUNT_TRANSACTIONS_WITH_MERCHANT,  IDENTITY,  INITIATE_SINGLE_PAYMENT_SORTCODE,  EXISTING_PAYMENT_INITIATION_DETAILS,  CREATE_SINGLE_PAYMENT_SORTCODE,  EXISTING_PAYMENTS_DETAILS,  TRANSFER,  OPEN_DATA_PERSONAL_CURRENT_ACCOUNTS,  OPEN_DATA_ATMS,  };

  String consentToken = null;
  
  Consent();

  @override
  String toString() {
    return 'Consent[id=$id, userUuid=$userUuid, institutionId=$institutionId, status=$status, createdAt=$createdAt, expiresAt=$expiresAt, timeToExpireInMillis=$timeToExpireInMillis, featureScope=$featureScope, consentToken=$consentToken, ]';
  }

  Consent.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id =
        json['id']
    ;
    userUuid =
        json['userUuid']
    ;
    institutionId =
        json['institutionId']
    ;
    status =
        json['status']
    ;
    createdAt = json['createdAt'] == null ? null : DateTime.parse(json['createdAt']);
    expiresAt = json['expiresAt'] == null ? null : DateTime.parse(json['expiresAt']);
    timeToExpireInMillis =
        json['timeToExpireInMillis']
    ;
    featureScope =
        (json['featureScope'] as List).map((item) => item as String).toList()
    ;
    consentToken =
        json['consentToken']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'userUuid': userUuid,
      'institutionId': institutionId,
      'status': status,
      'createdAt': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'expiresAt': expiresAt == null ? '' : expiresAt.toUtc().toIso8601String(),
      'timeToExpireInMillis': timeToExpireInMillis,
      'featureScope': featureScope,
      'consentToken': consentToken
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

