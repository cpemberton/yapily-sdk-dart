import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:yapily_sdk/model/pagination.dart';

part 'response_list_meta.jser.dart';

class ResponseListMeta {
  
  @Alias('tracingId', isNullable: false,  )
  final String tracingId;
  
  @Alias('count', isNullable: false,  )
  final int count;
  
  @Alias('pagination', isNullable: false,  )
  final Pagination pagination;
  

  ResponseListMeta(
      

{
     this.tracingId = null,  
     this.count = null,  
     this.pagination = null 
    
    }
  );

  @override
  String toString() {
    return 'ResponseListMeta[tracingId=$tracingId, count=$count, pagination=$pagination, ]';
  }
}

@GenSerializer(nullableFields: true)
class ResponseListMetaSerializer extends Serializer<ResponseListMeta> with _$ResponseListMetaSerializer {

}

