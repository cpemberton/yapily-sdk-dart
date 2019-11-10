import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:yapily_sdk/model/payment_response.dart';

part 'payment_responses.jser.dart';

class PaymentResponses {
  
  @Alias('payments', isNullable: false,  )
  final List<PaymentResponse> payments;
  

  PaymentResponses(
      

{
     this.payments = const [] 
    
    }
  );

  @override
  String toString() {
    return 'PaymentResponses[payments=$payments, ]';
  }
}

@GenSerializer(nullableFields: true)
class PaymentResponsesSerializer extends Serializer<PaymentResponses> with _$PaymentResponsesSerializer {

}

