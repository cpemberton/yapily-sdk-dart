import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:yapily_sdk/model/bulk_user_delete_details.dart';

import 'package:yapily_sdk/model/response_meta.dart';

part 'api_response_of_bulk_user_delete_details.jser.dart';

class ApiResponseOfBulkUserDeleteDetails {
  
  @Alias('meta', isNullable: false,  )
  final ResponseMeta meta;
  
  @Alias('data', isNullable: false,  )
  final BulkUserDeleteDetails data;
  
  @Alias('links', isNullable: false,  )
  final Map<String, String> links;
  

  ApiResponseOfBulkUserDeleteDetails(
      

{
     this.meta = null,  
     this.data = null,  
     this.links = const {} 
    
    }
  );

  @override
  String toString() {
    return 'ApiResponseOfBulkUserDeleteDetails[meta=$meta, data=$data, links=$links, ]';
  }
}

@GenSerializer(nullableFields: true)
class ApiResponseOfBulkUserDeleteDetailsSerializer extends Serializer<ApiResponseOfBulkUserDeleteDetails> with _$ApiResponseOfBulkUserDeleteDetailsSerializer {

}

