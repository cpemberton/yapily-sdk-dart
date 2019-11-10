import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:yapily_sdk/model/personal_current_account_brand.dart';

part 'personal_current_account_data.jser.dart';

class PersonalCurrentAccountData {
  
  @Alias('Brand', isNullable: false,  )
  final List<PersonalCurrentAccountBrand> brand;
  

  PersonalCurrentAccountData(
      

{
     this.brand = const [] 
    
    }
  );

  @override
  String toString() {
    return 'PersonalCurrentAccountData[brand=$brand, ]';
  }
}

@GenSerializer(nullableFields: true)
class PersonalCurrentAccountDataSerializer extends Serializer<PersonalCurrentAccountData> with _$PersonalCurrentAccountDataSerializer {

}

