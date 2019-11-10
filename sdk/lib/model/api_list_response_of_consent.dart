import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:yapily_sdk/model/consent.dart';

import 'package:yapily_sdk/model/response_list_meta.dart';

part 'api_list_response_of_consent.jser.dart';

class ApiListResponseOfConsent {
  
  @Alias('meta', isNullable: false,  )
  final ResponseListMeta meta;
  
  @Alias('data', isNullable: false,  )
  final List<Consent> data;
  
  @Alias('links', isNullable: false,  )
  final Map<String, String> links;
  

  ApiListResponseOfConsent(
      

{
     this.meta = null,  
     this.data = const [],  
     this.links = const {} 
    
    }
  );

  @override
  String toString() {
    return 'ApiListResponseOfConsent[meta=$meta, data=$data, links=$links, ]';
  }
}

@GenSerializer(nullableFields: true)
class ApiListResponseOfConsentSerializer extends Serializer<ApiListResponseOfConsent> with _$ApiListResponseOfConsentSerializer {

}

