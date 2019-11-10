import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:yapily_sdk/model/other_type.dart';

part 'eligibility_other_eligibility.jser.dart';

class EligibilityOtherEligibility {
  
  @Alias('Amount', isNullable: false,  )
  final String amount;
  
  @Alias('Description', isNullable: false,  )
  final String description;
  
  @Alias('Indicator', isNullable: false,  )
  final bool indicator;
  
  @Alias('Name', isNullable: false,  )
  final String name;
  
  @Alias('Notes', isNullable: false,  )
  final List<String> notes;
  
  @Alias('OtherType', isNullable: false,  )
  final OtherType otherType;
  
  @Alias('Period', isNullable: false,
          
  )
  final String period;
  //enum periodEnum {  Day,  Half Year,  Month,  Quarter,  Week,  AcademicTerm,  Year,  };
  @Alias('Textual', isNullable: false,  )
  final String textual;
  
  @Alias('Type', isNullable: false,
          
  )
  final String type;
  //enum typeEnum {  DirectDebits,  ExistingCustomers,  MinimumOperatingBalance,  MinimumDeposit,  NewCustomersOnly,  PreviousBankruptcyAllowed,  Other,  StudentsOnly,  SoleStudentAccount,  SoleUkAccount,  SwitchersOnly,  UCASFulltimeTwoYears,  };

  EligibilityOtherEligibility(
      

{
     this.amount = null,  
     this.description = null,  
     this.indicator = null,  
     this.name = null,  
     this.notes = const [],  
     this.otherType = null,  
     this.period = null,  
     this.textual = null,  
     this.type = null 
    
    }
  );

  @override
  String toString() {
    return 'EligibilityOtherEligibility[amount=$amount, description=$description, indicator=$indicator, name=$name, notes=$notes, otherType=$otherType, period=$period, textual=$textual, type=$type, ]';
  }
}

@GenSerializer(nullableFields: true)
class EligibilityOtherEligibilitySerializer extends Serializer<EligibilityOtherEligibility> with _$EligibilityOtherEligibilitySerializer {

}

