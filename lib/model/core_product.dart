part of yapily_sdk.api;

class CoreProduct {
  
  String monthlyMaximumCharge = null;
  

  String productDescription = null;
  

  String productURL = null;
  

  List<String> salesAccessChannels = [];
  //enum salesAccessChannelsEnum {  Branch,  CallCentre,  Post,  Online,  RelationshipManager,  };

  List<String> servicingAccessChannels = [];
  //enum servicingAccessChannelsEnum {  ATM,  Branch,  CallCentre,  Post,  MobileBankingApp,  Online,  PostOffice,  RelationshipManager,  Text,  };

  String tcsAndCsURL = null;
  
  CoreProduct();

  @override
  String toString() {
    return 'CoreProduct[monthlyMaximumCharge=$monthlyMaximumCharge, productDescription=$productDescription, productURL=$productURL, salesAccessChannels=$salesAccessChannels, servicingAccessChannels=$servicingAccessChannels, tcsAndCsURL=$tcsAndCsURL, ]';
  }

  CoreProduct.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    monthlyMaximumCharge =
        json['monthlyMaximumCharge']
    ;
    productDescription =
        json['productDescription']
    ;
    productURL =
        json['productURL']
    ;
    salesAccessChannels =
        (json['salesAccessChannels'] as List).map((item) => item as String).toList()
    ;
    servicingAccessChannels =
        (json['servicingAccessChannels'] as List).map((item) => item as String).toList()
    ;
    tcsAndCsURL =
        json['tcsAndCsURL']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'monthlyMaximumCharge': monthlyMaximumCharge,
      'productDescription': productDescription,
      'productURL': productURL,
      'salesAccessChannels': salesAccessChannels,
      'servicingAccessChannels': servicingAccessChannels,
      'tcsAndCsURL': tcsAndCsURL
     };
  }

  static List<CoreProduct> listFromJson(List<dynamic> json) {
    return json == null ? new List<CoreProduct>() : json.map((value) => new CoreProduct.fromJson(value)).toList();
  }

  static Map<String, CoreProduct> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CoreProduct>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CoreProduct.fromJson(value));
    }
    return map;
  }
}

