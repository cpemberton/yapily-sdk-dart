part of yapily_sdk.api;

class AddressDetails {
  
  String addressLine = null;
  
  AddressDetails();

  @override
  String toString() {
    return 'AddressDetails[addressLine=$addressLine, ]';
  }

  AddressDetails.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    addressLine =
        json['addressLine']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'addressLine': addressLine
     };
  }

  static List<AddressDetails> listFromJson(List<dynamic> json) {
    return json == null ? new List<AddressDetails>() : json.map((value) => new AddressDetails.fromJson(value)).toList();
  }

  static Map<String, AddressDetails> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AddressDetails>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AddressDetails.fromJson(value));
    }
    return map;
  }
}

