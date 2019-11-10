import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'new_application_user.jser.dart';

class NewApplicationUser {
  
  @Alias('applicationUserId', isNullable: false,  )
  final String applicationUserId;
  
  @Alias('referenceId', isNullable: false,  )
  final String referenceId;
  

  NewApplicationUser(
      

{
     this.applicationUserId = null,  
     this.referenceId = null 
    
    }
  );

  @override
  String toString() {
    return 'NewApplicationUser[applicationUserId=$applicationUserId, referenceId=$referenceId, ]';
  }
}

@GenSerializer(nullableFields: true)
class NewApplicationUserSerializer extends Serializer<NewApplicationUser> with _$NewApplicationUserSerializer {

}

