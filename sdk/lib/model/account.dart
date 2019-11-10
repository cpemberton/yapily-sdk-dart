part of yapily_sdk.api;

class Account {
  /* Account Id returned by the institution if present */
  String id = null;
  

  String type = null;
  
/* Product name as defined by the financial institution for this account */
  String description = null;
  

  num balance = null;
  
/* ISO 4217 currency code */
  String currency = null;
  

  String usageType = null;
  //enum usageTypeEnum {  PERSONAL,  BUSINESS,  OTHER,  UNKNOWN,  };

  String accountType = null;
  //enum accountTypeEnum {  CASH_TRADING,  CASH_INCOME,  CASH_PAYMENT,  CHARGE_CARD,  CHARGES,  COMMISSION,  CREDIT_CARD,  CURRENT,  E_MONEY,  LIMITED_LIQUIDITY_SAVINGS_ACCOUNT,  LOAN,  MARGINAL_LENDING,  MONEY_MARKET,  MORTGAGE,  NON_RESIDENT_EXTERNAL,  OTHER,  OVERDRAFT,  OVERNIGHT_DEPOSIT,  PREPAID_CARD,  SALARY,  SAVINGS,  SETTLEMENT,  TAX,  UNKNOWN,  };
/* Name of the account as defined by the financial institution or the end user */
  String nickname = null;
  
/* Specifications that might be provided by the institution - characteristics of the account - characteristics of the relevant card */
  String details = null;
  

  List<AccountName> accountNames = [];
  

  List<AccountIdentification> accountIdentifications = [];
  

  List<AccountBalance> accountBalances = [];
  
  Account();

  @override
  String toString() {
    return 'Account[id=$id, type=$type, description=$description, balance=$balance, currency=$currency, usageType=$usageType, accountType=$accountType, nickname=$nickname, details=$details, accountNames=$accountNames, accountIdentifications=$accountIdentifications, accountBalances=$accountBalances, ]';
  }

  Account.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id =
        json['id']
    ;
    type =
        json['type']
    ;
    description =
        json['description']
    ;
    balance =
        json['balance']
    ;
    currency =
        json['currency']
    ;
    usageType =
        json['usageType']
    ;
    accountType =
        json['accountType']
    ;
    nickname =
        json['nickname']
    ;
    details =
        json['details']
    ;
    accountNames =
      AccountName.listFromJson(json['accountNames'])
;
    accountIdentifications =
      AccountIdentification.listFromJson(json['accountIdentifications'])
;
    accountBalances =
      AccountBalance.listFromJson(json['accountBalances'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'type': type,
      'description': description,
      'balance': balance,
      'currency': currency,
      'usageType': usageType,
      'accountType': accountType,
      'nickname': nickname,
      'details': details,
      'accountNames': accountNames,
      'accountIdentifications': accountIdentifications,
      'accountBalances': accountBalances
     };
  }

  static List<Account> listFromJson(List<dynamic> json) {
    return json == null ? new List<Account>() : json.map((value) => new Account.fromJson(value)).toList();
  }

  static Map<String, Account> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Account>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Account.fromJson(value));
    }
    return map;
  }
}

