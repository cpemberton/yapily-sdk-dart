part of yapily_sdk.api;

class InlineResponse2001OtherAccessibility {
  
  String code = null;
  

  String description = null;
  

  String name = null;
  
  InlineResponse2001OtherAccessibility();

  @override
  String toString() {
    return 'InlineResponse2001OtherAccessibility[code=$code, description=$description, name=$name, ]';
  }

  InlineResponse2001OtherAccessibility.fromJson(Map<String, dynamic> json) {
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

  static List<InlineResponse2001OtherAccessibility> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse2001OtherAccessibility>() : json.map((value) => new InlineResponse2001OtherAccessibility.fromJson(value)).toList();
  }

  static Map<String, InlineResponse2001OtherAccessibility> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse2001OtherAccessibility>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse2001OtherAccessibility.fromJson(value));
    }
    return map;
  }
}

