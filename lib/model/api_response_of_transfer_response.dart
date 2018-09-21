part of yapily_sdk.api;

class ApiResponseOfTransferResponse {
  
  TransferResponse data = null;
  
  ApiResponseOfTransferResponse();

  @override
  String toString() {
    return 'ApiResponseOfTransferResponse[data=$data, ]';
  }

  ApiResponseOfTransferResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    data =
      
      
      new TransferResponse.fromJson(json['data'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'data': data
     };
  }

  static List<ApiResponseOfTransferResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<ApiResponseOfTransferResponse>() : json.map((value) => new ApiResponseOfTransferResponse.fromJson(value)).toList();
  }

  static Map<String, ApiResponseOfTransferResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ApiResponseOfTransferResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ApiResponseOfTransferResponse.fromJson(value));
    }
    return map;
  }
}

