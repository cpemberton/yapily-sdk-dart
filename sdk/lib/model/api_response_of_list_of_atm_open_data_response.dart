part of yapily_sdk.api;

class ApiResponseOfListOfATMOpenDataResponse {
  
  List<ATMOpenDataResponse> data = [];
  
  ApiResponseOfListOfATMOpenDataResponse();

  @override
  String toString() {
    return 'ApiResponseOfListOfATMOpenDataResponse[data=$data, ]';
  }

  ApiResponseOfListOfATMOpenDataResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    data =
      ATMOpenDataResponse.listFromJson(json['data'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'data': data
     };
  }

  static List<ApiResponseOfListOfATMOpenDataResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<ApiResponseOfListOfATMOpenDataResponse>() : json.map((value) => new ApiResponseOfListOfATMOpenDataResponse.fromJson(value)).toList();
  }

  static Map<String, ApiResponseOfListOfATMOpenDataResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ApiResponseOfListOfATMOpenDataResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ApiResponseOfListOfATMOpenDataResponse.fromJson(value));
    }
    return map;
  }
}

