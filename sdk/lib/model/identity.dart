part of yapily_sdk.api;

class Identity {
  
  String id = null;
  

  String firstName = null;
  

  String lastName = null;
  

  String gender = null;
  

  String birthdate = null;
  

  String email = null;
  

  String phone = null;
  

  List<IdentityAddress> addresses = [];
  
  Identity();

  @override
  String toString() {
    return 'Identity[id=$id, firstName=$firstName, lastName=$lastName, gender=$gender, birthdate=$birthdate, email=$email, phone=$phone, addresses=$addresses, ]';
  }

  Identity.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id =
        json['id']
    ;
    firstName =
        json['firstName']
    ;
    lastName =
        json['lastName']
    ;
    gender =
        json['gender']
    ;
    birthdate =
        json['birthdate']
    ;
    email =
        json['email']
    ;
    phone =
        json['phone']
    ;
    addresses =
      IdentityAddress.listFromJson(json['addresses'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'firstName': firstName,
      'lastName': lastName,
      'gender': gender,
      'birthdate': birthdate,
      'email': email,
      'phone': phone,
      'addresses': addresses
     };
  }

  static List<Identity> listFromJson(List<dynamic> json) {
    return json == null ? new List<Identity>() : json.map((value) => new Identity.fromJson(value)).toList();
  }

  static Map<String, Identity> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Identity>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Identity.fromJson(value));
    }
    return map;
  }
}

