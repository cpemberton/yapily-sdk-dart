import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:yapily_sdk/model/credit_interest_tier_band_set.dart';

part 'credit_interest.jser.dart';

class CreditInterest {
  
  @Alias('TierBandSet', isNullable: false,  )
  final List<CreditInterestTierBandSet> tierBandSet;
  

  CreditInterest(
      

{
     this.tierBandSet = const [] 
    
    }
  );

  @override
  String toString() {
    return 'CreditInterest[tierBandSet=$tierBandSet, ]';
  }
}

@GenSerializer(nullableFields: true)
class CreditInterestSerializer extends Serializer<CreditInterest> with _$CreditInterestSerializer {

}

