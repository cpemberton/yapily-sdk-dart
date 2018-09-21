part of yapily_sdk.api;

class PersonalCurrentAccountBrand {
  
  String brandName = null;
  

  List<PersonalCurrentAccountPCA> PCA = [];
  
  PersonalCurrentAccountBrand();

  @override
  String toString() {
    return 'PersonalCurrentAccountBrand[brandName=$brandName, PCA=$PCA, ]';
  }

  PersonalCurrentAccountBrand.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    brandName =
        json['brandName']
    ;
    PCA =
      PersonalCurrentAccountPCA.listFromJson(json['PCA'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'brandName': brandName,
      'PCA': PCA
     };
  }

  static List<PersonalCurrentAccountBrand> listFromJson(List<dynamic> json) {
    return json == null ? new List<PersonalCurrentAccountBrand>() : json.map((value) => new PersonalCurrentAccountBrand.fromJson(value)).toList();
  }

  static Map<String, PersonalCurrentAccountBrand> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PersonalCurrentAccountBrand>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PersonalCurrentAccountBrand.fromJson(value));
    }
    return map;
  }
}

