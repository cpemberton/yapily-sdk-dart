import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:yapily_sdk/model/authorisation_request_response.dart';

import 'package:yapily_sdk/model/response_meta.dart';

part 'api_response_of_authorisation_request_response.jser.dart';

class ApiResponseOfAuthorisationRequestResponse {
  
  @Alias('meta', isNullable: false,  )
  final ResponseMeta meta;
  
  @Alias('data', isNullable: false,  )
  final AuthorisationRequestResponse data;
  
  @Alias('links', isNullable: false,  )
  final Map<String, String> links;
  

  ApiResponseOfAuthorisationRequestResponse(
      

{
     this.meta = null,  
     this.data = null,  
     this.links = const {} 
    
    }
  );

  @override
  String toString() {
    return 'ApiResponseOfAuthorisationRequestResponse[meta=$meta, data=$data, links=$links, ]';
  }
}

@GenSerializer(nullableFields: true)
class ApiResponseOfAuthorisationRequestResponseSerializer extends Serializer<ApiResponseOfAuthorisationRequestResponse> with _$ApiResponseOfAuthorisationRequestResponseSerializer {

}

