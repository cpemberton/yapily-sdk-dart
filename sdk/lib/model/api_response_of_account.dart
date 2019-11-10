import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:yapily_sdk/model/response_meta.dart';

import 'package:yapily_sdk/model/account.dart';

part 'api_response_of_account.jser.dart';

class ApiResponseOfAccount {
  
  @Alias('meta', isNullable: false,  )
  final ResponseMeta meta;
  
  @Alias('data', isNullable: false,  )
  final Account data;
  
  @Alias('links', isNullable: false,  )
  final Map<String, String> links;
  

  ApiResponseOfAccount(
      

{
     this.meta = null,  
     this.data = null,  
     this.links = const {} 
    
    }
  );

  @override
  String toString() {
    return 'ApiResponseOfAccount[meta=$meta, data=$data, links=$links, ]';
  }
}

@GenSerializer(nullableFields: true)
class ApiResponseOfAccountSerializer extends Serializer<ApiResponseOfAccount> with _$ApiResponseOfAccountSerializer {

}

