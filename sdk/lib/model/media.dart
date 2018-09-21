part of yapily_sdk.api;

class Media {
  
  String source = null;
  

  String type = null;
  
  Media();

  @override
  String toString() {
    return 'Media[source=$source, type=$type, ]';
  }

  Media.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    source =
        json['source']
    ;
    type =
        json['type']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'source': source,
      'type': type
     };
  }

  static List<Media> listFromJson(List<dynamic> json) {
    return json == null ? new List<Media>() : json.map((value) => new Media.fromJson(value)).toList();
  }

  static Map<String, Media> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Media>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Media.fromJson(value));
    }
    return map;
  }
}

