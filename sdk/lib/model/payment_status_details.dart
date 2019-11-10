import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:yapily_sdk/model/multi_authorisation.dart';

part 'payment_status_details.jser.dart';

class PaymentStatusDetails {
  
  @Alias('status', isNullable: false,
          
  )
  final String status;
  //enum statusEnum {  PENDING,  FAILED,  DECLINED,  COMPLETED,  EXPIRED,  UNKNOWN,  ACTIVE,  INACTIVE,  };
  @Alias('statusReason', isNullable: false,  )
  final String statusReason;
  
  @Alias('statusReasonDescription', isNullable: false,  )
  final String statusReasonDescription;
  
  @Alias('statusUpdateDate', isNullable: false,  )
  final DateTime statusUpdateDate;
  
  @Alias('multiAuthorisationStatus', isNullable: false,  )
  final MultiAuthorisation multiAuthorisationStatus;
  

  PaymentStatusDetails(
      

{
     this.status = null,  
     this.statusReason = null,  
     this.statusReasonDescription = null,  
     this.statusUpdateDate = null,  
     this.multiAuthorisationStatus = null 
    
    }
  );

  @override
  String toString() {
    return 'PaymentStatusDetails[status=$status, statusReason=$statusReason, statusReasonDescription=$statusReasonDescription, statusUpdateDate=$statusUpdateDate, multiAuthorisationStatus=$multiAuthorisationStatus, ]';
  }
}

@GenSerializer(nullableFields: true)
class PaymentStatusDetailsSerializer extends Serializer<PaymentStatusDetails> with _$PaymentStatusDetailsSerializer {

}

