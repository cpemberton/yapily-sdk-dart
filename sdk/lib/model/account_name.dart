part of yapily_sdk.api;

class AccountName {
  
  String name = null;
  
  AccountName();

  @override
  String toString() {
    return 'AccountName[name=$name, ]';
  }

  AccountName.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name =
        json['name']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name
     };
  }

  static List<AccountName> listFromJson(List<dynamic> json) {
    return json == null ? new List<AccountName>() : json.map((value) => new AccountName.fromJson(value)).toList();
  }

  static Map<String, AccountName> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AccountName>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AccountName.fromJson(value));
    }
    return map;
  }
}

