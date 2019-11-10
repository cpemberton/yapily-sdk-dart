part of yapily_sdk.api;

class InlineResponse2001ATM {
  
  List<String> aTMServices = [];
  //enum aTMServicesEnum {  Balance,  BillPayments,  CashDeposits,  CharityDonation,  ChequeDeposits,  CashWithdrawal,  EnvelopeDeposit,  FastCash,  MobileBankingRegistration,  MobilePaymentRegistration,  MobilePhoneTopUp,  OrderStatement,  Other,  PINActivation,  PINChange,  PINUnblock,  MiniStatement,  };

  bool access24HoursIndicator = null;
  

  List<String> accessibility = [];
  //enum accessibilityEnum {  AudioCashMachine,  AutomaticDoors,  ExternalRamp,  InductionLoop,  InternalRamp,  LevelAccess,  LowerLevelCounter,  Other,  WheelchairAccess,  };

  Branch branch = null;
  

  String identification = null;
  

  Location location = null;
  

  String minimumPossibleAmount = null;
  

  List<String> note = [];
  

  List<InlineResponse2001OtherATMServices> otherATMServices = [];
  

  List<InlineResponse2001OtherAccessibility> otherAccessibility = [];
  

  List<String> supportedCurrencies = [];
  

  List<String> supportedLanguages = [];
  
  InlineResponse2001ATM();

  @override
  String toString() {
    return 'InlineResponse2001ATM[aTMServices=$aTMServices, access24HoursIndicator=$access24HoursIndicator, accessibility=$accessibility, branch=$branch, identification=$identification, location=$location, minimumPossibleAmount=$minimumPossibleAmount, note=$note, otherATMServices=$otherATMServices, otherAccessibility=$otherAccessibility, supportedCurrencies=$supportedCurrencies, supportedLanguages=$supportedLanguages, ]';
  }

  InlineResponse2001ATM.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    aTMServices =
        (json['aTMServices'] as List).map((item) => item as String).toList()
    ;
    access24HoursIndicator =
        json['access24HoursIndicator']
    ;
    accessibility =
        (json['accessibility'] as List).map((item) => item as String).toList()
    ;
    branch =
      
      
      new Branch.fromJson(json['branch'])
;
    identification =
        json['identification']
    ;
    location =
      
      
      new Location.fromJson(json['location'])
;
    minimumPossibleAmount =
        json['minimumPossibleAmount']
    ;
    note =
        (json['note'] as List).map((item) => item as String).toList()
    ;
    otherATMServices =
      InlineResponse2001OtherATMServices.listFromJson(json['otherATMServices'])
;
    otherAccessibility =
      InlineResponse2001OtherAccessibility.listFromJson(json['otherAccessibility'])
;
    supportedCurrencies =
        (json['supportedCurrencies'] as List).map((item) => item as String).toList()
    ;
    supportedLanguages =
        (json['supportedLanguages'] as List).map((item) => item as String).toList()
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'aTMServices': aTMServices,
      'access24HoursIndicator': access24HoursIndicator,
      'accessibility': accessibility,
      'branch': branch,
      'identification': identification,
      'location': location,
      'minimumPossibleAmount': minimumPossibleAmount,
      'note': note,
      'otherATMServices': otherATMServices,
      'otherAccessibility': otherAccessibility,
      'supportedCurrencies': supportedCurrencies,
      'supportedLanguages': supportedLanguages
     };
  }

  static List<InlineResponse2001ATM> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse2001ATM>() : json.map((value) => new InlineResponse2001ATM.fromJson(value)).toList();
  }

  static Map<String, InlineResponse2001ATM> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse2001ATM>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse2001ATM.fromJson(value));
    }
    return map;
  }
}

