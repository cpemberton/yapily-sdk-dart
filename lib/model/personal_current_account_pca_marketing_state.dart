part of yapily_sdk.api;

class PersonalCurrentAccountPCAMarketingState {
  
  CoreProduct coreProduct = null;
  

  CreditInterest creditInterest = null;
  

  Eligibility eligibility = null;
  

  DateTime firstMarketedDate = null;
  

  String identification = null;
  

  DateTime lastMarketedDate = null;
  

  String marketingState = null;
  

  List<String> notes = [];
  

  Overdraft overdraft = null;
  

  String predecessorID = null;
  

  double stateTenureLength = null;
  

  String stateTenurePeriod = null;
  
  PersonalCurrentAccountPCAMarketingState();

  @override
  String toString() {
    return 'PersonalCurrentAccountPCAMarketingState[coreProduct=$coreProduct, creditInterest=$creditInterest, eligibility=$eligibility, firstMarketedDate=$firstMarketedDate, identification=$identification, lastMarketedDate=$lastMarketedDate, marketingState=$marketingState, notes=$notes, overdraft=$overdraft, predecessorID=$predecessorID, stateTenureLength=$stateTenureLength, stateTenurePeriod=$stateTenurePeriod, ]';
  }

  PersonalCurrentAccountPCAMarketingState.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    coreProduct =
      
      
      new CoreProduct.fromJson(json['coreProduct'])
;
    creditInterest =
      
      
      new CreditInterest.fromJson(json['creditInterest'])
;
    eligibility =
      
      
      new Eligibility.fromJson(json['eligibility'])
;
    firstMarketedDate = json['firstMarketedDate'] == null ? null : DateTime.parse(json['firstMarketedDate']);
    identification =
        json['identification']
    ;
    lastMarketedDate = json['lastMarketedDate'] == null ? null : DateTime.parse(json['lastMarketedDate']);
    marketingState =
        json['marketingState']
    ;
    notes =
        (json['notes'] as List).map((item) => item as String).toList()
    ;
    overdraft =
      
      
      new Overdraft.fromJson(json['overdraft'])
;
    predecessorID =
        json['predecessorID']
    ;
    stateTenureLength =
        json['stateTenureLength']
    ;
    stateTenurePeriod =
        json['stateTenurePeriod']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'coreProduct': coreProduct,
      'creditInterest': creditInterest,
      'eligibility': eligibility,
      'firstMarketedDate': firstMarketedDate == null ? '' : firstMarketedDate.toUtc().toIso8601String(),
      'identification': identification,
      'lastMarketedDate': lastMarketedDate == null ? '' : lastMarketedDate.toUtc().toIso8601String(),
      'marketingState': marketingState,
      'notes': notes,
      'overdraft': overdraft,
      'predecessorID': predecessorID,
      'stateTenureLength': stateTenureLength,
      'stateTenurePeriod': stateTenurePeriod
     };
  }

  static List<PersonalCurrentAccountPCAMarketingState> listFromJson(List<dynamic> json) {
    return json == null ? new List<PersonalCurrentAccountPCAMarketingState>() : json.map((value) => new PersonalCurrentAccountPCAMarketingState.fromJson(value)).toList();
  }

  static Map<String, PersonalCurrentAccountPCAMarketingState> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PersonalCurrentAccountPCAMarketingState>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PersonalCurrentAccountPCAMarketingState.fromJson(value));
    }
    return map;
  }
}

