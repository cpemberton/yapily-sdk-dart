import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:yapily_sdk/model/personal_current_account_data.dart';

import 'package:yapily_sdk/model/response_meta.dart';

part 'api_response_of_list_of_personal_current_account_data.jser.dart';

class ApiResponseOfListOfPersonalCurrentAccountData {
  
  @Alias('meta', isNullable: false,  )
  final ResponseMeta meta;
  
  @Alias('data', isNullable: false,  )
  final List<PersonalCurrentAccountData> data;
  
  @Alias('links', isNullable: false,  )
  final Map<String, String> links;
  

  ApiResponseOfListOfPersonalCurrentAccountData(
      

{
     this.meta = null,  
     this.data = const [],  
     this.links = const {} 
    
    }
  );

  @override
  String toString() {
    return 'ApiResponseOfListOfPersonalCurrentAccountData[meta=$meta, data=$data, links=$links, ]';
  }
}

@GenSerializer(nullableFields: true)
class ApiResponseOfListOfPersonalCurrentAccountDataSerializer extends Serializer<ApiResponseOfListOfPersonalCurrentAccountData> with _$ApiResponseOfListOfPersonalCurrentAccountDataSerializer {

}

