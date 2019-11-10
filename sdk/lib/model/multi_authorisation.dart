import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'multi_authorisation.jser.dart';

class MultiAuthorisation {
  
  @Alias('status', isNullable: false,  )
  final String status;
  
  @Alias('numberOfAuthorisationRequired', isNullable: false,  )
  final int numberOfAuthorisationRequired;
  
  @Alias('numberOfAuthorisationReceived', isNullable: false,  )
  final int numberOfAuthorisationReceived;
  
  @Alias('lastUpdatedDateTime', isNullable: false,  )
  final DateTime lastUpdatedDateTime;
  
  @Alias('expirationDateTime', isNullable: false,  )
  final DateTime expirationDateTime;
  

  MultiAuthorisation(
      

{
     this.status = null,  
     this.numberOfAuthorisationRequired = null,  
     this.numberOfAuthorisationReceived = null,  
     this.lastUpdatedDateTime = null,  
     this.expirationDateTime = null 
    
    }
  );

  @override
  String toString() {
    return 'MultiAuthorisation[status=$status, numberOfAuthorisationRequired=$numberOfAuthorisationRequired, numberOfAuthorisationReceived=$numberOfAuthorisationReceived, lastUpdatedDateTime=$lastUpdatedDateTime, expirationDateTime=$expirationDateTime, ]';
  }
}

@GenSerializer(nullableFields: true)
class MultiAuthorisationSerializer extends Serializer<MultiAuthorisation> with _$MultiAuthorisationSerializer {

}

