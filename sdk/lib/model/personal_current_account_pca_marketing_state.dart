import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:yapily_sdk/model/core_product.dart';

import 'package:yapily_sdk/model/overdraft.dart';

import 'package:yapily_sdk/model/eligibility.dart';

import 'package:yapily_sdk/model/credit_interest.dart';

part 'personal_current_account_pca_marketing_state.jser.dart';

class PersonalCurrentAccountPCAMarketingState {
  
  @Alias('CoreProduct', isNullable: false,  )
  final CoreProduct coreProduct;
  
  @Alias('CreditInterest', isNullable: false,  )
  final CreditInterest creditInterest;
  
  @Alias('Eligibility', isNullable: false,  )
  final Eligibility eligibility;
  
  @Alias('FirstMarketedDate', isNullable: false,  )
  final DateTime firstMarketedDate;
  
  @Alias('Identification', isNullable: false,  )
  final String identification;
  
  @Alias('LastMarketedDate', isNullable: false,  )
  final DateTime lastMarketedDate;
  
  @Alias('MarketingState', isNullable: false,  )
  final String marketingState;
  
  @Alias('Notes', isNullable: false,  )
  final List<String> notes;
  
  @Alias('Overdraft', isNullable: false,  )
  final Overdraft overdraft;
  
  @Alias('PredecessorID', isNullable: false,  )
  final String predecessorID;
  
  @Alias('StateTenureLength', isNullable: false,  )
  final double stateTenureLength;
  
  @Alias('StateTenurePeriod', isNullable: false,  )
  final String stateTenurePeriod;
  

  PersonalCurrentAccountPCAMarketingState(
      

{
     this.coreProduct = null,  
     this.creditInterest = null,  
     this.eligibility = null,  
     this.firstMarketedDate = null,  
     this.identification = null,  
     this.lastMarketedDate = null,  
     this.marketingState = null,  
     this.notes = const [],  
     this.overdraft = null,  
     this.predecessorID = null,  
     this.stateTenureLength = null,  
     this.stateTenurePeriod = null 
    
    }
  );

  @override
  String toString() {
    return 'PersonalCurrentAccountPCAMarketingState[coreProduct=$coreProduct, creditInterest=$creditInterest, eligibility=$eligibility, firstMarketedDate=$firstMarketedDate, identification=$identification, lastMarketedDate=$lastMarketedDate, marketingState=$marketingState, notes=$notes, overdraft=$overdraft, predecessorID=$predecessorID, stateTenureLength=$stateTenureLength, stateTenurePeriod=$stateTenurePeriod, ]';
  }
}

@GenSerializer(nullableFields: true)
class PersonalCurrentAccountPCAMarketingStateSerializer extends Serializer<PersonalCurrentAccountPCAMarketingState> with _$PersonalCurrentAccountPCAMarketingStateSerializer {

}

