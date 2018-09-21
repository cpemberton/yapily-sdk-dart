part of yapily_sdk.api;

class AgeEligibility {
  
  double maximumAge = null;
  

  double minimumAge = null;
  

  List<String> notes = [];
  
  AgeEligibility();

  @override
  String toString() {
    return 'AgeEligibility[maximumAge=$maximumAge, minimumAge=$minimumAge, notes=$notes, ]';
  }

  AgeEligibility.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    maximumAge =
        json['maximumAge']
    ;
    minimumAge =
        json['minimumAge']
    ;
    notes =
        (json['notes'] as List).map((item) => item as String).toList()
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'maximumAge': maximumAge,
      'minimumAge': minimumAge,
      'notes': notes
     };
  }

  static List<AgeEligibility> listFromJson(List<dynamic> json) {
    return json == null ? new List<AgeEligibility>() : json.map((value) => new AgeEligibility.fromJson(value)).toList();
  }

  static Map<String, AgeEligibility> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AgeEligibility>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AgeEligibility.fromJson(value));
    }
    return map;
  }
}

