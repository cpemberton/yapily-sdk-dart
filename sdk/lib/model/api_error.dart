import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'api_error.jser.dart';

class ApiError {
  
  @Alias('code', isNullable: false,  )
  final int code;
  
  @Alias('message', isNullable: false,  )
  final String message;
  
  @Alias('source', isNullable: false,  )
  final String source;
  
  @Alias('status', isNullable: false,
          
  )
  final String status;
  //enum statusEnum {  400,  401,  402,  403,  404,  405,  406,  407,  408,  409,  410,  411,  412,  413,  414,  415,  416,  417,  418,  419,  420,  421,  422,  423,  424,  426,  428,  429,  431,  451,  500,  501,  502,  503,  504,  505,  506,  507,  508,  509,  510,  511,  };
  @Alias('tracingId', isNullable: false,  )
  final String tracingId;
  

  ApiError(
      

{
     this.code = null,  
     this.message = null,  
     this.source = null,  
     this.status = null,  
     this.tracingId = null 
    
    }
  );

  @override
  String toString() {
    return 'ApiError[code=$code, message=$message, source=$source, status=$status, tracingId=$tracingId, ]';
  }
}

@GenSerializer(nullableFields: true)
class ApiErrorSerializer extends Serializer<ApiError> with _$ApiErrorSerializer {

}

