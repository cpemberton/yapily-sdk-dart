part of yapily_sdk.api;

class Identity {
  
  List<IdentityAddress> addresses = [];
  

  String birthdate = null;
  

  String email = null;
  

  String firstName = null;
  

  String gender = null;
  

  String id = null;
  

  String lastName = null;
  

  String phone = null;
  
  Identity();

  @override
  String toString() {
    return 'Identity[addresses=$addresses, birthdate=$birthdate, email=$email, firstName=$firstName, gender=$gender, id=$id, lastName=$lastName, phone=$phone, ]';
  }

  Identity.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    addresses =
      IdentityAddress.listFromJson(json['addresses'])
;
    birthdate =
        json['birthdate']
    ;
    email =
        json['email']
    ;
    firstName =
        json['firstName']
    ;
    gender =
        json['gender']
    ;
    id =
        json['id']
    ;
    lastName =
        json['lastName']
    ;
    phone =
        json['phone']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'addresses': addresses,
      'birthdate': birthdate,
      'email': email,
      'firstName': firstName,
      'gender': gender,
      'id': id,
      'lastName': lastName,
      'phone': phone
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

