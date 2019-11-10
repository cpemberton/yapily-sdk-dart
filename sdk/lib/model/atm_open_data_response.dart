part of yapily_sdk.api;

class ATMOpenDataResponse {
  
  List<ATMOpenData> data = [];
  
  ATMOpenDataResponse();

  @override
  String toString() {
    return 'ATMOpenDataResponse[data=$data, ]';
  }

  ATMOpenDataResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    data =
      ATMOpenData.listFromJson(json['data'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'data': data
     };
  }

  static List<ATMOpenDataResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<ATMOpenDataResponse>() : json.map((value) => new ATMOpenDataResponse.fromJson(value)).toList();
  }

  static Map<String, ATMOpenDataResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ATMOpenDataResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ATMOpenDataResponse.fromJson(value));
    }
    return map;
  }
}

