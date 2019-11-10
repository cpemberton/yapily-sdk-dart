import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'amount.jser.dart';

class Amount {
  
  @Alias('amount', isNullable: false,  )
  final num amount;
   /* ISO 4217 currency code */
  @Alias('currency', isNullable: false,  )
  final String currency;
  

  Amount(
      

{
    
     this.amount = null,  
     this.currency = null 
    }
  );

  @override
  String toString() {
    return 'Amount[amount=$amount, currency=$currency, ]';
  }
}

@GenSerializer(nullableFields: true)
class AmountSerializer extends Serializer<Amount> with _$AmountSerializer {

}

