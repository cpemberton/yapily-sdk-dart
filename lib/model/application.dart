part of yapily_sdk.api;

class Application {
  
  bool active = null;
  

  List<String> authCallbacks = [];
  

  DateTime created = null;
  

  List<Institution> institutions = [];
  

  List<Media> media = [];
  

  String name = null;
  

  DateTime updated = null;
  
/* Application UUID */
  String uuid = null;
  
  Application();

  @override
  String toString() {
    return 'Application[active=$active, authCallbacks=$authCallbacks, created=$created, institutions=$institutions, media=$media, name=$name, updated=$updated, uuid=$uuid, ]';
  }

  Application.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    active =
        json['active']
    ;
    authCallbacks =
        (json['authCallbacks'] as List).map((item) => item as String).toList()
    ;
    created = json['created'] == null ? null : DateTime.parse(json['created']);
    institutions =
      Institution.listFromJson(json['institutions'])
;
    media =
      Media.listFromJson(json['media'])
;
    name =
        json['name']
    ;
    updated = json['updated'] == null ? null : DateTime.parse(json['updated']);
    uuid =
        json['uuid']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'active': active,
      'authCallbacks': authCallbacks,
      'created': created == null ? '' : created.toUtc().toIso8601String(),
      'institutions': institutions,
      'media': media,
      'name': name,
      'updated': updated == null ? '' : updated.toUtc().toIso8601String(),
      'uuid': uuid
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

