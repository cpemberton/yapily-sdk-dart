import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:yapily_sdk/model/atm_open_data_response.dart';

import 'package:yapily_sdk/model/response_meta.dart';

part 'api_response_of_list_of_atm_open_data_response.jser.dart';

class ApiResponseOfListOfATMOpenDataResponse {
  
  @Alias('meta', isNullable: false,  )
  final ResponseMeta meta;
  
  @Alias('data', isNullable: false,  )
  final List<ATMOpenDataResponse> data;
  
  @Alias('links', isNullable: false,  )
  final Map<String, String> links;
  

  ApiResponseOfListOfATMOpenDataResponse(
      

{
     this.meta = null,  
     this.data = const [],  
     this.links = const {} 
    
    }
  );

  @override
  String toString() {
    return 'ApiResponseOfListOfATMOpenDataResponse[meta=$meta, data=$data, links=$links, ]';
  }
}

@GenSerializer(nullableFields: true)
class ApiResponseOfListOfATMOpenDataResponseSerializer extends Serializer<ApiResponseOfListOfATMOpenDataResponse> with _$ApiResponseOfListOfATMOpenDataResponseSerializer {

}

