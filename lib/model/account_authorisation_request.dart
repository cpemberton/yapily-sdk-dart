part of yapily_sdk.api;

class AccountAuthorisationRequest {
  
  String userUuid = null;
  

  String institutionId = null;
  

  String callback = null;
  

  AccountRequest accountRequest = null;
  
  AccountAuthorisationRequest();

  @override
  String toString() {
    return 'AccountAuthorisationRequest[userUuid=$userUuid, institutionId=$institutionId, callback=$callback, accountRequest=$accountRequest, ]';
  }

  AccountAuthorisationRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    userUuid =
        json['userUuid']
    ;
    institutionId =
        json['institutionId']
    ;
    callback =
        json['callback']
    ;
    accountRequest =
      
      
      new AccountRequest.fromJson(json['accountRequest'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'userUuid': userUuid,
      'institutionId': institutionId,
      'callback': callback,
      'accountRequest': accountRequest
     };
  }

  static List<AccountAuthorisationRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<AccountAuthorisationRequest>() : json.map((value) => new AccountAuthorisationRequest.fromJson(value)).toList();
  }

  static Map<String, AccountAuthorisationRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AccountAuthorisationRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AccountAuthorisationRequest.fromJson(value));
    }
    return map;
  }
}

