import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:yapily_sdk/model/response_meta.dart';

import 'package:yapily_sdk/model/user_delete_response.dart';

part 'api_response_of_user_delete_response.jser.dart';

class ApiResponseOfUserDeleteResponse {
  
  @Alias('meta', isNullable: false,  )
  final ResponseMeta meta;
  
  @Alias('data', isNullable: false,  )
  final UserDeleteResponse data;
  
  @Alias('links', isNullable: false,  )
  final Map<String, String> links;
  

  ApiResponseOfUserDeleteResponse(
      

{
     this.meta = null,  
     this.data = null,  
     this.links = const {} 
    
    }
  );

  @override
  String toString() {
    return 'ApiResponseOfUserDeleteResponse[meta=$meta, data=$data, links=$links, ]';
  }
}

@GenSerializer(nullableFields: true)
class ApiResponseOfUserDeleteResponseSerializer extends Serializer<ApiResponseOfUserDeleteResponse> with _$ApiResponseOfUserDeleteResponseSerializer {

}

