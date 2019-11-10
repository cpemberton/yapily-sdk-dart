import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:yapily_sdk/model/identity.dart';

import 'package:yapily_sdk/model/response_meta.dart';

part 'api_response_of_identity.jser.dart';

class ApiResponseOfIdentity {
  
  @Alias('meta', isNullable: false,  )
  final ResponseMeta meta;
  
  @Alias('data', isNullable: false,  )
  final Identity data;
  
  @Alias('links', isNullable: false,  )
  final Map<String, String> links;
  

  ApiResponseOfIdentity(
      

{
     this.meta = null,  
     this.data = null,  
     this.links = const {} 
    
    }
  );

  @override
  String toString() {
    return 'ApiResponseOfIdentity[meta=$meta, data=$data, links=$links, ]';
  }
}

@GenSerializer(nullableFields: true)
class ApiResponseOfIdentitySerializer extends Serializer<ApiResponseOfIdentity> with _$ApiResponseOfIdentitySerializer {

}

