part of yapily_sdk.api;

class MultiAuthorisation {
  
  String status = null;
  

  int numberOfAuthorisationRequired = null;
  

  int numberOfAuthorisationReceived = null;
  

  DateTime lastUpdatedDateTime = null;
  

  DateTime expirationDateTime = null;
  
  MultiAuthorisation();

  @override
  String toString() {
    return 'MultiAuthorisation[status=$status, numberOfAuthorisationRequired=$numberOfAuthorisationRequired, numberOfAuthorisationReceived=$numberOfAuthorisationReceived, lastUpdatedDateTime=$lastUpdatedDateTime, expirationDateTime=$expirationDateTime, ]';
  }

  MultiAuthorisation.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    status =
        json['status']
    ;
    numberOfAuthorisationRequired =
        json['numberOfAuthorisationRequired']
    ;
    numberOfAuthorisationReceived =
        json['numberOfAuthorisationReceived']
    ;
    lastUpdatedDateTime = json['lastUpdatedDateTime'] == null ? null : DateTime.parse(json['lastUpdatedDateTime']);
    expirationDateTime = json['expirationDateTime'] == null ? null : DateTime.parse(json['expirationDateTime']);
  }

  Map<String, dynamic> toJson() {
    return {
      'status': status,
      'numberOfAuthorisationRequired': numberOfAuthorisationRequired,
      'numberOfAuthorisationReceived': numberOfAuthorisationReceived,
      'lastUpdatedDateTime': lastUpdatedDateTime == null ? '' : lastUpdatedDateTime.toUtc().toIso8601String(),
      'expirationDateTime': expirationDateTime == null ? '' : expirationDateTime.toUtc().toIso8601String()
     };
  }

  static List<MultiAuthorisation> listFromJson(List<dynamic> json) {
    return json == null ? new List<MultiAuthorisation>() : json.map((value) => new MultiAuthorisation.fromJson(value)).toList();
  }

  static Map<String, MultiAuthorisation> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, MultiAuthorisation>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new MultiAuthorisation.fromJson(value));
    }
    return map;
  }
}

