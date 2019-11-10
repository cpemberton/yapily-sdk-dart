import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:yapily_sdk/model/account_statement.dart';

import 'package:yapily_sdk/model/response_list_meta.dart';

part 'api_list_response_of_account_statement.jser.dart';

class ApiListResponseOfAccountStatement {
  
  @Alias('meta', isNullable: false,  )
  final ResponseListMeta meta;
  
  @Alias('data', isNullable: false,  )
  final List<AccountStatement> data;
  
  @Alias('links', isNullable: false,  )
  final Map<String, String> links;
  

  ApiListResponseOfAccountStatement(
      

{
     this.meta = null,  
     this.data = const [],  
     this.links = const {} 
    
    }
  );

  @override
  String toString() {
    return 'ApiListResponseOfAccountStatement[meta=$meta, data=$data, links=$links, ]';
  }
}

@GenSerializer(nullableFields: true)
class ApiListResponseOfAccountStatementSerializer extends Serializer<ApiListResponseOfAccountStatement> with _$ApiListResponseOfAccountStatementSerializer {

}

