import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:yapily_sdk/model/transfer_response.dart';

import 'package:yapily_sdk/model/response_meta.dart';

part 'api_response_of_transfer_response.jser.dart';

class ApiResponseOfTransferResponse {
  
  @Alias('meta', isNullable: false,  )
  final ResponseMeta meta;
  
  @Alias('data', isNullable: false,  )
  final TransferResponse data;
  
  @Alias('links', isNullable: false,  )
  final Map<String, String> links;
  

  ApiResponseOfTransferResponse(
      

{
     this.meta = null,  
     this.data = null,  
     this.links = const {} 
    
    }
  );

  @override
  String toString() {
    return 'ApiResponseOfTransferResponse[meta=$meta, data=$data, links=$links, ]';
  }
}

@GenSerializer(nullableFields: true)
class ApiResponseOfTransferResponseSerializer extends Serializer<ApiResponseOfTransferResponse> with _$ApiResponseOfTransferResponseSerializer {

}

