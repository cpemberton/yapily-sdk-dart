import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:yapily_sdk/model/consent.dart';

import 'package:yapily_sdk/model/response_meta.dart';

part 'api_response_of_consent.jser.dart';

class ApiResponseOfConsent {
  
  @Alias('meta', isNullable: false,  )
  final ResponseMeta meta;
  
  @Alias('data', isNullable: false,  )
  final Consent data;
  
  @Alias('links', isNullable: false,  )
  final Map<String, String> links;
  

  ApiResponseOfConsent(
      

{
     this.meta = null,  
     this.data = null,  
     this.links = const {} 
    
    }
  );

  @override
  String toString() {
    return 'ApiResponseOfConsent[meta=$meta, data=$data, links=$links, ]';
  }
}

@GenSerializer(nullableFields: true)
class ApiResponseOfConsentSerializer extends Serializer<ApiResponseOfConsent> with _$ApiResponseOfConsentSerializer {

}

