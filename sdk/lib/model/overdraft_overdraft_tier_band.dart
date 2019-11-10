import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:yapily_sdk/model/overdraft_overdraft_fees_charges.dart';

part 'overdraft_overdraft_tier_band.jser.dart';

class OverdraftOverdraftTierBand {
  
  @Alias('BankGuaranteedIndicator', isNullable: false,  )
  final bool bankGuaranteedIndicator;
  
  @Alias('EAR', isNullable: false,  )
  final String EAR;
  
  @Alias('Identification', isNullable: false,  )
  final String identification;
  
  @Alias('Notes', isNullable: false,  )
  final List<String> notes;
  
  @Alias('OverdraftFeesCharges', isNullable: false,  )
  final List<OverdraftOverdraftFeesCharges> overdraftFeesCharges;
  
  @Alias('OverdraftInterestChargingCoverage', isNullable: false,
          
  )
  final String overdraftInterestChargingCoverage;
  //enum overdraftInterestChargingCoverageEnum {  Tiered,  Whole,  };
  @Alias('TierValueMax', isNullable: false,  )
  final String tierValueMax;
  
  @Alias('TierValueMin', isNullable: false,  )
  final String tierValueMin;
  

  OverdraftOverdraftTierBand(
      

{
     this.bankGuaranteedIndicator = null,  
     this.EAR = null,  
     this.identification = null,  
     this.notes = const [],  
     this.overdraftFeesCharges = const [],  
     this.overdraftInterestChargingCoverage = null,  
     this.tierValueMax = null,  
     this.tierValueMin = null 
    
    }
  );

  @override
  String toString() {
    return 'OverdraftOverdraftTierBand[bankGuaranteedIndicator=$bankGuaranteedIndicator, EAR=$EAR, identification=$identification, notes=$notes, overdraftFeesCharges=$overdraftFeesCharges, overdraftInterestChargingCoverage=$overdraftInterestChargingCoverage, tierValueMax=$tierValueMax, tierValueMin=$tierValueMin, ]';
  }
}

@GenSerializer(nullableFields: true)
class OverdraftOverdraftTierBandSerializer extends Serializer<OverdraftOverdraftTierBand> with _$OverdraftOverdraftTierBandSerializer {

}

