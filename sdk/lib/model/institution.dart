part of yapily_sdk.api;

class Institution {
  
  String id = null;
  

  String name = null;
  

  String fullName = null;
  

  List<Country> countries = [];
  

  String environmentType = null;
  //enum environmentTypeEnum {  SANDBOX,  MOCK,  LIVE,  };

  String credentialsType = null;
  //enum credentialsTypeEnum {  OAUTH1,  OAUTH2,  OAUTH2_NOSECRET,  OAUTH2_SIGNATURE,  OPEN_BANKING,  OPEN_BANKING_UK_MANUAL,  OPEN_BANKING_UK_AUTO,  OPEN_BANKING_IBM,  OPEN_BANKING_AUTO,  OPEN_BANKING_MANUAL,  API_KEY,  };

  List<Media> media = [];
  

  List<String> features = [];
  //enum featuresEnum {  INITIATE_ACCOUNT_REQUEST,  ACCOUNT_REQUEST_DETAILS,  ACCOUNTS,  ACCOUNT,  ACCOUNT_TRANSACTIONS,  ACCOUNT_STATEMENTS,  ACCOUNT_STATEMENT,  ACCOUNT_STATEMENT_FILE,  ACCOUNT_SCHEDULED_PAYMENTS,  ACCOUNT_DIRECT_DEBITS,  ACCOUNT_PERIODIC_PAYMENTS,  ACCOUNT_TRANSACTIONS_WITH_MERCHANT,  IDENTITY,  INITIATE_SINGLE_PAYMENT_SORTCODE,  EXISTING_PAYMENT_INITIATION_DETAILS,  CREATE_SINGLE_PAYMENT_SORTCODE,  EXISTING_PAYMENTS_DETAILS,  INITIATE_PAYMENT,  CREATE_PAYMENT,  INITIATE_DOMESTIC_VARIABLE_RECURRING_PAYMENT,  CREATE_DOMESTIC_VARIABLE_RECURRING_PAYMENT,  INITIATE_DOMESTIC_SCHEDULED_PAYMENT,  CREATE_DOMESTIC_SCHEDULED_PAYMENT,  INITIATE_DOMESTIC_PERIODIC_PAYMENT,  CREATE_DOMESTIC_PERIODIC_PAYMENT,  PERIODIC_PAYMENT_FREQUENCY_EXTENDED,  INITIATE_INTERNATIONAL_VARIABLE_RECURRING_PAYMENT,  CREATE_INTERNATIONAL_VARIABLE_RECURRING_PAYMENT,  INITIATE_INTERNATIONAL_SCHEDULED_PAYMENT,  CREATE_INTERNATIONAL_SCHEDULED_PAYMENT,  INITIATE_INTERNATIONAL_PERIODIC_PAYMENT_ORDER,  CREATE_INTERNATIONAL_PERIODIC_PAYMENT_ORDER,  INITIATE_INTERNATIONAL_PAYMENT,  CREATE_INTERNATIONAL_PAYMENT,  TRANSFER,  OPEN_DATA_PERSONAL_CURRENT_ACCOUNTS,  OPEN_DATA_ATMS,  };

  Map<String, MonitoringFeatureStatus> monitoring = {};
  
  Institution();

  @override
  String toString() {
    return 'Institution[id=$id, name=$name, fullName=$fullName, countries=$countries, environmentType=$environmentType, credentialsType=$credentialsType, media=$media, features=$features, monitoring=$monitoring, ]';
  }

  Institution.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id =
        json['id']
    ;
    name =
        json['name']
    ;
    fullName =
        json['fullName']
    ;
    countries =
      Country.listFromJson(json['countries'])
;
    environmentType =
        json['environmentType']
    ;
    credentialsType =
        json['credentialsType']
    ;
    media =
      Media.listFromJson(json['media'])
;
    features =
        (json['features'] as List).map((item) => item as String).toList()
    ;
    monitoring =
      
      MonitoringFeatureStatus.mapFromJson(json['monitoring'])
      
;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'fullName': fullName,
      'countries': countries,
      'environmentType': environmentType,
      'credentialsType': credentialsType,
      'media': media,
      'features': features,
      'monitoring': monitoring
     };
  }

  static List<Institution> listFromJson(List<dynamic> json) {
    return json == null ? new List<Institution>() : json.map((value) => new Institution.fromJson(value)).toList();
  }

  static Map<String, Institution> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Institution>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Institution.fromJson(value));
    }
    return map;
  }
}

