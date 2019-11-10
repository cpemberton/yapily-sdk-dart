import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'account_request.jser.dart';

class AccountRequest {
  
  @Alias('transactionFrom', isNullable: false,  )
  final DateTime transactionFrom;
  
  @Alias('transactionTo', isNullable: false,  )
  final DateTime transactionTo;
  
  @Alias('expiresAt', isNullable: false,  )
  final DateTime expiresAt;
  
  @Alias('featureScope', isNullable: false,
          
             processor:  const List<String>FieldProcessor(),
          
  )
  final List<String> featureScope;
  //enum featureScopeEnum {  INITIATE_ACCOUNT_REQUEST,  ACCOUNT_REQUEST_DETAILS,  ACCOUNTS,  ACCOUNT,  ACCOUNT_TRANSACTIONS,  ACCOUNT_STATEMENTS,  ACCOUNT_STATEMENT,  ACCOUNT_STATEMENT_FILE,  ACCOUNT_SCHEDULED_PAYMENTS,  ACCOUNT_DIRECT_DEBITS,  ACCOUNT_PERIODIC_PAYMENTS,  ACCOUNT_TRANSACTIONS_WITH_MERCHANT,  IDENTITY,  INITIATE_SINGLE_PAYMENT_SORTCODE,  EXISTING_PAYMENT_INITIATION_DETAILS,  CREATE_SINGLE_PAYMENT_SORTCODE,  EXISTING_PAYMENTS_DETAILS,  INITIATE_PAYMENT,  CREATE_PAYMENT,  INITIATE_DOMESTIC_VARIABLE_RECURRING_PAYMENT,  CREATE_DOMESTIC_VARIABLE_RECURRING_PAYMENT,  INITIATE_DOMESTIC_SCHEDULED_PAYMENT,  CREATE_DOMESTIC_SCHEDULED_PAYMENT,  INITIATE_DOMESTIC_PERIODIC_PAYMENT,  CREATE_DOMESTIC_PERIODIC_PAYMENT,  PERIODIC_PAYMENT_FREQUENCY_EXTENDED,  INITIATE_INTERNATIONAL_VARIABLE_RECURRING_PAYMENT,  CREATE_INTERNATIONAL_VARIABLE_RECURRING_PAYMENT,  INITIATE_INTERNATIONAL_SCHEDULED_PAYMENT,  CREATE_INTERNATIONAL_SCHEDULED_PAYMENT,  INITIATE_INTERNATIONAL_PERIODIC_PAYMENT_ORDER,  CREATE_INTERNATIONAL_PERIODIC_PAYMENT_ORDER,  INITIATE_INTERNATIONAL_PAYMENT,  CREATE_INTERNATIONAL_PAYMENT,  TRANSFER,  OPEN_DATA_PERSONAL_CURRENT_ACCOUNTS,  OPEN_DATA_ATMS,  };

  AccountRequest(
      

{
     this.transactionFrom = null,  
     this.transactionTo = null,  
     this.expiresAt = null,  
     this.featureScope = const [] 
    
    }
  );

  @override
  String toString() {
    return 'AccountRequest[transactionFrom=$transactionFrom, transactionTo=$transactionTo, expiresAt=$expiresAt, featureScope=$featureScope, ]';
  }
}

@GenSerializer(nullableFields: true)
class AccountRequestSerializer extends Serializer<AccountRequest> with _$AccountRequestSerializer {

}

