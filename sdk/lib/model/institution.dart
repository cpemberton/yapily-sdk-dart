import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:yapily_sdk/model/country.dart';

import 'package:yapily_sdk/model/monitoring_feature_status.dart';

import 'package:yapily_sdk/model/media.dart';

part 'institution.jser.dart';

class Institution {
  
  @Alias('id', isNullable: false,  )
  final String id;
  
  @Alias('name', isNullable: false,  )
  final String name;
  
  @Alias('fullName', isNullable: false,  )
  final String fullName;
  
  @Alias('countries', isNullable: false,  )
  final List<Country> countries;
  
  @Alias('environmentType', isNullable: false,
          
  )
  final String environmentType;
  //enum environmentTypeEnum {  SANDBOX,  MOCK,  LIVE,  };
  @Alias('credentialsType', isNullable: false,
          
  )
  final String credentialsType;
  //enum credentialsTypeEnum {  OAUTH1,  OAUTH2,  OAUTH2_NOSECRET,  OAUTH2_SIGNATURE,  OPEN_BANKING,  OPEN_BANKING_UK_MANUAL,  OPEN_BANKING_UK_AUTO,  OPEN_BANKING_IBM,  OPEN_BANKING_AUTO,  OPEN_BANKING_MANUAL,  API_KEY,  };
  @Alias('media', isNullable: false,  )
  final List<Media> media;
  
  @Alias('features', isNullable: false,
          
             processor:  const List<String>FieldProcessor(),
          
  )
  final List<String> features;
  //enum featuresEnum {  INITIATE_ACCOUNT_REQUEST,  ACCOUNT_REQUEST_DETAILS,  ACCOUNTS,  ACCOUNT,  ACCOUNT_TRANSACTIONS,  ACCOUNT_STATEMENTS,  ACCOUNT_STATEMENT,  ACCOUNT_STATEMENT_FILE,  ACCOUNT_SCHEDULED_PAYMENTS,  ACCOUNT_DIRECT_DEBITS,  ACCOUNT_PERIODIC_PAYMENTS,  ACCOUNT_TRANSACTIONS_WITH_MERCHANT,  IDENTITY,  INITIATE_SINGLE_PAYMENT_SORTCODE,  EXISTING_PAYMENT_INITIATION_DETAILS,  CREATE_SINGLE_PAYMENT_SORTCODE,  EXISTING_PAYMENTS_DETAILS,  INITIATE_PAYMENT,  CREATE_PAYMENT,  INITIATE_DOMESTIC_VARIABLE_RECURRING_PAYMENT,  CREATE_DOMESTIC_VARIABLE_RECURRING_PAYMENT,  INITIATE_DOMESTIC_SCHEDULED_PAYMENT,  CREATE_DOMESTIC_SCHEDULED_PAYMENT,  INITIATE_DOMESTIC_PERIODIC_PAYMENT,  CREATE_DOMESTIC_PERIODIC_PAYMENT,  PERIODIC_PAYMENT_FREQUENCY_EXTENDED,  INITIATE_INTERNATIONAL_VARIABLE_RECURRING_PAYMENT,  CREATE_INTERNATIONAL_VARIABLE_RECURRING_PAYMENT,  INITIATE_INTERNATIONAL_SCHEDULED_PAYMENT,  CREATE_INTERNATIONAL_SCHEDULED_PAYMENT,  INITIATE_INTERNATIONAL_PERIODIC_PAYMENT_ORDER,  CREATE_INTERNATIONAL_PERIODIC_PAYMENT_ORDER,  INITIATE_INTERNATIONAL_PAYMENT,  CREATE_INTERNATIONAL_PAYMENT,  TRANSFER,  OPEN_DATA_PERSONAL_CURRENT_ACCOUNTS,  OPEN_DATA_ATMS,  };
  @Alias('monitoring', isNullable: false,  )
  final Map<String, MonitoringFeatureStatus> monitoring;
  

  Institution(
      

{
     this.id = null,  
     this.name = null,  
     this.fullName = null,  
     this.countries = const [],  
     this.environmentType = null,  
     this.credentialsType = null,  
     this.media = const [],  
     this.features = const [],  
     this.monitoring = const {} 
    
    }
  );

  @override
  String toString() {
    return 'Institution[id=$id, name=$name, fullName=$fullName, countries=$countries, environmentType=$environmentType, credentialsType=$credentialsType, media=$media, features=$features, monitoring=$monitoring, ]';
  }
}

@GenSerializer(nullableFields: true)
class InstitutionSerializer extends Serializer<Institution> with _$InstitutionSerializer {

}

