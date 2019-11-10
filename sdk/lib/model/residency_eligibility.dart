part of yapily_sdk.api;

class ResidencyEligibility {
  
  List<String> notes = [];
  

  OtherResidencyType otherResidencyType = null;
  

  List<String> residencyIncluded = [];
  

  String residencyType = null;
  //enum residencyTypeEnum {  Householder,  Other,  };
  ResidencyEligibility();

  @override
  String toString() {
    return 'ResidencyEligibility[notes=$notes, otherResidencyType=$otherResidencyType, residencyIncluded=$residencyIncluded, residencyType=$residencyType, ]';
  }

  ResidencyEligibility.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    notes =
        (json['notes'] as List).map((item) => item as String).toList()
    ;
    otherResidencyType =
      
      
      new OtherResidencyType.fromJson(json['otherResidencyType'])
;
    residencyIncluded =
        (json['residencyIncluded'] as List).map((item) => item as String).toList()
    ;
    residencyType =
        json['residencyType']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'notes': notes,
      'otherResidencyType': otherResidencyType,
      'residencyIncluded': residencyIncluded,
      'residencyType': residencyType
     };
  }

  static List<ResidencyEligibility> listFromJson(List<dynamic> json) {
    return json == null ? new List<ResidencyEligibility>() : json.map((value) => new ResidencyEligibility.fromJson(value)).toList();
  }

  static Map<String, ResidencyEligibility> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ResidencyEligibility>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ResidencyEligibility.fromJson(value));
    }
    return map;
  }
}

