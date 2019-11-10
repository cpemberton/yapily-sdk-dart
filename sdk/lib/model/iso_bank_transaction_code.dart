import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:yapily_sdk/model/iso_code_details.dart';

part 'iso_bank_transaction_code.jser.dart';

class IsoBankTransactionCode {
  
  @Alias('domainCode', isNullable: false,  )
  final IsoCodeDetails domainCode;
  
  @Alias('familyCode', isNullable: false,  )
  final IsoCodeDetails familyCode;
  
  @Alias('subFamilyCode', isNullable: false,  )
  final IsoCodeDetails subFamilyCode;
  

  IsoBankTransactionCode(
      

{
     this.domainCode = null,  
     this.familyCode = null,  
     this.subFamilyCode = null 
    
    }
  );

  @override
  String toString() {
    return 'IsoBankTransactionCode[domainCode=$domainCode, familyCode=$familyCode, subFamilyCode=$subFamilyCode, ]';
  }
}

@GenSerializer(nullableFields: true)
class IsoBankTransactionCodeSerializer extends Serializer<IsoBankTransactionCode> with _$IsoBankTransactionCodeSerializer {

}

