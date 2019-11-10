import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:yapily_sdk/model/account_statement.dart';

import 'package:yapily_sdk/model/response_meta.dart';

part 'api_response_of_account_statement.jser.dart';

class ApiResponseOfAccountStatement {
  
  @Alias('meta', isNullable: false,  )
  final ResponseMeta meta;
  
  @Alias('data', isNullable: false,  )
  final AccountStatement data;
  
  @Alias('links', isNullable: false,  )
  final Map<String, String> links;
  

  ApiResponseOfAccountStatement(
      

{
     this.meta = null,  
     this.data = null,  
     this.links = const {} 
    
    }
  );

  @override
  String toString() {
    return 'ApiResponseOfAccountStatement[meta=$meta, data=$data, links=$links, ]';
  }
}

@GenSerializer(nullableFields: true)
class ApiResponseOfAccountStatementSerializer extends Serializer<ApiResponseOfAccountStatement> with _$ApiResponseOfAccountStatementSerializer {

}

