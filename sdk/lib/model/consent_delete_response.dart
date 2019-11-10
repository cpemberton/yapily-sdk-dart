import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'consent_delete_response.jser.dart';

class ConsentDeleteResponse {
  
  @Alias('id', isNullable: false,  )
  final String id;
  
  @Alias('deleteStatus', isNullable: false,
          
  )
  final String deleteStatus;
  //enum deleteStatusEnum {  SUCCESS,  FAILED,  };
  @Alias('institutionId', isNullable: false,  )
  final String institutionId;
  
  @Alias('institutionConsentId', isNullable: false,  )
  final String institutionConsentId;
  
  @Alias('creationDate', isNullable: false,  )
  final DateTime creationDate;
  

  ConsentDeleteResponse(
      

{
     this.id = null,  
     this.deleteStatus = null,  
     this.institutionId = null,  
     this.institutionConsentId = null,  
     this.creationDate = null 
    
    }
  );

  @override
  String toString() {
    return 'ConsentDeleteResponse[id=$id, deleteStatus=$deleteStatus, institutionId=$institutionId, institutionConsentId=$institutionConsentId, creationDate=$creationDate, ]';
  }
}

@GenSerializer(nullableFields: true)
class ConsentDeleteResponseSerializer extends Serializer<ConsentDeleteResponse> with _$ConsentDeleteResponseSerializer {

}

