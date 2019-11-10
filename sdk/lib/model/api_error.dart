part of yapily_sdk.api;

class ApiError {
  
  int code = null;
  

  String message = null;
  

  String source = null;
  

  String status = null;
  //enum statusEnum {  400,  401,  402,  403,  404,  405,  406,  407,  408,  409,  410,  411,  412,  413,  414,  415,  416,  417,  418,  419,  420,  421,  422,  423,  424,  426,  428,  429,  431,  451,  500,  501,  502,  503,  504,  505,  506,  507,  508,  509,  510,  511,  };

  String tracingId = null;
  
  ApiError();

  @override
  String toString() {
    return 'ApiError[code=$code, message=$message, source=$source, status=$status, tracingId=$tracingId, ]';
  }

  ApiError.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    code =
        json['code']
    ;
    message =
        json['message']
    ;
    source =
        json['source']
    ;
    status =
        json['status']
    ;
    tracingId =
        json['tracingId']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'code': code,
      'message': message,
      'source': source,
      'status': status,
      'tracingId': tracingId
     };
  }

  static List<ApiError> listFromJson(List<dynamic> json) {
    return json == null ? new List<ApiError>() : json.map((value) => new ApiError.fromJson(value)).toList();
  }

  static Map<String, ApiError> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ApiError>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ApiError.fromJson(value));
    }
    return map;
  }
}

