import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'consent.jser.dart';

class Consent {
  
  @Alias('id', isNullable: false,  )
  final String id;
  
  @Alias('userUuid', isNullable: false,  )
  final String userUuid;
  
  @Alias('applicationUserId', isNullable: false,  )
  final String applicationUserId;
  
  @Alias('referenceId', isNullable: false,  )
  final String referenceId;
  
  @Alias('institutionId', isNullable: false,  )
  final String institutionId;
  
  @Alias('status', isNullable: false,
          
  )
  final String status;
  //enum statusEnum {  AWAITING_AUTHORIZATION,  AWAITING_FURTHER_AUTHORIZATION,  AWAITING_RE_AUTHORIZATION,  AUTHORIZED,  CONSUMED,  REJECTED,  REVOKED,  FAILED,  EXPIRED,  UNKNOWN,  INVALID,  };
  @Alias('createdAt', isNullable: false,  )
  final DateTime createdAt;
  
  @Alias('transactionFrom', isNullable: false,  )
  final DateTime transactionFrom;
  
  @Alias('transactionTo', isNullable: false,  )
  final DateTime transactionTo;
  
  @Alias('expiresAt', isNullable: false,  )
  final DateTime expiresAt;
   /* Deprecated. Use `timeToExpire` instead. */
  @Alias('timeToExpireInMillis', isNullable: false,  )
  final int timeToExpireInMillis;
   /* ISO 8601 duration */
  @Alias('timeToExpire', isNullable: false,  )
  final String timeToExpire;
  
  @Alias('featureScope', isNullable: false,
          
             processor:  const List<String>FieldProcessor(),
          
  )
  final List<String> featureScope;
  //enum featureScopeEnum {  INITIATE_ACCOUNT_REQUEST,  ACCOUNT_REQUEST_DETAILS,  ACCOUNTS,  ACCOUNT,  ACCOUNT_TRANSACTIONS,  ACCOUNT_STATEMENTS,  ACCOUNT_STATEMENT,  ACCOUNT_STATEMENT_FILE,  ACCOUNT_SCHEDULED_PAYMENTS,  ACCOUNT_DIRECT_DEBITS,  ACCOUNT_PERIODIC_PAYMENTS,  ACCOUNT_TRANSACTIONS_WITH_MERCHANT,  IDENTITY,  INITIATE_SINGLE_PAYMENT_SORTCODE,  EXISTING_PAYMENT_INITIATION_DETAILS,  CREATE_SINGLE_PAYMENT_SORTCODE,  EXISTING_PAYMENTS_DETAILS,  INITIATE_PAYMENT,  CREATE_PAYMENT,  INITIATE_DOMESTIC_VARIABLE_RECURRING_PAYMENT,  CREATE_DOMESTIC_VARIABLE_RECURRING_PAYMENT,  INITIATE_DOMESTIC_SCHEDULED_PAYMENT,  CREATE_DOMESTIC_SCHEDULED_PAYMENT,  INITIATE_DOMESTIC_PERIODIC_PAYMENT,  CREATE_DOMESTIC_PERIODIC_PAYMENT,  PERIODIC_PAYMENT_FREQUENCY_EXTENDED,  INITIATE_INTERNATIONAL_VARIABLE_RECURRING_PAYMENT,  CREATE_INTERNATIONAL_VARIABLE_RECURRING_PAYMENT,  INITIATE_INTERNATIONAL_SCHEDULED_PAYMENT,  CREATE_INTERNATIONAL_SCHEDULED_PAYMENT,  INITIATE_INTERNATIONAL_PERIODIC_PAYMENT_ORDER,  CREATE_INTERNATIONAL_PERIODIC_PAYMENT_ORDER,  INITIATE_INTERNATIONAL_PAYMENT,  CREATE_INTERNATIONAL_PAYMENT,  TRANSFER,  OPEN_DATA_PERSONAL_CURRENT_ACCOUNTS,  OPEN_DATA_ATMS,  };
  @Alias('startsAt', isNullable: false,  )
  final DateTime startsAt;
  
  @Alias('totalMaxAmount', isNullable: false,  )
  final num totalMaxAmount;
  
  @Alias('maxAmountPerRequest', isNullable: false,  )
  final num maxAmountPerRequest;
  
  @Alias('allowOverdraft', isNullable: false,  )
  final bool allowOverdraft;
  
  @Alias('consentToken', isNullable: false,  )
  final String consentToken;
  

  Consent(
      

{
     this.id = null,  
     this.userUuid = null,  
     this.applicationUserId = null,  
     this.referenceId = null,  
     this.institutionId = null,  
     this.status = null,  
     this.createdAt = null,  
     this.transactionFrom = null,  
     this.transactionTo = null,  
     this.expiresAt = null,  
     this.timeToExpireInMillis = null,  
     this.timeToExpire = null,  
     this.featureScope = const [],  
     this.startsAt = null,  
     this.totalMaxAmount = null,  
     this.maxAmountPerRequest = null,  
     this.allowOverdraft = null,  
     this.consentToken = null 
    
    }
  );

  @override
  String toString() {
    return 'Consent[id=$id, userUuid=$userUuid, applicationUserId=$applicationUserId, referenceId=$referenceId, institutionId=$institutionId, status=$status, createdAt=$createdAt, transactionFrom=$transactionFrom, transactionTo=$transactionTo, expiresAt=$expiresAt, timeToExpireInMillis=$timeToExpireInMillis, timeToExpire=$timeToExpire, featureScope=$featureScope, startsAt=$startsAt, totalMaxAmount=$totalMaxAmount, maxAmountPerRequest=$maxAmountPerRequest, allowOverdraft=$allowOverdraft, consentToken=$consentToken, ]';
  }
}

@GenSerializer(nullableFields: true)
class ConsentSerializer extends Serializer<Consent> with _$ConsentSerializer {

}

