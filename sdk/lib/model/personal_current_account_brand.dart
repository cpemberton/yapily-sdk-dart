import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:yapily_sdk/model/personal_current_account_pca.dart';

part 'personal_current_account_brand.jser.dart';

class PersonalCurrentAccountBrand {
  
  @Alias('BrandName', isNullable: false,  )
  final String brandName;
  
  @Alias('PCA', isNullable: false,  )
  final List<PersonalCurrentAccountPCA> PCA;
  

  PersonalCurrentAccountBrand(
      

{
     this.brandName = null,  
     this.PCA = const [] 
    
    }
  );

  @override
  String toString() {
    return 'PersonalCurrentAccountBrand[brandName=$brandName, PCA=$PCA, ]';
  }
}

@GenSerializer(nullableFields: true)
class PersonalCurrentAccountBrandSerializer extends Serializer<PersonalCurrentAccountBrand> with _$PersonalCurrentAccountBrandSerializer {

}

