import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:yapily_sdk/model/residency_eligibility.dart';

import 'package:yapily_sdk/model/eligibility_other_eligibility.dart';

import 'package:yapily_sdk/model/age_eligibility.dart';

import 'package:yapily_sdk/model/credit_check.dart';

import 'package:yapily_sdk/model/id_verification_check.dart';

part 'eligibility.jser.dart';

class Eligibility {
  
  @Alias('AgeEligibility', isNullable: false,  )
  final AgeEligibility ageEligibility;
  
  @Alias('CreditCheck', isNullable: false,  )
  final CreditCheck creditCheck;
  
  @Alias('IDVerificationCheck', isNullable: false,  )
  final IDVerificationCheck iDVerificationCheck;
  
  @Alias('OtherEligibility', isNullable: false,  )
  final List<EligibilityOtherEligibility> otherEligibility;
  
  @Alias('ResidencyEligibility', isNullable: false,  )
  final ResidencyEligibility residencyEligibility;
  

  Eligibility(
      

{
     this.ageEligibility = null,  
     this.creditCheck = null,  
     this.iDVerificationCheck = null,  
     this.otherEligibility = const [],  
     this.residencyEligibility = null 
    
    }
  );

  @override
  String toString() {
    return 'Eligibility[ageEligibility=$ageEligibility, creditCheck=$creditCheck, iDVerificationCheck=$iDVerificationCheck, otherEligibility=$otherEligibility, residencyEligibility=$residencyEligibility, ]';
  }
}

@GenSerializer(nullableFields: true)
class EligibilitySerializer extends Serializer<Eligibility> with _$EligibilitySerializer {

}

