import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:yapily_sdk/model/personal_current_account_pca_marketing_state.dart';

part 'personal_current_account_pca.jser.dart';

class PersonalCurrentAccountPCA {
  
  @Alias('Identification', isNullable: false,  )
  final String identification;
  
  @Alias('Name', isNullable: false,  )
  final String name;
  
  @Alias('PCAMarketingState', isNullable: false,  )
  final List<PersonalCurrentAccountPCAMarketingState> pCAMarketingState;
  
  @Alias('Segment', isNullable: false,  )
  final List<String> segment;
  

  PersonalCurrentAccountPCA(
      

{
     this.identification = null,  
     this.name = null,  
     this.pCAMarketingState = const [],  
     this.segment = const [] 
    
    }
  );

  @override
  String toString() {
    return 'PersonalCurrentAccountPCA[identification=$identification, name=$name, pCAMarketingState=$pCAMarketingState, segment=$segment, ]';
  }
}

@GenSerializer(nullableFields: true)
class PersonalCurrentAccountPCASerializer extends Serializer<PersonalCurrentAccountPCA> with _$PersonalCurrentAccountPCASerializer {

}

