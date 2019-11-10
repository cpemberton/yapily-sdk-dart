import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:yapily_sdk/model/payment_request.dart';

part 'payment_authorisation_request.jser.dart';

class PaymentAuthorisationRequest {
  
  @Alias('userUuid', isNullable: false,  )
  final String userUuid;
  
  @Alias('applicationUserId', isNullable: false,  )
  final String applicationUserId;
  
  @Alias('forwardParameters', isNullable: false,  )
  final List<String> forwardParameters;
  
  @Alias('institutionId', isNullable: false,  )
  final String institutionId;
  
  @Alias('callback', isNullable: false,  )
  final String callback;
  
  @Alias('oneTimeToken', isNullable: false,  )
  final bool oneTimeToken;
  
  @Alias('paymentRequest', isNullable: false,  )
  final PaymentRequest paymentRequest;
  
  @Alias('totalMaxAmount', isNullable: false,  )
  final num totalMaxAmount;
  
  @Alias('totalMaxAmountFrequency', isNullable: false,
          
  )
  final String totalMaxAmountFrequency;
  //enum totalMaxAmountFrequencyEnum {  DAILY,  WEEKLY,  MONTHLY,  YEARLY,  };
  @Alias('maxAmountPerRequest', isNullable: false,  )
  final num maxAmountPerRequest;
  
  @Alias('startsAt', isNullable: false,  )
  final DateTime startsAt;
  
  @Alias('expiresAt', isNullable: false,  )
  final DateTime expiresAt;
  
  @Alias('allowOverdraft', isNullable: false,  )
  final bool allowOverdraft;
  

  PaymentAuthorisationRequest(
      

{
     this.userUuid = null,  
     this.applicationUserId = null,  
     this.forwardParameters = const [],  
    
     this.institutionId = null,  
     this.callback = null,  
     this.oneTimeToken = null,  
     this.paymentRequest = null,   this.totalMaxAmount = null,  
     this.totalMaxAmountFrequency = null,  
     this.maxAmountPerRequest = null,  
     this.startsAt = null,  
     this.expiresAt = null,  
     this.allowOverdraft = null 
    
    }
  );

  @override
  String toString() {
    return 'PaymentAuthorisationRequest[userUuid=$userUuid, applicationUserId=$applicationUserId, forwardParameters=$forwardParameters, institutionId=$institutionId, callback=$callback, oneTimeToken=$oneTimeToken, paymentRequest=$paymentRequest, totalMaxAmount=$totalMaxAmount, totalMaxAmountFrequency=$totalMaxAmountFrequency, maxAmountPerRequest=$maxAmountPerRequest, startsAt=$startsAt, expiresAt=$expiresAt, allowOverdraft=$allowOverdraft, ]';
  }
}

@GenSerializer(nullableFields: true)
class PaymentAuthorisationRequestSerializer extends Serializer<PaymentAuthorisationRequest> with _$PaymentAuthorisationRequestSerializer {

}

