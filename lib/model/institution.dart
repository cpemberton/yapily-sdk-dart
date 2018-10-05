part of yapily_sdk.api;

class Institution {
  
  String id = null;
  

  String name = null;
  

  String fullName = null;
  

  List<Country> countries = [];
  

  String environmentType = null;
  //enum environmentTypeEnum {  SANDBOX,  MOCK,  LIVE,  };

  String credentialsType = null;
  //enum credentialsTypeEnum {  OAUTH1,  OAUTH2,  OAUTH2_NOSECRET,  OPEN_BANKING,  OPEN_BANKING_SANDBOX,  OPEN_BANKING_IBM,  OPEN_BANKING_KEY_SECRET_SANDBOX,  API_KEY,  };

  List<Media> media = [];
  

  List<String> features = [];
  //enum featuresEnum {  INITIATE_ACCOUNT_REQUEST,  ACCOUNT_REQUEST_DETAILS,  ACCOUNTS,  ACCOUNT,  ACCOUNT_TRANSACTIONS,  ACCOUNT_TRANSACTIONS_WITH_MERCHANT,  IDENTITY,  INITIATE_SINGLE_PAYMENT_SORTCODE,  EXISTING_PAYMENT_INITIATION_DETAILS,  CREATE_SINGLE_PAYMENT_SORTCODE,  EXISTING_PAYMENTS_DETAILS,  TRANSFER,  OPEN_DATA_PERSONAL_CURRENT_ACCOUNTS,  OPEN_DATA_ATMS,  };
  Institution();

  @override
  String toString() {
    return 'Institution[id=$id, name=$name, fullName=$fullName, countries=$countries, environmentType=$environmentType, credentialsType=$credentialsType, media=$media, features=$features, ]';
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
      'features': features
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

