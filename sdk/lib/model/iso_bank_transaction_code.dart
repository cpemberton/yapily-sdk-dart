part of yapily_sdk.api;

class IsoBankTransactionCode {
  
  IsoCodeDetails domainCode = null;
  

  IsoCodeDetails familyCode = null;
  

  IsoCodeDetails subFamilyCode = null;
  
  IsoBankTransactionCode();

  @override
  String toString() {
    return 'IsoBankTransactionCode[domainCode=$domainCode, familyCode=$familyCode, subFamilyCode=$subFamilyCode, ]';
  }

  IsoBankTransactionCode.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    domainCode =
      
      
      new IsoCodeDetails.fromJson(json['domainCode'])
;
    familyCode =
      
      
      new IsoCodeDetails.fromJson(json['familyCode'])
;
    subFamilyCode =
      
      
      new IsoCodeDetails.fromJson(json['subFamilyCode'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'domainCode': domainCode,
      'familyCode': familyCode,
      'subFamilyCode': subFamilyCode
     };
  }

  static List<IsoBankTransactionCode> listFromJson(List<dynamic> json) {
    return json == null ? new List<IsoBankTransactionCode>() : json.map((value) => new IsoBankTransactionCode.fromJson(value)).toList();
  }

  static Map<String, IsoBankTransactionCode> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, IsoBankTransactionCode>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new IsoBankTransactionCode.fromJson(value));
    }
    return map;
  }
}

