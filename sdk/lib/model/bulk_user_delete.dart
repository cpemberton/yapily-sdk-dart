import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'bulk_user_delete.jser.dart';

class BulkUserDelete {
  
  @Alias('id', isNullable: false,  )
  final String id;
  
  @Alias('status', isNullable: false,
          
  )
  final String status;
  //enum statusEnum {  IN_PROGRESS,  COMPLETED,  FAILED,  };
  @Alias('startedAt', isNullable: false,  )
  final DateTime startedAt;
  
  @Alias('links', isNullable: false,  )
  final Map<String, String> links;
  

  BulkUserDelete(
      

{
     this.id = null,  
     this.status = null,  
     this.startedAt = null,  
     this.links = const {} 
    
    }
  );

  @override
  String toString() {
    return 'BulkUserDelete[id=$id, status=$status, startedAt=$startedAt, links=$links, ]';
  }
}

@GenSerializer(nullableFields: true)
class BulkUserDeleteSerializer extends Serializer<BulkUserDelete> with _$BulkUserDeleteSerializer {

}

