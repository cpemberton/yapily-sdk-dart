import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:yapily_sdk/model/account_balance.dart';

import 'package:yapily_sdk/model/account_identification.dart';

import 'package:yapily_sdk/model/account_name.dart';

part 'account.jser.dart';

class Account {
   /* Account Id returned by the institution if present */
  @Alias('id', isNullable: false,  )
  final String id;
  
  @Alias('type', isNullable: false,  )
  final String type;
   /* Product name as defined by the financial institution for this account */
  @Alias('description', isNullable: false,  )
  final String description;
  
  @Alias('balance', isNullable: false,  )
  final num balance;
   /* ISO 4217 currency code */
  @Alias('currency', isNullable: false,  )
  final String currency;
  
  @Alias('usageType', isNullable: false,
          
  )
  final String usageType;
  //enum usageTypeEnum {  PERSONAL,  BUSINESS,  OTHER,  UNKNOWN,  };
  @Alias('accountType', isNullable: false,
          
  )
  final String accountType;
  //enum accountTypeEnum {  CASH_TRADING,  CASH_INCOME,  CASH_PAYMENT,  CHARGE_CARD,  CHARGES,  COMMISSION,  CREDIT_CARD,  CURRENT,  E_MONEY,  LIMITED_LIQUIDITY_SAVINGS_ACCOUNT,  LOAN,  MARGINAL_LENDING,  MONEY_MARKET,  MORTGAGE,  NON_RESIDENT_EXTERNAL,  OTHER,  OVERDRAFT,  OVERNIGHT_DEPOSIT,  PREPAID_CARD,  SALARY,  SAVINGS,  SETTLEMENT,  TAX,  UNKNOWN,  }; /* Name of the account as defined by the financial institution or the end user */
  @Alias('nickname', isNullable: false,  )
  final String nickname;
   /* Specifications that might be provided by the institution - characteristics of the account - characteristics of the relevant card */
  @Alias('details', isNullable: false,  )
  final String details;
  
  @Alias('accountNames', isNullable: false,  )
  final List<AccountName> accountNames;
  
  @Alias('accountIdentifications', isNullable: false,  )
  final List<AccountIdentification> accountIdentifications;
  
  @Alias('accountBalances', isNullable: false,  )
  final List<AccountBalance> accountBalances;
  

  Account(
      

{
     this.id = null,  
     this.type = null,  
     this.description = null,  
     this.balance = null,  
     this.currency = null,  
     this.usageType = null,  
     this.accountType = null,  
     this.nickname = null,  
     this.details = null,  
     this.accountNames = const [],  
     this.accountIdentifications = const [],  
     this.accountBalances = const [] 
    
    }
  );

  @override
  String toString() {
    return 'Account[id=$id, type=$type, description=$description, balance=$balance, currency=$currency, usageType=$usageType, accountType=$accountType, nickname=$nickname, details=$details, accountNames=$accountNames, accountIdentifications=$accountIdentifications, accountBalances=$accountBalances, ]';
  }
}

@GenSerializer(nullableFields: true)
class AccountSerializer extends Serializer<Account> with _$AccountSerializer {

}

