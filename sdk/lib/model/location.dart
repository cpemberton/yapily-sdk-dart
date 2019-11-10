part of yapily_sdk.api;

class Location {
  
  List<String> locationCategory = [];
  //enum locationCategoryEnum {  BranchExternal,  BranchInternal,  BranchLobby,  Other,  RetailerOutlet,  RemoteUnit,  };

  List<LocationOtherLocationCategory> otherLocationCategory = [];
  

  PostalAddress1 postalAddress = null;
  

  Site site = null;
  

  ATMMapServiceLinks mapServiceLinks = null;
  
  Location();

  @override
  String toString() {
    return 'Location[locationCategory=$locationCategory, otherLocationCategory=$otherLocationCategory, postalAddress=$postalAddress, site=$site, mapServiceLinks=$mapServiceLinks, ]';
  }

  Location.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    locationCategory =
        (json['locationCategory'] as List).map((item) => item as String).toList()
    ;
    otherLocationCategory =
      LocationOtherLocationCategory.listFromJson(json['otherLocationCategory'])
;
    postalAddress =
      
      
      new PostalAddress1.fromJson(json['postalAddress'])
;
    site =
      
      
      new Site.fromJson(json['site'])
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

  static List<Location> listFromJson(List<dynamic> json) {
    return json == null ? new List<Location>() : json.map((value) => new Location.fromJson(value)).toList();
  }

  static Map<String, Location> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Location>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Location.fromJson(value));
    }
    return map;
  }
}

