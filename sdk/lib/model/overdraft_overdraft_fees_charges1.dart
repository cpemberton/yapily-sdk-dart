import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:yapily_sdk/model/overdraft_overdraft_fee_charge_cap.dart';

import 'package:yapily_sdk/model/overdraft_overdraft_fee_charge_detail.dart';

part 'overdraft_overdraft_fees_charges1.jser.dart';

class OverdraftOverdraftFeesCharges1 {
  
  @Alias('OverdraftFeeChargeCap', isNullable: false,  )
  final List<OverdraftOverdraftFeeChargeCap> overdraftFeeChargeCap;
  
  @Alias('OverdraftFeeChargeDetail', isNullable: false,  )
  final List<OverdraftOverdraftFeeChargeDetail> overdraftFeeChargeDetail;
  

  OverdraftOverdraftFeesCharges1(
      

{
     this.overdraftFeeChargeCap = const [],  
     this.overdraftFeeChargeDetail = const [] 
    
    }
  );

  @override
  String toString() {
    return 'OverdraftOverdraftFeesCharges1[overdraftFeeChargeCap=$overdraftFeeChargeCap, overdraftFeeChargeDetail=$overdraftFeeChargeDetail, ]';
  }
}

@GenSerializer(nullableFields: true)
class OverdraftOverdraftFeesCharges1Serializer extends Serializer<OverdraftOverdraftFeesCharges1> with _$OverdraftOverdraftFeesCharges1Serializer {

}

