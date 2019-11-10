import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:yapily_sdk/model/consent_delete_response.dart';

import 'package:yapily_sdk/model/response_meta.dart';

part 'api_response_of_consent_delete_response.jser.dart';

class ApiResponseOfConsentDeleteResponse {
  
  @Alias('meta', isNullable: false,  )
  final ResponseMeta meta;
  
  @Alias('data', isNullable: false,  )
  final ConsentDeleteResponse data;
  
  @Alias('links', isNullable: false,  )
  final Map<String, String> links;
  

  ApiResponseOfConsentDeleteResponse(
      

{
     this.meta = null,  
     this.data = null,  
     this.links = const {} 
    
    }
  );

  @override
  String toString() {
    return 'ApiResponseOfConsentDeleteResponse[meta=$meta, data=$data, links=$links, ]';
  }
}

@GenSerializer(nullableFields: true)
class ApiResponseOfConsentDeleteResponseSerializer extends Serializer<ApiResponseOfConsentDeleteResponse> with _$ApiResponseOfConsentDeleteResponseSerializer {

}

