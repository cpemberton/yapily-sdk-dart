import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:yapily_sdk/model/account.dart';

import 'package:yapily_sdk/model/response_list_meta.dart';

part 'api_list_response_of_account.jser.dart';

class ApiListResponseOfAccount {
  
  @Alias('meta', isNullable: false,  )
  final ResponseListMeta meta;
  
  @Alias('data', isNullable: false,  )
  final List<Account> data;
  
  @Alias('links', isNullable: false,  )
  final Map<String, String> links;
  

  ApiListResponseOfAccount(
      

{
     this.meta = null,  
     this.data = const [],  
     this.links = const {} 
    
    }
  );

  @override
  String toString() {
    return 'ApiListResponseOfAccount[meta=$meta, data=$data, links=$links, ]';
  }
}

@GenSerializer(nullableFields: true)
class ApiListResponseOfAccountSerializer extends Serializer<ApiListResponseOfAccount> with _$ApiListResponseOfAccountSerializer {

}

