part of yapily_sdk.api;

class MonitoringFeatureStatus {
  
  DateTime lastTested = null;
  

  String span = null;
  

  String status = null;
  //enum statusEnum {  Up,  Down,  Warning,  Unknown,  Expired,  };
  MonitoringFeatureStatus();

  @override
  String toString() {
    return 'MonitoringFeatureStatus[lastTested=$lastTested, span=$span, status=$status, ]';
  }

  MonitoringFeatureStatus.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    lastTested = json['lastTested'] == null ? null : DateTime.parse(json['lastTested']);
    span =
        json['span']
    ;
    status =
        json['status']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'lastTested': lastTested == null ? '' : lastTested.toUtc().toIso8601String(),
      'span': span,
      'status': status
     };
  }

  static List<MonitoringFeatureStatus> listFromJson(List<dynamic> json) {
    return json == null ? new List<MonitoringFeatureStatus>() : json.map((value) => new MonitoringFeatureStatus.fromJson(value)).toList();
  }

  static Map<String, MonitoringFeatureStatus> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, MonitoringFeatureStatus>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new MonitoringFeatureStatus.fromJson(value));
    }
    return map;
  }
}

