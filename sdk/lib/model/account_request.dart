part of yapily_sdk.api;

class AccountRequest {
  
  DateTime transactionFrom = null;
  

  DateTime transactionTo = null;
  

  DateTime expiresAt = null;
  

  List<String> featureScope = [];
  //enum featureScopeEnum {  INITIATE_ACCOUNT_REQUEST,  ACCOUNT_REQUEST_DETAILS,  ACCOUNTS,  ACCOUNT,  ACCOUNT_TRANSACTIONS,  ACCOUNT_STATEMENTS,  ACCOUNT_STATEMENT,  ACCOUNT_STATEMENT_FILE,  ACCOUNT_SCHEDULED_PAYMENTS,  ACCOUNT_DIRECT_DEBITS,  ACCOUNT_PERIODIC_PAYMENTS,  ACCOUNT_TRANSACTIONS_WITH_MERCHANT,  IDENTITY,  INITIATE_SINGLE_PAYMENT_SORTCODE,  EXISTING_PAYMENT_INITIATION_DETAILS,  CREATE_SINGLE_PAYMENT_SORTCODE,  EXISTING_PAYMENTS_DETAILS,  INITIATE_PAYMENT,  CREATE_PAYMENT,  INITIATE_DOMESTIC_VARIABLE_RECURRING_PAYMENT,  CREATE_DOMESTIC_VARIABLE_RECURRING_PAYMENT,  INITIATE_DOMESTIC_SCHEDULED_PAYMENT,  CREATE_DOMESTIC_SCHEDULED_PAYMENT,  INITIATE_DOMESTIC_PERIODIC_PAYMENT,  CREATE_DOMESTIC_PERIODIC_PAYMENT,  PERIODIC_PAYMENT_FREQUENCY_EXTENDED,  INITIATE_INTERNATIONAL_VARIABLE_RECURRING_PAYMENT,  CREATE_INTERNATIONAL_VARIABLE_RECURRING_PAYMENT,  INITIATE_INTERNATIONAL_SCHEDULED_PAYMENT,  CREATE_INTERNATIONAL_SCHEDULED_PAYMENT,  INITIATE_INTERNATIONAL_PERIODIC_PAYMENT_ORDER,  CREATE_INTERNATIONAL_PERIODIC_PAYMENT_ORDER,  INITIATE_INTERNATIONAL_PAYMENT,  CREATE_INTERNATIONAL_PAYMENT,  TRANSFER,  OPEN_DATA_PERSONAL_CURRENT_ACCOUNTS,  OPEN_DATA_ATMS,  };
  AccountRequest();

  @override
  String toString() {
    return 'AccountRequest[transactionFrom=$transactionFrom, transactionTo=$transactionTo, expiresAt=$expiresAt, featureScope=$featureScope, ]';
  }

  AccountRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    transactionFrom = json['transactionFrom'] == null ? null : DateTime.parse(json['transactionFrom']);
    transactionTo = json['transactionTo'] == null ? null : DateTime.parse(json['transactionTo']);
    expiresAt = json['expiresAt'] == null ? null : DateTime.parse(json['expiresAt']);
    featureScope =
        (json['featureScope'] as List).map((item) => item as String).toList()
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'transactionFrom': transactionFrom == null ? '' : transactionFrom.toUtc().toIso8601String(),
      'transactionTo': transactionTo == null ? '' : transactionTo.toUtc().toIso8601String(),
      'expiresAt': expiresAt == null ? '' : expiresAt.toUtc().toIso8601String(),
      'featureScope': featureScope
     };
  }

  static List<AccountRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<AccountRequest>() : json.map((value) => new AccountRequest.fromJson(value)).toList();
  }

  static Map<String, AccountRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AccountRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AccountRequest.fromJson(value));
    }
    return map;
  }
}

