import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'response_entity.jser.dart';

class ResponseEntity {
  
  @Alias('body', isNullable: false,  )
  final Object body;
  
  @Alias('statusCode', isNullable: false,
          
  )
  final String statusCode;
  //enum statusCodeEnum {  100,  101,  102,  103,  200,  201,  202,  203,  204,  205,  206,  207,  208,  226,  300,  301,  302,  303,  304,  305,  307,  308,  400,  401,  402,  403,  404,  405,  406,  407,  408,  409,  410,  411,  412,  413,  414,  415,  416,  417,  418,  419,  420,  421,  422,  423,  424,  426,  428,  429,  431,  451,  500,  501,  502,  503,  504,  505,  506,  507,  508,  509,  510,  511,  };
  @Alias('statusCodeValue', isNullable: false,  )
  final int statusCodeValue;
  

  ResponseEntity(
      

{
     this.body = null,  
     this.statusCode = null,  
     this.statusCodeValue = null 
    
    }
  );

  @override
  String toString() {
    return 'ResponseEntity[body=$body, statusCode=$statusCode, statusCodeValue=$statusCodeValue, ]';
  }
}

@GenSerializer(nullableFields: true)
class ResponseEntitySerializer extends Serializer<ResponseEntity> with _$ResponseEntitySerializer {

}

