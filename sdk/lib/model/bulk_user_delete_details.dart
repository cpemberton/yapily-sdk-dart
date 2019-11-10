import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:yapily_sdk/model/user_delete_response.dart';

part 'bulk_user_delete_details.jser.dart';

class BulkUserDeleteDetails {
  
  @Alias('id', isNullable: false,  )
  final String id;
  
  @Alias('invalidApplicationUserIds', isNullable: false,  )
  final List<String> invalidApplicationUserIds;
  
  @Alias('invalidUserUuids', isNullable: false,  )
  final List<String> invalidUserUuids;
  
  @Alias('status', isNullable: false,
          
  )
  final String status;
  //enum statusEnum {  IN_PROGRESS,  COMPLETED,  FAILED,  };
  @Alias('startedAt', isNullable: false,  )
  final DateTime startedAt;
  
  @Alias('users', isNullable: false,  )
  final List<UserDeleteResponse> users;
  
  @Alias('links', isNullable: false,  )
  final Map<String, String> links;
  

  BulkUserDeleteDetails(
      

{
     this.id = null,  
     this.invalidApplicationUserIds = const [],  
     this.invalidUserUuids = const [],  
     this.status = null,  
     this.startedAt = null,  
     this.users = const [],  
     this.links = const {} 
    
    }
  );

  @override
  String toString() {
    return 'BulkUserDeleteDetails[id=$id, invalidApplicationUserIds=$invalidApplicationUserIds, invalidUserUuids=$invalidUserUuids, status=$status, startedAt=$startedAt, users=$users, links=$links, ]';
  }
}

@GenSerializer(nullableFields: true)
class BulkUserDeleteDetailsSerializer extends Serializer<BulkUserDeleteDetails> with _$BulkUserDeleteDetailsSerializer {

}

