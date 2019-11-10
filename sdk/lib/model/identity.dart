import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:yapily_sdk/model/identity_address.dart';

part 'identity.jser.dart';

class Identity {
  
  @Alias('id', isNullable: false,  )
  final String id;
  
  @Alias('firstName', isNullable: false,  )
  final String firstName;
  
  @Alias('lastName', isNullable: false,  )
  final String lastName;
  
  @Alias('gender', isNullable: false,  )
  final String gender;
  
  @Alias('birthdate', isNullable: false,  )
  final String birthdate;
  
  @Alias('email', isNullable: false,  )
  final String email;
  
  @Alias('phone', isNullable: false,  )
  final String phone;
  
  @Alias('addresses', isNullable: false,  )
  final List<IdentityAddress> addresses;
  

  Identity(
      

{
     this.id = null,  
     this.firstName = null,  
     this.lastName = null,  
     this.gender = null,  
     this.birthdate = null,  
     this.email = null,  
     this.phone = null,  
     this.addresses = const [] 
    
    }
  );

  @override
  String toString() {
    return 'Identity[id=$id, firstName=$firstName, lastName=$lastName, gender=$gender, birthdate=$birthdate, email=$email, phone=$phone, addresses=$addresses, ]';
  }
}

@GenSerializer(nullableFields: true)
class IdentitySerializer extends Serializer<Identity> with _$IdentitySerializer {

}

