import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:yapily_sdk/model/payment_response.dart';

import 'package:yapily_sdk/model/response_meta.dart';

part 'api_response_of_payment_response.jser.dart';

class ApiResponseOfPaymentResponse {
  
  @Alias('meta', isNullable: false,  )
  final ResponseMeta meta;
  
  @Alias('data', isNullable: false,  )
  final PaymentResponse data;
  
  @Alias('links', isNullable: false,  )
  final Map<String, String> links;
  

  ApiResponseOfPaymentResponse(
      

{
     this.meta = null,  
     this.data = null,  
     this.links = const {} 
    
    }
  );

  @override
  String toString() {
    return 'ApiResponseOfPaymentResponse[meta=$meta, data=$data, links=$links, ]';
  }
}

@GenSerializer(nullableFields: true)
class ApiResponseOfPaymentResponseSerializer extends Serializer<ApiResponseOfPaymentResponse> with _$ApiResponseOfPaymentResponseSerializer {

}

