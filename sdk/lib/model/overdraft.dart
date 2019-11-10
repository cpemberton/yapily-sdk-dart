import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:yapily_sdk/model/overdraft_overdraft_tier_band_set.dart';

part 'overdraft.jser.dart';

class Overdraft {
  
  @Alias('Notes', isNullable: false,  )
  final List<String> notes;
  
  @Alias('OverdraftTierBandSet', isNullable: false,  )
  final List<OverdraftOverdraftTierBandSet> overdraftTierBandSet;
  
  @Alias('TcsAndCsURL', isNullable: false,  )
  final String tcsAndCsURL;
  

  Overdraft(
      

{
     this.notes = const [],  
     this.overdraftTierBandSet = const [],  
     this.tcsAndCsURL = null 
    
    }
  );

  @override
  String toString() {
    return 'Overdraft[notes=$notes, overdraftTierBandSet=$overdraftTierBandSet, tcsAndCsURL=$tcsAndCsURL, ]';
  }
}

@GenSerializer(nullableFields: true)
class OverdraftSerializer extends Serializer<Overdraft> with _$OverdraftSerializer {

}

