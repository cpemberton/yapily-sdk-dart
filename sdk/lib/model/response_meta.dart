import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'response_meta.jser.dart';

class ResponseMeta {
  
  @Alias('tracingId', isNullable: false,  )
  final String tracingId;
  

  ResponseMeta(
      

{
     this.tracingId = null 
    
    }
  );

  @override
  String toString() {
    return 'ResponseMeta[tracingId=$tracingId, ]';
  }
}

@GenSerializer(nullableFields: true)
class ResponseMetaSerializer extends Serializer<ResponseMeta> with _$ResponseMetaSerializer {

}

