import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:yapily_sdk/model/amount.dart';

part 'balance.jser.dart';

class Balance {
  
  @Alias('type', isNullable: false,
          
  )
  final String type;
  //enum typeEnum {  CLOSING_AVAILABLE,  CLOSING_BOOKED,  CLOSING_CLEARED,  EXPECTED,  FORWARD_AVAILABLE,  INFORMATION,  INTERIM_AVAILABLE,  INTERIM_BOOKED,  INTERIM_CLEARED,  OPENING_AVAILABLE,  OPENING_BOOKED,  OPENING_CLEARED,  PREVIOUSLY_CLOSED_BOOKED,  AUTHORISED,  OTHER,  UNKNOWN,  };
  @Alias('balanceAmount', isNullable: false,  )
  final Amount balanceAmount;
  

  Balance(
      

{
     this.type = null,  
     this.balanceAmount = null 
    
    }
  );

  @override
  String toString() {
    return 'Balance[type=$type, balanceAmount=$balanceAmount, ]';
  }
}

@GenSerializer(nullableFields: true)
class BalanceSerializer extends Serializer<Balance> with _$BalanceSerializer {

}

