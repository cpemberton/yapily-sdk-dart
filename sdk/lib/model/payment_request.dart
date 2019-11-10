import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:yapily_sdk/model/payee.dart';

import 'package:yapily_sdk/model/amount.dart';

import 'package:yapily_sdk/model/account_identification.dart';

import 'package:yapily_sdk/model/periodic_payment_request.dart';

part 'payment_request.jser.dart';

class PaymentRequest {
  
  @Alias('paymentIdempotencyId', isNullable: false,  )
  final String paymentIdempotencyId;
  
  @Alias('payerAccountIdentifications', isNullable: false,  )
  final List<AccountIdentification> payerAccountIdentifications;
  
  @Alias('amount', isNullable: false,  )
  final Amount amount;
  
  @Alias('reference', isNullable: false,  )
  final String reference;
  
  @Alias('contextType', isNullable: false,
          
  )
  final String contextType;
  //enum contextTypeEnum {  BILL,  GOODS,  SERVICES,  OTHER,  PERSON_TO_PERSON,  };
  @Alias('type', isNullable: false,
          
  )
  final String type;
  //enum typeEnum {  DOMESTIC_PAYMENT,  DOMESTIC_VARIABLE_RECURRING_PAYMENT,  DOMESTIC_SCHEDULED_PAYMENT,  DOMESTIC_PERIODIC_PAYMENT,  };
  @Alias('paymentDateTime', isNullable: false,  )
  final DateTime paymentDateTime;
  
  @Alias('payee', isNullable: false,  )
  final Payee payee;
  
  @Alias('periodicPayments', isNullable: false,  )
  final PeriodicPaymentRequest periodicPayments;
  

  PaymentRequest(
      

{
    
     this.paymentIdempotencyId = null,   this.payerAccountIdentifications = const [],  
     this.amount = null,  
     this.reference = null,  
     this.contextType = null,  
     this.type = null,  
     this.paymentDateTime = null,  
    
     this.payee = null,   this.periodicPayments = null 
    
    }
  );

  @override
  String toString() {
    return 'PaymentRequest[paymentIdempotencyId=$paymentIdempotencyId, payerAccountIdentifications=$payerAccountIdentifications, amount=$amount, reference=$reference, contextType=$contextType, type=$type, paymentDateTime=$paymentDateTime, payee=$payee, periodicPayments=$periodicPayments, ]';
  }
}

@GenSerializer(nullableFields: true)
class PaymentRequestSerializer extends Serializer<PaymentRequest> with _$PaymentRequestSerializer {

}

