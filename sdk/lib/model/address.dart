import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'address.jser.dart';

class Address {
  
  @Alias('addressLines', isNullable: false,  )
  final List<String> addressLines;
  
  @Alias('streetName', isNullable: false,  )
  final String streetName;
  
  @Alias('buildingNumber', isNullable: false,  )
  final String buildingNumber;
  
  @Alias('postCode', isNullable: false,  )
  final String postCode;
  
  @Alias('townName', isNullable: false,  )
  final String townName;
  
  @Alias('county', isNullable: false,  )
  final List<String> county;
  
  @Alias('addressType', isNullable: false,
          
  )
  final String addressType;
  //enum addressTypeEnum {  BUSINESS,  CORRESPONDENCE,  DELIVERY_TO,  MAIL_TO,  PO_BOX,  POSTAL,  RESIDENTIAL,  STATEMENT,  UNKNOWN,  };
  @Alias('country', isNullable: false,  )
  final String country;
  
  @Alias('department', isNullable: false,  )
  final String department;
  
  @Alias('subDepartment', isNullable: false,  )
  final String subDepartment;
  

  Address(
      

{
     this.addressLines = const [],  
     this.streetName = null,  
     this.buildingNumber = null,  
     this.postCode = null,  
     this.townName = null,  
     this.county = const [],  
     this.addressType = null,  
     this.country = null,  
     this.department = null,  
     this.subDepartment = null 
    
    }
  );

  @override
  String toString() {
    return 'Address[addressLines=$addressLines, streetName=$streetName, buildingNumber=$buildingNumber, postCode=$postCode, townName=$townName, county=$county, addressType=$addressType, country=$country, department=$department, subDepartment=$subDepartment, ]';
  }
}

@GenSerializer(nullableFields: true)
class AddressSerializer extends Serializer<Address> with _$AddressSerializer {

}

