import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:yapily_sdk/model/address.dart';

part 'merchant_info.jser.dart';

class MerchantInfo {
  
  @Alias('categoryCode', isNullable: false,  )
  final String categoryCode;
  
  @Alias('customerId', isNullable: false,  )
  final String customerId;
  
  @Alias('address', isNullable: false,  )
  final Address address;
  

  MerchantInfo(
      

{
    
     this.categoryCode = null,  
     this.customerId = null,  
     this.address = null 
    }
  );

  @override
  String toString() {
    return 'MerchantInfo[categoryCode=$categoryCode, customerId=$customerId, address=$address, ]';
  }
}

@GenSerializer(nullableFields: true)
class MerchantInfoSerializer extends Serializer<MerchantInfo> with _$MerchantInfoSerializer {

}

