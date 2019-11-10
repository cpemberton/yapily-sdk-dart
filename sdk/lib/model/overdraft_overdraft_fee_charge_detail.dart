import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:yapily_sdk/model/other_fee_type.dart';

import 'package:yapily_sdk/model/other_calculation_frequency.dart';

import 'package:yapily_sdk/model/overdraft_overdraft_fee_charge_cap.dart';

import 'package:yapily_sdk/model/other_fee_rate_type.dart';

import 'package:yapily_sdk/model/other_application_frequency.dart';

part 'overdraft_overdraft_fee_charge_detail.jser.dart';

class OverdraftOverdraftFeeChargeDetail {
  
  @Alias('ApplicationFrequency', isNullable: false,
          
  )
  final String applicationFrequency;
  //enum applicationFrequencyEnum {  AccountClosing,  AccountOpening,  AcademicTerm,  ChargingPeriod,  Daily,  PerItem,  Monthly,  OnAccountAnniversary,  Other,  PerHour,  PerOccurrence,  PerSheet,  PerTransaction,  PerTransactionAmount,  PerTransactionPercentage,  Quarterly,  SixMonthly,  StatementMonthly,  Weekly,  Yearly,  };
  @Alias('CalculationFrequency', isNullable: false,
          
  )
  final String calculationFrequency;
  //enum calculationFrequencyEnum {  AccountClosing,  AccountOpening,  AcademicTerm,  ChargingPeriod,  Daily,  PerItem,  Monthly,  OnAccountAnniversary,  Other,  PerHour,  PerOccurrence,  PerSheet,  PerTransaction,  PerTransactionAmount,  PerTransactionPercentage,  Quarterly,  SixMonthly,  StatementMonthly,  Weekly,  Yearly,  };
  @Alias('FeeAmount', isNullable: false,  )
  final String feeAmount;
  
  @Alias('FeeRate', isNullable: false,  )
  final String feeRate;
  
  @Alias('FeeRateType', isNullable: false,
          
  )
  final String feeRateType;
  //enum feeRateTypeEnum {  LinkedBaseRate,  Gross,  Net,  Other,  };
  @Alias('FeeType', isNullable: false,
          
  )
  final String feeType;
  //enum feeTypeEnum {  ArrangedOverdraft,  EmergencyBorrowing,  BorrowingItem,  OverdraftRenewal,  AnnualReview,  OverdraftSetup,  Surcharge,  TempOverdraft,  UnauthorisedBorrowing,  UnauthorisedPaidTrans,  Other,  UnauthorisedUnpaidTrans,  };
  @Alias('IncrementalBorrowingAmount', isNullable: false,  )
  final String incrementalBorrowingAmount;
  
  @Alias('Notes', isNullable: false,  )
  final List<String> notes;
  
  @Alias('OtherApplicationFrequency', isNullable: false,  )
  final OtherApplicationFrequency otherApplicationFrequency;
  
  @Alias('OtherCalculationFrequency', isNullable: false,  )
  final OtherCalculationFrequency otherCalculationFrequency;
  
  @Alias('OtherFeeRateType', isNullable: false,  )
  final OtherFeeRateType otherFeeRateType;
  
  @Alias('OtherFeeType', isNullable: false,  )
  final OtherFeeType otherFeeType;
  
  @Alias('OverdraftControlIndicator', isNullable: false,  )
  final bool overdraftControlIndicator;
  
  @Alias('OverdraftFeeChargeCap', isNullable: false,  )
  final OverdraftOverdraftFeeChargeCap overdraftFeeChargeCap;
  

  OverdraftOverdraftFeeChargeDetail(
      

{
     this.applicationFrequency = null,  
     this.calculationFrequency = null,  
     this.feeAmount = null,  
     this.feeRate = null,  
     this.feeRateType = null,  
     this.feeType = null,  
     this.incrementalBorrowingAmount = null,  
     this.notes = const [],  
     this.otherApplicationFrequency = null,  
     this.otherCalculationFrequency = null,  
     this.otherFeeRateType = null,  
     this.otherFeeType = null,  
     this.overdraftControlIndicator = null,  
     this.overdraftFeeChargeCap = null 
    
    }
  );

  @override
  String toString() {
    return 'OverdraftOverdraftFeeChargeDetail[applicationFrequency=$applicationFrequency, calculationFrequency=$calculationFrequency, feeAmount=$feeAmount, feeRate=$feeRate, feeRateType=$feeRateType, feeType=$feeType, incrementalBorrowingAmount=$incrementalBorrowingAmount, notes=$notes, otherApplicationFrequency=$otherApplicationFrequency, otherCalculationFrequency=$otherCalculationFrequency, otherFeeRateType=$otherFeeRateType, otherFeeType=$otherFeeType, overdraftControlIndicator=$overdraftControlIndicator, overdraftFeeChargeCap=$overdraftFeeChargeCap, ]';
  }
}

@GenSerializer(nullableFields: true)
class OverdraftOverdraftFeeChargeDetailSerializer extends Serializer<OverdraftOverdraftFeeChargeDetail> with _$OverdraftOverdraftFeeChargeDetailSerializer {

}

