part of yapily_sdk.api;

class PaymentAuthorisationRequestResponse {
  
  String id = null;
  

  String userUuid = null;
  

  String applicationUserId = null;
  

  String referenceId = null;
  

  String institutionId = null;
  

  String status = null;
  //enum statusEnum {  AWAITING_AUTHORIZATION,  AWAITING_FURTHER_AUTHORIZATION,  AWAITING_RE_AUTHORIZATION,  AUTHORIZED,  CONSUMED,  REJECTED,  REVOKED,  FAILED,  EXPIRED,  UNKNOWN,  INVALID,  };

  DateTime createdAt = null;
  

  DateTime transactionFrom = null;
  

  DateTime transactionTo = null;
  

  DateTime expiresAt = null;
  
/* Deprecated. Use `timeToExpire` instead. */
  int timeToExpireInMillis = null;
  
/* ISO 8601 duration */
  String timeToExpire = null;
  

  List<String> featureScope = [];
  //enum featureScopeEnum {  INITIATE_ACCOUNT_REQUEST,  ACCOUNT_REQUEST_DETAILS,  ACCOUNTS,  ACCOUNT,  ACCOUNT_TRANSACTIONS,  ACCOUNT_STATEMENTS,  ACCOUNT_STATEMENT,  ACCOUNT_STATEMENT_FILE,  ACCOUNT_SCHEDULED_PAYMENTS,  ACCOUNT_DIRECT_DEBITS,  ACCOUNT_PERIODIC_PAYMENTS,  ACCOUNT_TRANSACTIONS_WITH_MERCHANT,  IDENTITY,  INITIATE_SINGLE_PAYMENT_SORTCODE,  EXISTING_PAYMENT_INITIATION_DETAILS,  CREATE_SINGLE_PAYMENT_SORTCODE,  EXISTING_PAYMENTS_DETAILS,  INITIATE_PAYMENT,  CREATE_PAYMENT,  INITIATE_DOMESTIC_VARIABLE_RECURRING_PAYMENT,  CREATE_DOMESTIC_VARIABLE_RECURRING_PAYMENT,  INITIATE_DOMESTIC_SCHEDULED_PAYMENT,  CREATE_DOMESTIC_SCHEDULED_PAYMENT,  INITIATE_DOMESTIC_PERIODIC_PAYMENT,  CREATE_DOMESTIC_PERIODIC_PAYMENT,  PERIODIC_PAYMENT_FREQUENCY_EXTENDED,  INITIATE_INTERNATIONAL_VARIABLE_RECURRING_PAYMENT,  CREATE_INTERNATIONAL_VARIABLE_RECURRING_PAYMENT,  INITIATE_INTERNATIONAL_SCHEDULED_PAYMENT,  CREATE_INTERNATIONAL_SCHEDULED_PAYMENT,  INITIATE_INTERNATIONAL_PERIODIC_PAYMENT_ORDER,  CREATE_INTERNATIONAL_PERIODIC_PAYMENT_ORDER,  INITIATE_INTERNATIONAL_PAYMENT,  CREATE_INTERNATIONAL_PAYMENT,  TRANSFER,  OPEN_DATA_PERSONAL_CURRENT_ACCOUNTS,  OPEN_DATA_ATMS,  };

  DateTime startsAt = null;
  

  num totalMaxAmount = null;
  

  num maxAmountPerRequest = null;
  

  bool allowOverdraft = null;
  

  String consentToken = null;
  

  String authorisationUrl = null;
  
  PaymentAuthorisationRequestResponse();

  @override
  String toString() {
    return 'PaymentAuthorisationRequestResponse[id=$id, userUuid=$userUuid, applicationUserId=$applicationUserId, referenceId=$referenceId, institutionId=$institutionId, status=$status, createdAt=$createdAt, transactionFrom=$transactionFrom, transactionTo=$transactionTo, expiresAt=$expiresAt, timeToExpireInMillis=$timeToExpireInMillis, timeToExpire=$timeToExpire, featureScope=$featureScope, startsAt=$startsAt, totalMaxAmount=$totalMaxAmount, maxAmountPerRequest=$maxAmountPerRequest, allowOverdraft=$allowOverdraft, consentToken=$consentToken, authorisationUrl=$authorisationUrl, ]';
  }

  PaymentAuthorisationRequestResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id =
        json['id']
    ;
    userUuid =
        json['userUuid']
    ;
    applicationUserId =
        json['applicationUserId']
    ;
    referenceId =
        json['referenceId']
    ;
    institutionId =
        json['institutionId']
    ;
    status =
        json['status']
    ;
    createdAt = json['createdAt'] == null ? null : DateTime.parse(json['createdAt']);
    transactionFrom = json['transactionFrom'] == null ? null : DateTime.parse(json['transactionFrom']);
    transactionTo = json['transactionTo'] == null ? null : DateTime.parse(json['transactionTo']);
    expiresAt = json['expiresAt'] == null ? null : DateTime.parse(json['expiresAt']);
    timeToExpireInMillis =
        json['timeToExpireInMillis']
    ;
    timeToExpire =
        json['timeToExpire']
    ;
    featureScope =
        (json['featureScope'] as List).map((item) => item as String).toList()
    ;
    startsAt = json['startsAt'] == null ? null : DateTime.parse(json['startsAt']);
    totalMaxAmount =
        json['totalMaxAmount']
    ;
    maxAmountPerRequest =
        json['maxAmountPerRequest']
    ;
    allowOverdraft =
        json['allowOverdraft']
    ;
    consentToken =
        json['consentToken']
    ;
    authorisationUrl =
        json['authorisationUrl']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'userUuid': userUuid,
      'applicationUserId': applicationUserId,
      'referenceId': referenceId,
      'institutionId': institutionId,
      'status': status,
      'createdAt': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'transactionFrom': transactionFrom == null ? '' : transactionFrom.toUtc().toIso8601String(),
      'transactionTo': transactionTo == null ? '' : transactionTo.toUtc().toIso8601String(),
      'expiresAt': expiresAt == null ? '' : expiresAt.toUtc().toIso8601String(),
      'timeToExpireInMillis': timeToExpireInMillis,
      'timeToExpire': timeToExpire,
      'featureScope': featureScope,
      'startsAt': startsAt == null ? '' : startsAt.toUtc().toIso8601String(),
      'totalMaxAmount': totalMaxAmount,
      'maxAmountPerRequest': maxAmountPerRequest,
      'allowOverdraft': allowOverdraft,
      'consentToken': consentToken,
      'authorisationUrl': authorisationUrl
     };
  }

  static List<PaymentAuthorisationRequestResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<PaymentAuthorisationRequestResponse>() : json.map((value) => new PaymentAuthorisationRequestResponse.fromJson(value)).toList();
  }

  static Map<String, PaymentAuthorisationRequestResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PaymentAuthorisationRequestResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PaymentAuthorisationRequestResponse.fromJson(value));
    }
    return map;
  }
}

