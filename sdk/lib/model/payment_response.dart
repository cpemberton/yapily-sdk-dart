import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:yapily_sdk/model/payee.dart';

import 'package:yapily_sdk/model/amount.dart';

import 'package:yapily_sdk/model/frequency_response.dart';

import 'package:yapily_sdk/model/payment_status_details.dart';

import 'package:yapily_sdk/model/charge_details.dart';

part 'payment_response.jser.dart';

class PaymentResponse {
  
  @Alias('id', isNullable: false,  )
  final String id;
  
  @Alias('institutionConsentId', isNullable: false,  )
  final String institutionConsentId;
  
  @Alias('paymentIdempotencyId', isNullable: false,  )
  final String paymentIdempotencyId;
  
  @Alias('paymentLifecycleId', isNullable: false,  )
  final String paymentLifecycleId;
  
  @Alias('status', isNullable: false,
          
  )
  final String status;
  //enum statusEnum {  PENDING,  FAILED,  DECLINED,  COMPLETED,  EXPIRED,  UNKNOWN,  ACTIVE,  INACTIVE,  };
  @Alias('statusDetails', isNullable: false,  )
  final PaymentStatusDetails statusDetails;
  
  @Alias('payeeDetails', isNullable: false,  )
  final Payee payeeDetails;
  
  @Alias('reference', isNullable: false,  )
  final String reference;
  
  @Alias('amount', isNullable: false,  )
  final num amount;
  
  @Alias('currency', isNullable: false,  )
  final String currency;
  
  @Alias('amountDetails', isNullable: false,  )
  final Amount amountDetails;
  
  @Alias('firstPaymentAmount', isNullable: false,  )
  final Amount firstPaymentAmount;
  
  @Alias('firstPaymentDateTime', isNullable: false,  )
  final DateTime firstPaymentDateTime;
  
  @Alias('nextPaymentAmount', isNullable: false,  )
  final Amount nextPaymentAmount;
  
  @Alias('nextPaymentDateTime', isNullable: false,  )
  final DateTime nextPaymentDateTime;
  
  @Alias('finalPaymentAmount', isNullable: false,  )
  final Amount finalPaymentAmount;
  
  @Alias('finalPaymentDateTime', isNullable: false,  )
  final DateTime finalPaymentDateTime;
  
  @Alias('createdAt', isNullable: false,  )
  final DateTime createdAt;
  
  @Alias('previousPaymentAmount', isNullable: false,  )
  final Amount previousPaymentAmount;
  
  @Alias('previousPaymentDateTime', isNullable: false,  )
  final DateTime previousPaymentDateTime;
  
  @Alias('chargeDetails', isNullable: false,  )
  final List<ChargeDetails> chargeDetails;
  
  @Alias('scheduledPaymentType', isNullable: false,  )
  final String scheduledPaymentType;
  
  @Alias('scheduledPaymentDateTime', isNullable: false,  )
  final DateTime scheduledPaymentDateTime;
  
  @Alias('frequency', isNullable: false,  )
  final FrequencyResponse frequency;
  

  PaymentResponse(
      

{
     this.id = null,  
     this.institutionConsentId = null,  
     this.paymentIdempotencyId = null,  
     this.paymentLifecycleId = null,  
     this.status = null,  
     this.statusDetails = null,  
     this.payeeDetails = null,  
     this.reference = null,  
     this.amount = null,  
     this.currency = null,  
     this.amountDetails = null,  
     this.firstPaymentAmount = null,  
     this.firstPaymentDateTime = null,  
     this.nextPaymentAmount = null,  
     this.nextPaymentDateTime = null,  
     this.finalPaymentAmount = null,  
     this.finalPaymentDateTime = null,  
     this.createdAt = null,  
     this.previousPaymentAmount = null,  
     this.previousPaymentDateTime = null,  
     this.chargeDetails = const [],  
     this.scheduledPaymentType = null,  
     this.scheduledPaymentDateTime = null,  
     this.frequency = null 
    
    }
  );

  @override
  String toString() {
    return 'PaymentResponse[id=$id, institutionConsentId=$institutionConsentId, paymentIdempotencyId=$paymentIdempotencyId, paymentLifecycleId=$paymentLifecycleId, status=$status, statusDetails=$statusDetails, payeeDetails=$payeeDetails, reference=$reference, amount=$amount, currency=$currency, amountDetails=$amountDetails, firstPaymentAmount=$firstPaymentAmount, firstPaymentDateTime=$firstPaymentDateTime, nextPaymentAmount=$nextPaymentAmount, nextPaymentDateTime=$nextPaymentDateTime, finalPaymentAmount=$finalPaymentAmount, finalPaymentDateTime=$finalPaymentDateTime, createdAt=$createdAt, previousPaymentAmount=$previousPaymentAmount, previousPaymentDateTime=$previousPaymentDateTime, chargeDetails=$chargeDetails, scheduledPaymentType=$scheduledPaymentType, scheduledPaymentDateTime=$scheduledPaymentDateTime, frequency=$frequency, ]';
  }
}

@GenSerializer(nullableFields: true)
class PaymentResponseSerializer extends Serializer<PaymentResponse> with _$PaymentResponseSerializer {

}

