import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:yapily_sdk/model/bulk_user_delete.dart';

import 'package:yapily_sdk/model/response_list_meta.dart';

part 'api_list_response_of_bulk_user_delete.jser.dart';

class ApiListResponseOfBulkUserDelete {
  
  @Alias('meta', isNullable: false,  )
  final ResponseListMeta meta;
  
  @Alias('data', isNullable: false,  )
  final List<BulkUserDelete> data;
  
  @Alias('links', isNullable: false,  )
  final Map<String, String> links;
  

  ApiListResponseOfBulkUserDelete(
      

{
     this.meta = null,  
     this.data = const [],  
     this.links = const {} 
    
    }
  );

  @override
  String toString() {
    return 'ApiListResponseOfBulkUserDelete[meta=$meta, data=$data, links=$links, ]';
  }
}

@GenSerializer(nullableFields: true)
class ApiListResponseOfBulkUserDeleteSerializer extends Serializer<ApiListResponseOfBulkUserDelete> with _$ApiListResponseOfBulkUserDeleteSerializer {

}

