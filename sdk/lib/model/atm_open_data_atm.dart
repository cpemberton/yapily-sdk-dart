part of yapily_sdk.api;

class ATMOpenDataATM {
  
  bool access24HoursIndicator = null;
  

  List<String> accessibility = [];
  //enum accessibilityEnum {  AudioCashMachine,  AutomaticDoors,  ExternalRamp,  InductionLoop,  InternalRamp,  LevelAccess,  LowerLevelCounter,  Other,  WheelchairAccess,  };

  ATMBranch branch = null;
  

  String identification = null;
  

  ATMLocation location = null;
  

  String minimumPossibleAmount = null;
  

  String note = null;
  

  List<ATMOpenDataOtherATMServices> otherATMServices = [];
  

  List<ATMOpenDataOtherAccessibility> otherAccessibility = [];
  

  List<String> services = [];
  //enum servicesEnum {  Balance,  BillPayments,  CashDeposits,  CharityDonation,  ChequeDeposits,  CashWithdrawal,  EnvelopeDeposit,  FastCash,  MobileBankingRegistration,  MobilePaymentRegistration,  MobilePhoneTopUp,  OrderStatement,  Other,  PINActivation,  PINChange,  PINUnblock,  MiniStatement,  };

  List<String> supportedCurrencies = [];
  

  List<String> supportedLanguages = [];
  
  ATMOpenDataATM();

  @override
  String toString() {
    return 'ATMOpenDataATM[access24HoursIndicator=$access24HoursIndicator, accessibility=$accessibility, branch=$branch, identification=$identification, location=$location, minimumPossibleAmount=$minimumPossibleAmount, note=$note, otherATMServices=$otherATMServices, otherAccessibility=$otherAccessibility, services=$services, supportedCurrencies=$supportedCurrencies, supportedLanguages=$supportedLanguages, ]';
  }

  ATMOpenDataATM.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    access24HoursIndicator =
        json['access24HoursIndicator']
    ;
    accessibility =
        (json['accessibility'] as List).map((item) => item as String).toList()
    ;
    branch =
      
      
      new ATMBranch.fromJson(json['branch'])
;
    identification =
        json['identification']
    ;
    location =
      
      
      new ATMLocation.fromJson(json['location'])
;
    minimumPossibleAmount =
        json['minimumPossibleAmount']
    ;
    note =
        json['note']
    ;
    otherATMServices =
      ATMOpenDataOtherATMServices.listFromJson(json['otherATMServices'])
;
    otherAccessibility =
      ATMOpenDataOtherAccessibility.listFromJson(json['otherAccessibility'])
;
    services =
        (json['services'] as List).map((item) => item as String).toList()
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
      'access24HoursIndicator': access24HoursIndicator,
      'accessibility': accessibility,
      'branch': branch,
      'identification': identification,
      'location': location,
      'minimumPossibleAmount': minimumPossibleAmount,
      'note': note,
      'otherATMServices': otherATMServices,
      'otherAccessibility': otherAccessibility,
      'services': services,
      'supportedCurrencies': supportedCurrencies,
      'supportedLanguages': supportedLanguages
     };
  }

  static List<ATMOpenDataATM> listFromJson(List<dynamic> json) {
    return json == null ? new List<ATMOpenDataATM>() : json.map((value) => new ATMOpenDataATM.fromJson(value)).toList();
  }

  static Map<String, ATMOpenDataATM> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ATMOpenDataATM>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ATMOpenDataATM.fromJson(value));
    }
    return map;
  }
}

