import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'address_details.jser.dart';

class AddressDetails {
  
  @Alias('addressLine', isNullable: false,  )
  final String addressLine;
  

  AddressDetails(
      

{
     this.addressLine = null 
    
    }
  );

  @override
  String toString() {
    return 'AddressDetails[addressLine=$addressLine, ]';
  }
}

@GenSerializer(nullableFields: true)
class AddressDetailsSerializer extends Serializer<AddressDetails> with _$AddressDetailsSerializer {

}

