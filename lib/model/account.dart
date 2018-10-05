part of yapily_sdk.api;

class Account {
  
  String id = null;
  

  String type = null;
  

  String description = null;
  

  num balance = null;
  

  String currency = null;
  
  Account();

  @override
  String toString() {
    return 'Account[id=$id, type=$type, description=$description, balance=$balance, currency=$currency, ]';
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
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'type': type,
      'description': description,
      'balance': balance,
      'currency': currency
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

