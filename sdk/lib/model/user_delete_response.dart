import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:yapily_sdk/model/consent_delete_response.dart';

part 'user_delete_response.jser.dart';

class UserDeleteResponse {
  
  @Alias('id', isNullable: false,  )
  final String id;
  
  @Alias('deleteStatus', isNullable: false,
          
  )
  final String deleteStatus;
  //enum deleteStatusEnum {  SUCCESS,  FAILED,  };
  @Alias('creationDate', isNullable: false,  )
  final DateTime creationDate;
  
  @Alias('userConsents', isNullable: false,  )
  final List<ConsentDeleteResponse> userConsents;
  

  UserDeleteResponse(
      

{
     this.id = null,  
     this.deleteStatus = null,  
     this.creationDate = null,  
     this.userConsents = const [] 
    
    }
  );

  @override
  String toString() {
    return 'UserDeleteResponse[id=$id, deleteStatus=$deleteStatus, creationDate=$creationDate, userConsents=$userConsents, ]';
  }
}

@GenSerializer(nullableFields: true)
class UserDeleteResponseSerializer extends Serializer<UserDeleteResponse> with _$UserDeleteResponseSerializer {

}

