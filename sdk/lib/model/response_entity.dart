part of yapily_sdk.api;

class ResponseEntity {
  
  Object body = null;
  

  String statusCode = null;
  //enum statusCodeEnum {  100,  101,  102,  103,  200,  201,  202,  203,  204,  205,  206,  207,  208,  226,  300,  301,  302,  303,  304,  305,  307,  308,  400,  401,  402,  403,  404,  405,  406,  407,  408,  409,  410,  411,  412,  413,  414,  415,  416,  417,  418,  419,  420,  421,  422,  423,  424,  426,  428,  429,  431,  451,  500,  501,  502,  503,  504,  505,  506,  507,  508,  509,  510,  511,  };

  int statusCodeValue = null;
  
  ResponseEntity();

  @override
  String toString() {
    return 'ResponseEntity[body=$body, statusCode=$statusCode, statusCodeValue=$statusCodeValue, ]';
  }

  ResponseEntity.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    body =
      
      
      new Object.fromJson(json['body'])
;
    statusCode =
        json['statusCode']
    ;
    statusCodeValue =
        json['statusCodeValue']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'body': body,
      'statusCode': statusCode,
      'statusCodeValue': statusCodeValue
     };
  }

  static List<ResponseEntity> listFromJson(List<dynamic> json) {
    return json == null ? new List<ResponseEntity>() : json.map((value) => new ResponseEntity.fromJson(value)).toList();
  }

  static Map<String, ResponseEntity> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ResponseEntity>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ResponseEntity.fromJson(value));
    }
    return map;
  }
}

