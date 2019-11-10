import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:yapily_sdk/model/payment_responses.dart';

import 'package:yapily_sdk/model/response_meta.dart';

part 'api_response_of_payment_responses.jser.dart';

class ApiResponseOfPaymentResponses {
  
  @Alias('meta', isNullable: false,  )
  final ResponseMeta meta;
  
  @Alias('data', isNullable: false,  )
  final PaymentResponses data;
  
  @Alias('links', isNullable: false,  )
  final Map<String, String> links;
  

  ApiResponseOfPaymentResponses(
      

{
     this.meta = null,  
     this.data = null,  
     this.links = const {} 
    
    }
  );

  @override
  String toString() {
    return 'ApiResponseOfPaymentResponses[meta=$meta, data=$data, links=$links, ]';
  }
}

@GenSerializer(nullableFields: true)
class ApiResponseOfPaymentResponsesSerializer extends Serializer<ApiResponseOfPaymentResponses> with _$ApiResponseOfPaymentResponsesSerializer {

}

