part of yapily_sdk.api;

class ATMLocation {
  
  List<String> locationCategory = [];
  //enum locationCategoryEnum {  BranchExternal,  BranchInternal,  BranchLobby,  Other,  RetailerOutlet,  RemoteUnit,  };

  List<ATMLocationOtherLocationCategory> otherLocationCategory = [];
  

  ATMPostalAddress postalAddress = null;
  

  ATMSite site = null;
  

  ATMMapServiceLinks mapServiceLinks = null;
  
  ATMLocation();

  @override
  String toString() {
    return 'ATMLocation[locationCategory=$locationCategory, otherLocationCategory=$otherLocationCategory, postalAddress=$postalAddress, site=$site, mapServiceLinks=$mapServiceLinks, ]';
  }

  ATMLocation.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    locationCategory =
        (json['locationCategory'] as List).map((item) => item as String).toList()
    ;
    otherLocationCategory =
      ATMLocationOtherLocationCategory.listFromJson(json['otherLocationCategory'])
;
    postalAddress =
      
      
      new ATMPostalAddress.fromJson(json['postalAddress'])
;
    site =
      
      
      new ATMSite.fromJson(json['site'])
;
    mapServiceLinks =
      
      
      new ATMMapServiceLinks.fromJson(json['mapServiceLinks'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'locationCategory': locationCategory,
      'otherLocationCategory': otherLocationCategory,
      'postalAddress': postalAddress,
      'site': site,
      'mapServiceLinks': mapServiceLinks
     };
  }

  static List<ATMLocation> listFromJson(List<dynamic> json) {
    return json == null ? new List<ATMLocation>() : json.map((value) => new ATMLocation.fromJson(value)).toList();
  }

  static Map<String, ATMLocation> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ATMLocation>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ATMLocation.fromJson(value));
    }
    return map;
  }
}

