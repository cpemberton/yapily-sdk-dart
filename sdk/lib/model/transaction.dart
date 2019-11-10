import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:yapily_sdk/model/currency_exchange.dart';

import 'package:yapily_sdk/model/amount.dart';

import 'package:yapily_sdk/model/balance.dart';

import 'package:yapily_sdk/model/statement_reference.dart';

import 'package:yapily_sdk/model/proprietary_bank_transaction_code.dart';

import 'package:yapily_sdk/model/address_details.dart';

import 'package:yapily_sdk/model/merchant.dart';

import 'package:yapily_sdk/model/iso_bank_transaction_code.dart';

import 'package:yapily_sdk/model/charge_details.dart';

part 'transaction.jser.dart';

class Transaction {
   /* Transaction Id returned by the institution if present */
  @Alias('id', isNullable: false,  )
  final String id;
   /* Transaction date as defined by the institution */
  @Alias('date', isNullable: false,  )
  final DateTime date;
   /* Date and (if available) time that transaction is posted */
  @Alias('bookingDateTime', isNullable: false,  )
  final DateTime bookingDateTime;
   /* The actual or expected date and time transaction is cleared */
  @Alias('valueDateTime', isNullable: false,  )
  final DateTime valueDateTime;
   /* The status of the transaction */
  @Alias('status', isNullable: false,
          
  )
  final String status;
  //enum statusEnum {  ACCOUNT_CHECK,  BOOKED,  DECLINED,  PENDING,  REFUNDED,  RETRYING,  REVERSED,  UPCOMING,  }; /* Deprecated. Use the amount value in `transactionAmount` instead */
  @Alias('amount', isNullable: false,  )
  final num amount;
   /* Deprecated. Use the currency value in `transactionAmount` instead */
  @Alias('currency', isNullable: false,  )
  final String currency;
  
  @Alias('transactionAmount', isNullable: false,  )
  final Amount transactionAmount;
  
  @Alias('currencyExchange', isNullable: false,  )
  final CurrencyExchange currencyExchange;
  
  @Alias('chargeDetails', isNullable: false,  )
  final ChargeDetails chargeDetails;
   /* Transaction reference */
  @Alias('reference', isNullable: false,  )
  final String reference;
  
  @Alias('statementReferences', isNullable: false,  )
  final List<StatementReference> statementReferences;
   /* Unstructured text containing details of the transaction. Usage varies according to the institution */
  @Alias('description', isNullable: false,  )
  final String description;
   /* Further information related to the transaction. Usage varies according to the institution */
  @Alias('transactionInformation', isNullable: false,  )
  final List<String> transactionInformation;
  
  @Alias('addressDetails', isNullable: false,  )
  final AddressDetails addressDetails;
  
  @Alias('isoBankTransactionCode', isNullable: false,  )
  final IsoBankTransactionCode isoBankTransactionCode;
  
  @Alias('proprietaryBankTransactionCode', isNullable: false,  )
  final ProprietaryBankTransactionCode proprietaryBankTransactionCode;
  
  @Alias('balance', isNullable: false,  )
  final Balance balance;
  
  @Alias('merchant', isNullable: false,  )
  final Merchant merchant;
  

  Transaction(
      

{
     this.id = null,  
     this.date = null,  
     this.bookingDateTime = null,  
     this.valueDateTime = null,  
     this.status = null,  
     this.amount = null,  
     this.currency = null,  
     this.transactionAmount = null,  
     this.currencyExchange = null,  
     this.chargeDetails = null,  
     this.reference = null,  
     this.statementReferences = const [],  
     this.description = null,  
     this.transactionInformation = const [],  
     this.addressDetails = null,  
     this.isoBankTransactionCode = null,  
     this.proprietaryBankTransactionCode = null,  
     this.balance = null,  
     this.merchant = null 
    
    }
  );

  @override
  String toString() {
    return 'Transaction[id=$id, date=$date, bookingDateTime=$bookingDateTime, valueDateTime=$valueDateTime, status=$status, amount=$amount, currency=$currency, transactionAmount=$transactionAmount, currencyExchange=$currencyExchange, chargeDetails=$chargeDetails, reference=$reference, statementReferences=$statementReferences, description=$description, transactionInformation=$transactionInformation, addressDetails=$addressDetails, isoBankTransactionCode=$isoBankTransactionCode, proprietaryBankTransactionCode=$proprietaryBankTransactionCode, balance=$balance, merchant=$merchant, ]';
  }
}

@GenSerializer(nullableFields: true)
class TransactionSerializer extends Serializer<Transaction> with _$TransactionSerializer {

}

