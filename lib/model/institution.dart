part of yapily_sdk.api;

class Institution {
  
  List<Country> countries = [];
  

  String credentialsType = null;
  //enum credentialsTypeEnum {  OAUTH1,  OAUTH2,  OAUTH2_NOSECRET,  OPEN_BANKING,  OPEN_BANKING_SANDBOX,  OPEN_BANKING_IBM,  OPEN_BANKING_KEY_SECRET_SANDBOX,  API_KEY,  };

  String environmentType = null;
  //enum environmentTypeEnum {  SANDBOX,  MOCK,  LIVE,  };

  List<String> features = [];
  //enum featuresEnum {  ACCOUNTS,  ACCOUNT,  ACCOUNT_TRANSACTIONS,  ACCOUNT_TRANSACTIONS_WITH_MERCHANT,  IDENTITY,  INITIATE_SINGLE_PAYMENT_SORTCODE,  EXISTING_PAYMENT_INITIATION_DETAILS,  CREATE_SINGLE_PAYMENT_SORTCODE,  EXISTING_PAYMENTS_DETAILS,  TRANSFER,  OPEN_DATA_PERSONAL_CURRENT_ACCOUNTS,  OPEN_DATA_ATMS,  };

  String fullName = null;
  

  String id = null;
  

  List<Media> media = [];
  

  String name = null;
  
  Institution();

  @override
  String toString() {
    return 'Institution[countries=$countries, credentialsType=$credentialsType, environmentType=$environmentType, features=$features, fullName=$fullName, id=$id, media=$media, name=$name, ]';
  }

  Institution.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    countries =
      Country.listFromJson(json['countries'])
;
    credentialsType =
        json['credentialsType']
    ;
    environmentType =
        json['environmentType']
    ;
    features =
        (json['features'] as List).map((item) => item as String).toList()
    ;
    fullName =
        json['fullName']
    ;
    id =
        json['id']
    ;
    media =
      Media.listFromJson(json['media'])
;
    name =
        json['name']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'countries': countries,
      'credentialsType': credentialsType,
      'environmentType': environmentType,
      'features': features,
      'fullName': fullName,
      'id': id,
      'media': media,
      'name': name
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

