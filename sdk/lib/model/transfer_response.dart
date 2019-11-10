import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'transfer_response.jser.dart';

class TransferResponse {
  
  @Alias('fromAccountId', isNullable: false,  )
  final String fromAccountId;
  
  @Alias('toAccountId', isNullable: false,  )
  final String toAccountId;
  
  @Alias('status', isNullable: false,
          
  )
  final String status;
  //enum statusEnum {  PENDING,  FAILED,  DECLINED,  COMPLETED,  UNKNOWN,  };
  @Alias('createdAt', isNullable: false,  )
  final DateTime createdAt;
  
  @Alias('reference', isNullable: false,  )
  final String reference;
  
  @Alias('balance', isNullable: false,  )
  final num balance;
  
  @Alias('currency', isNullable: false,  )
  final String currency;
  

  TransferResponse(
      

{
     this.fromAccountId = null,  
     this.toAccountId = null,  
     this.status = null,  
     this.createdAt = null,  
     this.reference = null,  
     this.balance = null,  
     this.currency = null 
    
    }
  );

  @override
  String toString() {
    return 'TransferResponse[fromAccountId=$fromAccountId, toAccountId=$toAccountId, status=$status, createdAt=$createdAt, reference=$reference, balance=$balance, currency=$currency, ]';
  }
}

@GenSerializer(nullableFields: true)
class TransferResponseSerializer extends Serializer<TransferResponse> with _$TransferResponseSerializer {

}

