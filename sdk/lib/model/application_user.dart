import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:yapily_sdk/model/institution_consent.dart';

part 'application_user.jser.dart';

class ApplicationUser {
   /* User UUID */
  @Alias('uuid', isNullable: false,  )
  final String uuid;
  
  @Alias('applicationUuid', isNullable: false,  )
  final String applicationUuid;
  
  @Alias('applicationUserId', isNullable: false,  )
  final String applicationUserId;
  
  @Alias('referenceId', isNullable: false,  )
  final String referenceId;
  
  @Alias('institutionConsents', isNullable: false,  )
  final List<InstitutionConsent> institutionConsents;
  

  ApplicationUser(
      

{
     this.uuid = null,  
     this.applicationUuid = null,  
     this.applicationUserId = null,  
     this.referenceId = null,  
     this.institutionConsents = const [] 
    
    }
  );

  @override
  String toString() {
    return 'ApplicationUser[uuid=$uuid, applicationUuid=$applicationUuid, applicationUserId=$applicationUserId, referenceId=$referenceId, institutionConsents=$institutionConsents, ]';
  }
}

@GenSerializer(nullableFields: true)
class ApplicationUserSerializer extends Serializer<ApplicationUser> with _$ApplicationUserSerializer {

}

