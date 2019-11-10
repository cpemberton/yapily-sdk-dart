import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:yapily_sdk/model/merchant_info.dart';

part 'sort_code_payment_request.jser.dart';

class SortCodePaymentRequest {
  
  @Alias('senderAccountId', isNullable: false,  )
  final String senderAccountId;
  
  @Alias('name', isNullable: false,  )
  final String name;
  
  @Alias('amount', isNullable: false,  )
  final num amount;
  
  @Alias('currency', isNullable: false,  )
  final String currency;
  
  @Alias('reference', isNullable: false,  )
  final String reference;
  
  @Alias('country', isNullable: false,  )
  final String country;
  
  @Alias('type', isNullable: false,
          
  )
  final String type;
  //enum typeEnum {  BILL,  GOODS,  SERVICES,  OTHER,  PERSON_TO_PERSON,  };
  @Alias('accountNumber', isNullable: false,  )
  final String accountNumber;
  
  @Alias('sortCode', isNullable: false,  )
  final String sortCode;
  
  @Alias('merchantInfo', isNullable: false,  )
  final MerchantInfo merchantInfo;
  

  SortCodePaymentRequest(
      

{
     this.senderAccountId = null,  
    
     this.name = null,  
     this.amount = null,  
     this.currency = null,  
     this.reference = null,  
     this.country = null,   this.type = null,  
    
     this.accountNumber = null,  
     this.sortCode = null,   this.merchantInfo = null 
    
    }
  );

  @override
  String toString() {
    return 'SortCodePaymentRequest[senderAccountId=$senderAccountId, name=$name, amount=$amount, currency=$currency, reference=$reference, country=$country, type=$type, accountNumber=$accountNumber, sortCode=$sortCode, merchantInfo=$merchantInfo, ]';
  }
}

@GenSerializer(nullableFields: true)
class SortCodePaymentRequestSerializer extends Serializer<SortCodePaymentRequest> with _$SortCodePaymentRequestSerializer {

}

