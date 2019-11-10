import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'transfer_request.jser.dart';

class TransferRequest {
  
  @Alias('accountId', isNullable: false,  )
  final String accountId;
  
  @Alias('amount', isNullable: false,  )
  final num amount;
  
  @Alias('currency', isNullable: false,  )
  final String currency;
  
  @Alias('reference', isNullable: false,  )
  final String reference;
  
  @Alias('transferReferenceId', isNullable: false,  )
  final String transferReferenceId;
  

  TransferRequest(
      

{
     this.accountId = null,  
     this.amount = null,  
     this.currency = null,  
     this.reference = null,  
     this.transferReferenceId = null 
    
    }
  );

  @override
  String toString() {
    return 'TransferRequest[accountId=$accountId, amount=$amount, currency=$currency, reference=$reference, transferReferenceId=$transferReferenceId, ]';
  }
}

@GenSerializer(nullableFields: true)
class TransferRequestSerializer extends Serializer<TransferRequest> with _$TransferRequestSerializer {

}

