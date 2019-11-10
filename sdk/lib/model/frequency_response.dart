part of yapily_sdk.api;

class FrequencyResponse {
  
  int executionDay = null;
  

  String frequencyType = null;
  //enum frequencyTypeEnum {  DAILY,  EVERY_WORKING_DAY,  CALENDAR_DAY,  WEEKLY,  EVERY_TWO_WEEKS,  MONTHLY,  EVERY_TWO_MONTHS,  QUARTERLY,  SEMIANNUAL,  ANNUAL,  };

  int intervalMonth = null;
  

  int intervalWeek = null;
  
  FrequencyResponse();

  @override
  String toString() {
    return 'FrequencyResponse[executionDay=$executionDay, frequencyType=$frequencyType, intervalMonth=$intervalMonth, intervalWeek=$intervalWeek, ]';
  }

  FrequencyResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    executionDay =
        json['executionDay']
    ;
    frequencyType =
        json['frequencyType']
    ;
    intervalMonth =
        json['intervalMonth']
    ;
    intervalWeek =
        json['intervalWeek']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'executionDay': executionDay,
      'frequencyType': frequencyType,
      'intervalMonth': intervalMonth,
      'intervalWeek': intervalWeek
     };
  }

  static List<FrequencyResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<FrequencyResponse>() : json.map((value) => new FrequencyResponse.fromJson(value)).toList();
  }

  static Map<String, FrequencyResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, FrequencyResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FrequencyResponse.fromJson(value));
    }
    return map;
  }
}

