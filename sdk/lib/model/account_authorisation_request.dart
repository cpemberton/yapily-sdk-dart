import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:yapily_sdk/model/account_request.dart';

part 'account_authorisation_request.jser.dart';

class AccountAuthorisationRequest {
  
  @Alias('userUuid', isNullable: false,  )
  final String userUuid;
  
  @Alias('applicationUserId', isNullable: false,  )
  final String applicationUserId;
  
  @Alias('forwardParameters', isNullable: false,  )
  final List<String> forwardParameters;
  
  @Alias('institutionId', isNullable: false,  )
  final String institutionId;
  
  @Alias('callback', isNullable: false,  )
  final String callback;
  
  @Alias('oneTimeToken', isNullable: false,  )
  final bool oneTimeToken;
  
  @Alias('accountRequest', isNullable: false,  )
  final AccountRequest accountRequest;
  

  AccountAuthorisationRequest(
      

{
     this.userUuid = null,  
     this.applicationUserId = null,  
     this.forwardParameters = const [],  
    
     this.institutionId = null,  
     this.callback = null,  
     this.oneTimeToken = null,   this.accountRequest = null 
    
    }
  );

  @override
  String toString() {
    return 'AccountAuthorisationRequest[userUuid=$userUuid, applicationUserId=$applicationUserId, forwardParameters=$forwardParameters, institutionId=$institutionId, callback=$callback, oneTimeToken=$oneTimeToken, accountRequest=$accountRequest, ]';
  }
}

@GenSerializer(nullableFields: true)
class AccountAuthorisationRequestSerializer extends Serializer<AccountAuthorisationRequest> with _$AccountAuthorisationRequestSerializer {

}

