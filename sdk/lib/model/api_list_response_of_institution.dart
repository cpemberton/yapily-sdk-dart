import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:yapily_sdk/model/institution.dart';

import 'package:yapily_sdk/model/response_list_meta.dart';

part 'api_list_response_of_institution.jser.dart';

class ApiListResponseOfInstitution {
  
  @Alias('meta', isNullable: false,  )
  final ResponseListMeta meta;
  
  @Alias('data', isNullable: false,  )
  final List<Institution> data;
  
  @Alias('links', isNullable: false,  )
  final Map<String, String> links;
  

  ApiListResponseOfInstitution(
      

{
     this.meta = null,  
     this.data = const [],  
     this.links = const {} 
    
    }
  );

  @override
  String toString() {
    return 'ApiListResponseOfInstitution[meta=$meta, data=$data, links=$links, ]';
  }
}

@GenSerializer(nullableFields: true)
class ApiListResponseOfInstitutionSerializer extends Serializer<ApiListResponseOfInstitution> with _$ApiListResponseOfInstitutionSerializer {

}

