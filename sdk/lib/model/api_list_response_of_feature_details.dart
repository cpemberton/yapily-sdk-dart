import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:yapily_sdk/model/feature_details.dart';

import 'package:yapily_sdk/model/response_list_meta.dart';

part 'api_list_response_of_feature_details.jser.dart';

class ApiListResponseOfFeatureDetails {
  
  @Alias('meta', isNullable: false,  )
  final ResponseListMeta meta;
  
  @Alias('data', isNullable: false,  )
  final List<FeatureDetails> data;
  
  @Alias('links', isNullable: false,  )
  final Map<String, String> links;
  

  ApiListResponseOfFeatureDetails(
      

{
     this.meta = null,  
     this.data = const [],  
     this.links = const {} 
    
    }
  );

  @override
  String toString() {
    return 'ApiListResponseOfFeatureDetails[meta=$meta, data=$data, links=$links, ]';
  }
}

@GenSerializer(nullableFields: true)
class ApiListResponseOfFeatureDetailsSerializer extends Serializer<ApiListResponseOfFeatureDetails> with _$ApiListResponseOfFeatureDetailsSerializer {

}

