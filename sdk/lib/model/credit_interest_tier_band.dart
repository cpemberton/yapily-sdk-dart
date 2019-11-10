import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:yapily_sdk/model/other_calculation_frequency.dart';

import 'package:yapily_sdk/model/other_bank_interest_type.dart';

import 'package:yapily_sdk/model/other_application_frequency.dart';

part 'credit_interest_tier_band.jser.dart';

class CreditInterestTierBand {
  
  @Alias('AER', isNullable: false,  )
  final String AER;
  
  @Alias('ApplicationFrequency', isNullable: false,
          
  )
  final String applicationFrequency;
  //enum applicationFrequencyEnum {  PerAcademicTerm,  Daily,  HalfYearly,  Monthly,  Other,  Quarterly,  PerStatementDate,  Weekly,  Yearly,  };
  @Alias('BankInterestRate', isNullable: false,  )
  final String bankInterestRate;
  
  @Alias('BankInterestRateType', isNullable: false,
          
  )
  final String bankInterestRateType;
  //enum bankInterestRateTypeEnum {  LinkedBaseRate,  Gross,  Net,  Other,  };
  @Alias('CalculationFrequency', isNullable: false,
          
  )
  final String calculationFrequency;
  //enum calculationFrequencyEnum {  PerAcademicTerm,  Daily,  HalfYearly,  Monthly,  Other,  Quarterly,  PerStatementDate,  Weekly,  Yearly,  };
  @Alias('DepositInterestAppliedCoverage', isNullable: false,
          
  )
  final String depositInterestAppliedCoverage;
  //enum depositInterestAppliedCoverageEnum {  Tiered,  Whole,  };
  @Alias('FixedVariableInterestRateType', isNullable: false,
          
  )
  final String fixedVariableInterestRateType;
  //enum fixedVariableInterestRateTypeEnum {  Fixed,  Variable,  };
  @Alias('Identification', isNullable: false,  )
  final String identification;
  
  @Alias('Notes', isNullable: false,  )
  final List<String> notes;
  
  @Alias('OtherApplicationFrequency', isNullable: false,  )
  final OtherApplicationFrequency otherApplicationFrequency;
  
  @Alias('OtherBankInterestType', isNullable: false,  )
  final OtherBankInterestType otherBankInterestType;
  
  @Alias('OtherCalculationFrequency', isNullable: false,  )
  final OtherCalculationFrequency otherCalculationFrequency;
  
  @Alias('TierValueMaximum', isNullable: false,  )
  final String tierValueMaximum;
  
  @Alias('TierValueMinimum', isNullable: false,  )
  final String tierValueMinimum;
  

  CreditInterestTierBand(
      

{
     this.AER = null,  
     this.applicationFrequency = null,  
     this.bankInterestRate = null,  
     this.bankInterestRateType = null,  
     this.calculationFrequency = null,  
     this.depositInterestAppliedCoverage = null,  
     this.fixedVariableInterestRateType = null,  
     this.identification = null,  
     this.notes = const [],  
     this.otherApplicationFrequency = null,  
     this.otherBankInterestType = null,  
     this.otherCalculationFrequency = null,  
     this.tierValueMaximum = null,  
     this.tierValueMinimum = null 
    
    }
  );

  @override
  String toString() {
    return 'CreditInterestTierBand[AER=$AER, applicationFrequency=$applicationFrequency, bankInterestRate=$bankInterestRate, bankInterestRateType=$bankInterestRateType, calculationFrequency=$calculationFrequency, depositInterestAppliedCoverage=$depositInterestAppliedCoverage, fixedVariableInterestRateType=$fixedVariableInterestRateType, identification=$identification, notes=$notes, otherApplicationFrequency=$otherApplicationFrequency, otherBankInterestType=$otherBankInterestType, otherCalculationFrequency=$otherCalculationFrequency, tierValueMaximum=$tierValueMaximum, tierValueMinimum=$tierValueMinimum, ]';
  }
}

@GenSerializer(nullableFields: true)
class CreditInterestTierBandSerializer extends Serializer<CreditInterestTierBand> with _$CreditInterestTierBandSerializer {

}

