import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'proprietary_bank_transaction_code.jser.dart';

class ProprietaryBankTransactionCode {
  
  @Alias('code', isNullable: false,  )
  final String code;
  
  @Alias('issuer', isNullable: false,  )
  final String issuer;
  

  ProprietaryBankTransactionCode(
      

{
     this.code = null,  
     this.issuer = null 
    
    }
  );

  @override
  String toString() {
    return 'ProprietaryBankTransactionCode[code=$code, issuer=$issuer, ]';
  }
}

@GenSerializer(nullableFields: true)
class ProprietaryBankTransactionCodeSerializer extends Serializer<ProprietaryBankTransactionCode> with _$ProprietaryBankTransactionCodeSerializer {

}

