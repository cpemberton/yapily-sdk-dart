import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:yapily_sdk/model/overdraft_overdraft_tier_band.dart';

import 'package:yapily_sdk/model/overdraft_overdraft_fees_charges1.dart';

part 'overdraft_overdraft_tier_band_set.jser.dart';

class OverdraftOverdraftTierBandSet {
  
  @Alias('AuthorisedIndicator', isNullable: false,  )
  final bool authorisedIndicator;
  
  @Alias('BufferAmount', isNullable: false,  )
  final String bufferAmount;
  
  @Alias('Identification', isNullable: false,  )
  final String identification;
  
  @Alias('MinimumArrangedOverdraftAmount', isNullable: false,  )
  final String minimumArrangedOverdraftAmount;
  
  @Alias('Notes', isNullable: false,  )
  final List<String> notes;
  
  @Alias('OverdraftFeesCharges', isNullable: false,  )
  final List<OverdraftOverdraftFeesCharges1> overdraftFeesCharges;
  
  @Alias('OverdraftTierBand', isNullable: false,  )
  final List<OverdraftOverdraftTierBand> overdraftTierBand;
  
  @Alias('OverdraftType', isNullable: false,
          
  )
  final String overdraftType;
  //enum overdraftTypeEnum {  Committed,  OnDemand,  Other,  };
  @Alias('TierBandMethod', isNullable: false,
          
  )
  final String tierBandMethod;
  //enum tierBandMethodEnum {  Tiered,  Whole,  };

  OverdraftOverdraftTierBandSet(
      

{
     this.authorisedIndicator = null,  
     this.bufferAmount = null,  
     this.identification = null,  
     this.minimumArrangedOverdraftAmount = null,  
     this.notes = const [],  
     this.overdraftFeesCharges = const [],  
     this.overdraftTierBand = const [],  
     this.overdraftType = null,  
     this.tierBandMethod = null 
    
    }
  );

  @override
  String toString() {
    return 'OverdraftOverdraftTierBandSet[authorisedIndicator=$authorisedIndicator, bufferAmount=$bufferAmount, identification=$identification, minimumArrangedOverdraftAmount=$minimumArrangedOverdraftAmount, notes=$notes, overdraftFeesCharges=$overdraftFeesCharges, overdraftTierBand=$overdraftTierBand, overdraftType=$overdraftType, tierBandMethod=$tierBandMethod, ]';
  }
}

@GenSerializer(nullableFields: true)
class OverdraftOverdraftTierBandSetSerializer extends Serializer<OverdraftOverdraftTierBandSet> with _$OverdraftOverdraftTierBandSetSerializer {

}

