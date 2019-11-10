import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:yapily_sdk/model/amount.dart';

import 'package:yapily_sdk/model/credit_line.dart';

part 'account_balance.jser.dart';

class AccountBalance {
  
  @Alias('type', isNullable: false,
          
  )
  final String type;
  //enum typeEnum {  CLOSING_AVAILABLE,  CLOSING_BOOKED,  CLOSING_CLEARED,  EXPECTED,  FORWARD_AVAILABLE,  INFORMATION,  INTERIM_AVAILABLE,  INTERIM_BOOKED,  INTERIM_CLEARED,  OPENING_AVAILABLE,  OPENING_BOOKED,  OPENING_CLEARED,  PREVIOUSLY_CLOSED_BOOKED,  AUTHORISED,  OTHER,  UNKNOWN,  }; /* Timestamp of the last change of the balance amount */
  @Alias('dateTime', isNullable: false,  )
  final DateTime dateTime;
  
  @Alias('balanceAmount', isNullable: false,  )
  final Amount balanceAmount;
   /* Indicates whether or not the credit line is included in the balance */
  @Alias('creditLineIncluded', isNullable: false,  )
  final bool creditLineIncluded;
  
  @Alias('creditLines', isNullable: false,  )
  final List<CreditLine> creditLines;
  

  AccountBalance(
      

{
     this.type = null,  
     this.dateTime = null,  
     this.balanceAmount = null,  
     this.creditLineIncluded = null,  
     this.creditLines = const [] 
    
    }
  );

  @override
  String toString() {
    return 'AccountBalance[type=$type, dateTime=$dateTime, balanceAmount=$balanceAmount, creditLineIncluded=$creditLineIncluded, creditLines=$creditLines, ]';
  }
}

@GenSerializer(nullableFields: true)
class AccountBalanceSerializer extends Serializer<AccountBalance> with _$AccountBalanceSerializer {

}

