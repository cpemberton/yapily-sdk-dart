part of yapily_sdk.api;

class Account {
  
  num balance = null;
  

  String currency = null;
  

  String description = null;
  

  String id = null;
  

  String type = null;
  
  Account();

  @override
  String toString() {
    return 'Account[balance=$balance, currency=$currency, description=$description, id=$id, type=$type, ]';
  }

  Account.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    balance =
        json['balance']
    ;
    currency =
        json['currency']
    ;
    description =
        json['description']
    ;
    id =
        json['id']
    ;
    type =
        json['type']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'balance': balance,
      'currency': currency,
      'description': description,
      'id': id,
      'type': type
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

