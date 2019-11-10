part of yapily_sdk.api;

class FrequencyRequest {
  
  String type = null;
  //enum typeEnum {  DAILY,  EVERY_WORKING_DAY,  CALENDAR_DAY,  WEEKLY,  EVERY_TWO_WEEKS,  MONTHLY,  EVERY_TWO_MONTHS,  QUARTERLY,  SEMIANNUAL,  ANNUAL,  };

  int intervalWeek = null;
  

  int intervalMonth = null;
  

  int executionDay = null;
  
  FrequencyRequest();

  @override
  String toString() {
    return 'FrequencyRequest[type=$type, intervalWeek=$intervalWeek, intervalMonth=$intervalMonth, executionDay=$executionDay, ]';
  }

  FrequencyRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type =
        json['type']
    ;
    intervalWeek =
        json['intervalWeek']
    ;
    intervalMonth =
        json['intervalMonth']
    ;
    executionDay =
        json['executionDay']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'intervalWeek': intervalWeek,
      'intervalMonth': intervalMonth,
      'executionDay': executionDay
     };
  }

  static List<FrequencyRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<FrequencyRequest>() : json.map((value) => new FrequencyRequest.fromJson(value)).toList();
  }

  static Map<String, FrequencyRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, FrequencyRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FrequencyRequest.fromJson(value));
    }
    return map;
  }
}

