import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:yapily_sdk/model/overdraft_overdraft_fee_charge_cap.dart';

import 'package:yapily_sdk/model/overdraft_overdraft_fee_charge_detail.dart';

part 'overdraft_overdraft_fees_charges.jser.dart';

class OverdraftOverdraftFeesCharges {
  
  @Alias('OverdraftFeeChargeCap', isNullable: false,  )
  final List<OverdraftOverdraftFeeChargeCap> overdraftFeeChargeCap;
  
  @Alias('OverdraftFeeChargeDetail', isNullable: false,  )
  final List<OverdraftOverdraftFeeChargeDetail> overdraftFeeChargeDetail;
  

  OverdraftOverdraftFeesCharges(
      

{
     this.overdraftFeeChargeCap = const [],  
     this.overdraftFeeChargeDetail = const [] 
    
    }
  );

  @override
  String toString() {
    return 'OverdraftOverdraftFeesCharges[overdraftFeeChargeCap=$overdraftFeeChargeCap, overdraftFeeChargeDetail=$overdraftFeeChargeDetail, ]';
  }
}

@GenSerializer(nullableFields: true)
class OverdraftOverdraftFeesChargesSerializer extends Serializer<OverdraftOverdraftFeesCharges> with _$OverdraftOverdraftFeesChargesSerializer {

}

