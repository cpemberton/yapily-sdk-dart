import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:yapily_sdk/model/transaction.dart';

import 'package:yapily_sdk/model/response_list_meta.dart';

part 'api_list_response_of_transaction.jser.dart';

class ApiListResponseOfTransaction {
  
  @Alias('meta', isNullable: false,  )
  final ResponseListMeta meta;
  
  @Alias('data', isNullable: false,  )
  final List<Transaction> data;
  
  @Alias('links', isNullable: false,  )
  final Map<String, String> links;
  

  ApiListResponseOfTransaction(
      

{
     this.meta = null,  
     this.data = const [],  
     this.links = const {} 
    
    }
  );

  @override
  String toString() {
    return 'ApiListResponseOfTransaction[meta=$meta, data=$data, links=$links, ]';
  }
}

@GenSerializer(nullableFields: true)
class ApiListResponseOfTransactionSerializer extends Serializer<ApiListResponseOfTransaction> with _$ApiListResponseOfTransactionSerializer {

}

