import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:yapily_sdk/model/overdraft_other_fee_type.dart';

part 'overdraft_overdraft_fee_charge_cap.jser.dart';

class OverdraftOverdraftFeeChargeCap {
  
  @Alias('CappingPeriod', isNullable: false,
          
  )
  final String cappingPeriod;
  //enum cappingPeriodEnum {  Day,  Half Year,  Month,  Quarter,  Week,  AcademicTerm,  Year,  };
  @Alias('FeeCapAmount', isNullable: false,  )
  final String feeCapAmount;
  
  @Alias('FeeCapOccurrence', isNullable: false,  )
  final double feeCapOccurrence;
  
  @Alias('FeeType', isNullable: false,
          
             processor:  const List<String>FieldProcessor(),
          
  )
  final List<String> feeType;
  //enum feeTypeEnum {  ArrangedOverdraft,  EmergencyBorrowing,  BorrowingItem,  OverdraftRenewal,  AnnualReview,  OverdraftSetup,  Surcharge,  TempOverdraft,  UnauthorisedBorrowing,  UnauthorisedPaidTrans,  Other,  UnauthorisedUnpaidTrans,  };
  @Alias('MinMaxType', isNullable: false,
          
  )
  final String minMaxType;
  //enum minMaxTypeEnum {  Minimum,  Maximum,  };
  @Alias('Notes', isNullable: false,  )
  final List<String> notes;
  
  @Alias('OtherFeeType', isNullable: false,  )
  final List<OverdraftOtherFeeType> otherFeeType;
  
  @Alias('OverdraftControlIndicator', isNullable: false,  )
  final bool overdraftControlIndicator;
  

  OverdraftOverdraftFeeChargeCap(
      

{
     this.cappingPeriod = null,  
     this.feeCapAmount = null,  
     this.feeCapOccurrence = null,  
     this.feeType = const [],  
     this.minMaxType = null,  
     this.notes = const [],  
     this.otherFeeType = const [],  
     this.overdraftControlIndicator = null 
    
    }
  );

  @override
  String toString() {
    return 'OverdraftOverdraftFeeChargeCap[cappingPeriod=$cappingPeriod, feeCapAmount=$feeCapAmount, feeCapOccurrence=$feeCapOccurrence, feeType=$feeType, minMaxType=$minMaxType, notes=$notes, otherFeeType=$otherFeeType, overdraftControlIndicator=$overdraftControlIndicator, ]';
  }
}

@GenSerializer(nullableFields: true)
class OverdraftOverdraftFeeChargeCapSerializer extends Serializer<OverdraftOverdraftFeeChargeCap> with _$OverdraftOverdraftFeeChargeCapSerializer {

}

