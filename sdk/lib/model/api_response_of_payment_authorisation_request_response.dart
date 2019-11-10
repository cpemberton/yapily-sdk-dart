import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:yapily_sdk/model/payment_authorisation_request_response.dart';

import 'package:yapily_sdk/model/response_meta.dart';

part 'api_response_of_payment_authorisation_request_response.jser.dart';

class ApiResponseOfPaymentAuthorisationRequestResponse {
  
  @Alias('meta', isNullable: false,  )
  final ResponseMeta meta;
  
  @Alias('data', isNullable: false,  )
  final PaymentAuthorisationRequestResponse data;
  
  @Alias('links', isNullable: false,  )
  final Map<String, String> links;
  

  ApiResponseOfPaymentAuthorisationRequestResponse(
      

{
     this.meta = null,  
     this.data = null,  
     this.links = const {} 
    
    }
  );

  @override
  String toString() {
    return 'ApiResponseOfPaymentAuthorisationRequestResponse[meta=$meta, data=$data, links=$links, ]';
  }
}

@GenSerializer(nullableFields: true)
class ApiResponseOfPaymentAuthorisationRequestResponseSerializer extends Serializer<ApiResponseOfPaymentAuthorisationRequestResponse> with _$ApiResponseOfPaymentAuthorisationRequestResponseSerializer {

}

