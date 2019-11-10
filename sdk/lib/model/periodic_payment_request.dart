import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:yapily_sdk/model/amount.dart';

import 'package:yapily_sdk/model/frequency_request.dart';

part 'periodic_payment_request.jser.dart';

class PeriodicPaymentRequest {
  
  @Alias('frequency', isNullable: false,  )
  final FrequencyRequest frequency;
  
  @Alias('numberOfPayments', isNullable: false,  )
  final int numberOfPayments;
  
  @Alias('nextPaymentDateTime', isNullable: false,  )
  final DateTime nextPaymentDateTime;
  
  @Alias('nextPaymentAmount', isNullable: false,  )
  final Amount nextPaymentAmount;
  
  @Alias('finalPaymentDateTime', isNullable: false,  )
  final DateTime finalPaymentDateTime;
  
  @Alias('finalPaymentAmount', isNullable: false,  )
  final Amount finalPaymentAmount;
  

  PeriodicPaymentRequest(
      

{
    
     this.frequency = null,   this.numberOfPayments = null,  
     this.nextPaymentDateTime = null,  
     this.nextPaymentAmount = null,  
     this.finalPaymentDateTime = null,  
     this.finalPaymentAmount = null 
    
    }
  );

  @override
  String toString() {
    return 'PeriodicPaymentRequest[frequency=$frequency, numberOfPayments=$numberOfPayments, nextPaymentDateTime=$nextPaymentDateTime, nextPaymentAmount=$nextPaymentAmount, finalPaymentDateTime=$finalPaymentDateTime, finalPaymentAmount=$finalPaymentAmount, ]';
  }
}

@GenSerializer(nullableFields: true)
class PeriodicPaymentRequestSerializer extends Serializer<PeriodicPaymentRequest> with _$PeriodicPaymentRequestSerializer {

}

