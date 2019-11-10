import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:yapily_sdk/model/sort_code_payment_request.dart';

part 'sort_code_payment_auth_request.jser.dart';

class SortCodePaymentAuthRequest {
  
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
  final SortCodePaymentRequest paymentRequest;
  

  SortCodePaymentAuthRequest(
      

{
     this.userUuid = null,  
     this.applicationUserId = null,  
     this.forwardParameters = const [],  
    
     this.institutionId = null,  
     this.callback = null,  
     this.oneTimeToken = null,  
     this.paymentRequest = null 
    }
  );

  @override
  String toString() {
    return 'SortCodePaymentAuthRequest[userUuid=$userUuid, applicationUserId=$applicationUserId, forwardParameters=$forwardParameters, institutionId=$institutionId, callback=$callback, oneTimeToken=$oneTimeToken, paymentRequest=$paymentRequest, ]';
  }
}

@GenSerializer(nullableFields: true)
class SortCodePaymentAuthRequestSerializer extends Serializer<SortCodePaymentAuthRequest> with _$SortCodePaymentAuthRequestSerializer {

}

