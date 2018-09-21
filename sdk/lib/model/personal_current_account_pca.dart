part of yapily_sdk.api;

class PersonalCurrentAccountPCA {
  
  String identification = null;
  

  String name = null;
  

  List<PersonalCurrentAccountPCAMarketingState> pCAMarketingState = [];
  

  List<String> segment = [];
  
  PersonalCurrentAccountPCA();

  @override
  String toString() {
    return 'PersonalCurrentAccountPCA[identification=$identification, name=$name, pCAMarketingState=$pCAMarketingState, segment=$segment, ]';
  }

  PersonalCurrentAccountPCA.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    identification =
        json['identification']
    ;
    name =
        json['name']
    ;
    pCAMarketingState =
      PersonalCurrentAccountPCAMarketingState.listFromJson(json['pCAMarketingState'])
;
    segment =
        (json['segment'] as List).map((item) => item as String).toList()
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'identification': identification,
      'name': name,
      'pCAMarketingState': pCAMarketingState,
      'segment': segment
     };
  }

  static List<PersonalCurrentAccountPCA> listFromJson(List<dynamic> json) {
    return json == null ? new List<PersonalCurrentAccountPCA>() : json.map((value) => new PersonalCurrentAccountPCA.fromJson(value)).toList();
  }

  static Map<String, PersonalCurrentAccountPCA> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PersonalCurrentAccountPCA>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PersonalCurrentAccountPCA.fromJson(value));
    }
    return map;
  }
}

