import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:yapily_sdk/model/payment_response.dart';

import 'package:yapily_sdk/model/response_list_meta.dart';

part 'api_list_response_of_payment_response.jser.dart';

class ApiListResponseOfPaymentResponse {
  
  @Alias('meta', isNullable: false,  )
  final ResponseListMeta meta;
  
  @Alias('data', isNullable: false,  )
  final List<PaymentResponse> data;
  
  @Alias('links', isNullable: false,  )
  final Map<String, String> links;
  

  ApiListResponseOfPaymentResponse(
      

{
     this.meta = null,  
     this.data = const [],  
     this.links = const {} 
    
    }
  );

  @override
  String toString() {
    return 'ApiListResponseOfPaymentResponse[meta=$meta, data=$data, links=$links, ]';
  }
}

@GenSerializer(nullableFields: true)
class ApiListResponseOfPaymentResponseSerializer extends Serializer<ApiListResponseOfPaymentResponse> with _$ApiListResponseOfPaymentResponseSerializer {

}

