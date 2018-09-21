part of yapily_sdk.api;

class ATMMapServiceLinks {
  
  String bingMapsUrl = null;
  

  String googleMapsUrl = null;
  

  String hereMapsUrl = null;
  
  ATMMapServiceLinks();

  @override
  String toString() {
    return 'ATMMapServiceLinks[bingMapsUrl=$bingMapsUrl, googleMapsUrl=$googleMapsUrl, hereMapsUrl=$hereMapsUrl, ]';
  }

  ATMMapServiceLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    bingMapsUrl =
        json['bingMapsUrl']
    ;
    googleMapsUrl =
        json['googleMapsUrl']
    ;
    hereMapsUrl =
        json['hereMapsUrl']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'bingMapsUrl': bingMapsUrl,
      'googleMapsUrl': googleMapsUrl,
      'hereMapsUrl': hereMapsUrl
     };
  }

  static List<ATMMapServiceLinks> listFromJson(List<dynamic> json) {
    return json == null ? new List<ATMMapServiceLinks>() : json.map((value) => new ATMMapServiceLinks.fromJson(value)).toList();
  }

  static Map<String, ATMMapServiceLinks> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ATMMapServiceLinks>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ATMMapServiceLinks.fromJson(value));
    }
    return map;
  }
}

