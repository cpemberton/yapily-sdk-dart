part of yapily_sdk.api;

class InlineResponse2001OtherATMServices {
  
  String code = null;
  

  String description = null;
  

  String name = null;
  
  InlineResponse2001OtherATMServices();

  @override
  String toString() {
    return 'InlineResponse2001OtherATMServices[code=$code, description=$description, name=$name, ]';
  }

  InlineResponse2001OtherATMServices.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    code =
        json['code']
    ;
    description =
        json['description']
    ;
    name =
        json['name']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'code': code,
      'description': description,
      'name': name
     };
  }

  static List<InlineResponse2001OtherATMServices> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse2001OtherATMServices>() : json.map((value) => new InlineResponse2001OtherATMServices.fromJson(value)).toList();
  }

  static Map<String, InlineResponse2001OtherATMServices> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse2001OtherATMServices>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse2001OtherATMServices.fromJson(value));
    }
    return map;
  }
}

