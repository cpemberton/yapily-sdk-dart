import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'identity_address.jser.dart';

class IdentityAddress {
  
  @Alias('addressLines', isNullable: false,  )
  final List<String> addressLines;
  
  @Alias('city', isNullable: false,  )
  final String city;
  
  @Alias('country', isNullable: false,  )
  final String country;
  
  @Alias('postalCode', isNullable: false,  )
  final String postalCode;
  

  IdentityAddress(
      

{
     this.addressLines = const [],  
     this.city = null,  
     this.country = null,  
     this.postalCode = null 
    
    }
  );

  @override
  String toString() {
    return 'IdentityAddress[addressLines=$addressLines, city=$city, country=$country, postalCode=$postalCode, ]';
  }
}

@GenSerializer(nullableFields: true)
class IdentityAddressSerializer extends Serializer<IdentityAddress> with _$IdentityAddressSerializer {

}

