part of yapily_sdk.api;

class ApiResponseOfListOfPersonalCurrentAccountData {
  
  List<PersonalCurrentAccountData> data = [];
  
  ApiResponseOfListOfPersonalCurrentAccountData();

  @override
  String toString() {
    return 'ApiResponseOfListOfPersonalCurrentAccountData[data=$data, ]';
  }

  ApiResponseOfListOfPersonalCurrentAccountData.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    data =
      PersonalCurrentAccountData.listFromJson(json['data'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'data': data
     };
  }

  static List<ApiResponseOfListOfPersonalCurrentAccountData> listFromJson(List<dynamic> json) {
    return json == null ? new List<ApiResponseOfListOfPersonalCurrentAccountData>() : json.map((value) => new ApiResponseOfListOfPersonalCurrentAccountData.fromJson(value)).toList();
  }

  static Map<String, ApiResponseOfListOfPersonalCurrentAccountData> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ApiResponseOfListOfPersonalCurrentAccountData>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ApiResponseOfListOfPersonalCurrentAccountData.fromJson(value));
    }
    return map;
  }
}

