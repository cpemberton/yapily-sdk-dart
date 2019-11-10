import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'merchant.jser.dart';

class Merchant {
  
  @Alias('merchantName', isNullable: false,  )
  final String merchantName;
  
  @Alias('merchantCategoryCode', isNullable: false,  )
  final String merchantCategoryCode;
  

  Merchant(
      

{
     this.merchantName = null,  
     this.merchantCategoryCode = null 
    
    }
  );

  @override
  String toString() {
    return 'Merchant[merchantName=$merchantName, merchantCategoryCode=$merchantCategoryCode, ]';
  }
}

@GenSerializer(nullableFields: true)
class MerchantSerializer extends Serializer<Merchant> with _$MerchantSerializer {

}

