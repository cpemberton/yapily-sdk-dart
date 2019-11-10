import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'account_identification.jser.dart';

class AccountIdentification {
  
  @Alias('type', isNullable: false,
          
  )
  final String type;
  //enum typeEnum {  SORT_CODE,  ACCOUNT_NUMBER,  IBAN,  BBAN,  SWIFT,  BIC,  PAN,  MASKED_PAN,  MSISDN,  ABA,  ABA_WIRE,  ABA_ACH,  };
  @Alias('identification', isNullable: false,  )
  final String identification;
  

  AccountIdentification(
      

{
    
     this.type = null,  
     this.identification = null 
    }
  );

  @override
  String toString() {
    return 'AccountIdentification[type=$type, identification=$identification, ]';
  }
}

@GenSerializer(nullableFields: true)
class AccountIdentificationSerializer extends Serializer<AccountIdentification> with _$AccountIdentificationSerializer {

}

