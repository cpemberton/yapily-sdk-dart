import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:yapily_sdk/model/credit_interest_credit_interest_eligibility.dart';

import 'package:yapily_sdk/model/credit_interest_tier_band.dart';

part 'credit_interest_tier_band_set.jser.dart';

class CreditInterestTierBandSet {
  
  @Alias('CalculationMethod', isNullable: false,
          
  )
  final String calculationMethod;
  //enum calculationMethodEnum {  Compound,  SimpleInterest,  };
  @Alias('CreditInterestEligibility', isNullable: false,  )
  final List<CreditInterestCreditInterestEligibility> creditInterestEligibility;
  
  @Alias('Destination', isNullable: false,
          
  )
  final String destination;
  //enum destinationEnum {  PayAway,  SelfCredit,  };
  @Alias('Notes', isNullable: false,  )
  final List<String> notes;
  
  @Alias('TierBand', isNullable: false,  )
  final List<CreditInterestTierBand> tierBand;
  
  @Alias('TierBandMethod', isNullable: false,
          
  )
  final String tierBandMethod;
  //enum tierBandMethodEnum {  Tiered,  Whole,  };

  CreditInterestTierBandSet(
      

{
     this.calculationMethod = null,  
     this.creditInterestEligibility = const [],  
     this.destination = null,  
     this.notes = const [],  
     this.tierBand = const [],  
     this.tierBandMethod = null 
    
    }
  );

  @override
  String toString() {
    return 'CreditInterestTierBandSet[calculationMethod=$calculationMethod, creditInterestEligibility=$creditInterestEligibility, destination=$destination, notes=$notes, tierBand=$tierBand, tierBandMethod=$tierBandMethod, ]';
  }
}

@GenSerializer(nullableFields: true)
class CreditInterestTierBandSetSerializer extends Serializer<CreditInterestTierBandSet> with _$CreditInterestTierBandSetSerializer {

}

