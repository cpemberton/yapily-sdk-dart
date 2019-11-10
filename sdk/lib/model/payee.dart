import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:yapily_sdk/model/address.dart';

import 'package:yapily_sdk/model/account_identification.dart';

part 'payee.jser.dart';

class Payee {
  
  @Alias('name', isNullable: false,  )
  final String name;
  
  @Alias('address', isNullable: false,  )
  final Address address;
  
  @Alias('accountIdentifications', isNullable: false,  )
  final List<AccountIdentification> accountIdentifications;
  
  @Alias('merchantCategoryCode', isNullable: false,  )
  final String merchantCategoryCode;
  
  @Alias('merchantId', isNullable: false,  )
  final String merchantId;
  

  Payee(
      

{
    
     this.name = null,   this.address = null,  
    
     this.accountIdentifications = const [],   this.merchantCategoryCode = null,  
     this.merchantId = null 
    
    }
  );

  @override
  String toString() {
    return 'Payee[name=$name, address=$address, accountIdentifications=$accountIdentifications, merchantCategoryCode=$merchantCategoryCode, merchantId=$merchantId, ]';
  }
}

@GenSerializer(nullableFields: true)
class PayeeSerializer extends Serializer<Payee> with _$PayeeSerializer {

}

