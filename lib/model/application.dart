part of yapily_sdk.api;

class Application {
  /* Application UUID */
  String uuid = null;
  

  String name = null;
  

  bool active = null;
  

  List<String> authCallbacks = [];
  

  List<Institution> institutions = [];
  

  List<Media> media = [];
  

  DateTime created = null;
  

  DateTime updated = null;
  
  Application();

  @override
  String toString() {
    return 'Application[uuid=$uuid, name=$name, active=$active, authCallbacks=$authCallbacks, institutions=$institutions, media=$media, created=$created, updated=$updated, ]';
  }

  Application.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    uuid =
        json['uuid']
    ;
    name =
        json['name']
    ;
    active =
        json['active']
    ;
    authCallbacks =
        (json['authCallbacks'] as List).map((item) => item as String).toList()
    ;
    institutions =
      Institution.listFromJson(json['institutions'])
;
    media =
      Media.listFromJson(json['media'])
;
    created = json['created'] == null ? null : DateTime.parse(json['created']);
    updated = json['updated'] == null ? null : DateTime.parse(json['updated']);
  }

  Map<String, dynamic> toJson() {
    return {
      'uuid': uuid,
      'name': name,
      'active': active,
      'authCallbacks': authCallbacks,
      'institutions': institutions,
      'media': media,
      'created': created == null ? '' : created.toUtc().toIso8601String(),
      'updated': updated == null ? '' : updated.toUtc().toIso8601String()
     };
  }

  static List<Application> listFromJson(List<dynamic> json) {
    return json == null ? new List<Application>() : json.map((value) => new Application.fromJson(value)).toList();
  }

  static Map<String, Application> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Application>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Application.fromJson(value));
    }
    return map;
  }
}

