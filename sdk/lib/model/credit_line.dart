import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:yapily_sdk/model/amount.dart';

part 'credit_line.jser.dart';

class CreditLine {
  
  @Alias('type', isNullable: false,
          
  )
  final String type;
  //enum typeEnum {  AVAILABLE,  CREDIT,  EMERGENCY,  PRE_AGREED,  TEMPORARY,  OTHER,  UNKNOWN,  };
  @Alias('creditLineAmount', isNullable: false,  )
  final Amount creditLineAmount;
  

  CreditLine(
      

{
     this.type = null,  
     this.creditLineAmount = null 
    
    }
  );

  @override
  String toString() {
    return 'CreditLine[type=$type, creditLineAmount=$creditLineAmount, ]';
  }
}

@GenSerializer(nullableFields: true)
class CreditLineSerializer extends Serializer<CreditLine> with _$CreditLineSerializer {

}

