import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:yapily_sdk/model/inline_response2001_other_atm_services.dart';

import 'package:yapily_sdk/model/inline_response2001_other_accessibility.dart';

import 'package:yapily_sdk/model/location.dart';

import 'package:yapily_sdk/model/branch.dart';

part 'inline_response2001_atm.jser.dart';

class InlineResponse2001ATM {
  
  @Alias('ATMServices', isNullable: false,
          
             processor:  const List<String>FieldProcessor(),
          
  )
  final List<String> aTMServices;
  //enum aTMServicesEnum {  Balance,  BillPayments,  CashDeposits,  CharityDonation,  ChequeDeposits,  CashWithdrawal,  EnvelopeDeposit,  FastCash,  MobileBankingRegistration,  MobilePaymentRegistration,  MobilePhoneTopUp,  OrderStatement,  Other,  PINActivation,  PINChange,  PINUnblock,  MiniStatement,  };
  @Alias('Access24HoursIndicator', isNullable: false,  )
  final bool access24HoursIndicator;
  
  @Alias('Accessibility', isNullable: false,
          
             processor:  const List<String>FieldProcessor(),
          
  )
  final List<String> accessibility;
  //enum accessibilityEnum {  AudioCashMachine,  AutomaticDoors,  ExternalRamp,  InductionLoop,  InternalRamp,  LevelAccess,  LowerLevelCounter,  Other,  WheelchairAccess,  };
  @Alias('Branch', isNullable: false,  )
  final Branch branch;
  
  @Alias('Identification', isNullable: false,  )
  final String identification;
  
  @Alias('Location', isNullable: false,  )
  final Location location;
  
  @Alias('MinimumPossibleAmount', isNullable: false,  )
  final String minimumPossibleAmount;
  
  @Alias('Note', isNullable: false,  )
  final List<String> note;
  
  @Alias('OtherATMServices', isNullable: false,  )
  final List<InlineResponse2001OtherATMServices> otherATMServices;
  
  @Alias('OtherAccessibility', isNullable: false,  )
  final List<InlineResponse2001OtherAccessibility> otherAccessibility;
  
  @Alias('SupportedCurrencies', isNullable: false,  )
  final List<String> supportedCurrencies;
  
  @Alias('SupportedLanguages', isNullable: false,  )
  final List<String> supportedLanguages;
  

  InlineResponse2001ATM(
      

{
     this.aTMServices = const [],  
     this.access24HoursIndicator = null,  
     this.accessibility = const [],  
     this.branch = null,  
     this.identification = null,  
     this.location = null,  
     this.minimumPossibleAmount = null,  
     this.note = const [],  
     this.otherATMServices = const [],  
     this.otherAccessibility = const [],  
     this.supportedCurrencies = const [],  
     this.supportedLanguages = const [] 
    
    }
  );

  @override
  String toString() {
    return 'InlineResponse2001ATM[aTMServices=$aTMServices, access24HoursIndicator=$access24HoursIndicator, accessibility=$accessibility, branch=$branch, identification=$identification, location=$location, minimumPossibleAmount=$minimumPossibleAmount, note=$note, otherATMServices=$otherATMServices, otherAccessibility=$otherAccessibility, supportedCurrencies=$supportedCurrencies, supportedLanguages=$supportedLanguages, ]';
  }
}

@GenSerializer(nullableFields: true)
class InlineResponse2001ATMSerializer extends Serializer<InlineResponse2001ATM> with _$InlineResponse2001ATMSerializer {

}

