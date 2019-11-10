import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'user_delete_request.jser.dart';

class UserDeleteRequest {
  
  @Alias('userUuids', isNullable: false,  )
  final List<String> userUuids;
  
  @Alias('applicationUserIds', isNullable: false,  )
  final List<String> applicationUserIds;
  

  UserDeleteRequest(
      

{
     this.userUuids = const [],  
     this.applicationUserIds = const [] 
    
    }
  );

  @override
  String toString() {
    return 'UserDeleteRequest[userUuids=$userUuids, applicationUserIds=$applicationUserIds, ]';
  }
}

@GenSerializer(nullableFields: true)
class UserDeleteRequestSerializer extends Serializer<UserDeleteRequest> with _$UserDeleteRequestSerializer {

}

