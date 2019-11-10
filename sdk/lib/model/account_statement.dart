import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'account_statement.jser.dart';

class AccountStatement {
  
  @Alias('id', isNullable: false,  )
  final String id;
  
  @Alias('startDateTime', isNullable: false,  )
  final DateTime startDateTime;
  
  @Alias('endDateTime', isNullable: false,  )
  final DateTime endDateTime;
  
  @Alias('creationDateTime', isNullable: false,  )
  final DateTime creationDateTime;
  

  AccountStatement(
      

{
     this.id = null,  
     this.startDateTime = null,  
     this.endDateTime = null,  
     this.creationDateTime = null 
    
    }
  );

  @override
  String toString() {
    return 'AccountStatement[id=$id, startDateTime=$startDateTime, endDateTime=$endDateTime, creationDateTime=$creationDateTime, ]';
  }
}

@GenSerializer(nullableFields: true)
class AccountStatementSerializer extends Serializer<AccountStatement> with _$AccountStatementSerializer {

}

