import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'account_name.jser.dart';

class AccountName {
  
  @Alias('name', isNullable: false,  )
  final String name;
  

  AccountName(
      

{
    
     this.name = null 
    }
  );

  @override
  String toString() {
    return 'AccountName[name=$name, ]';
  }
}

@GenSerializer(nullableFields: true)
class AccountNameSerializer extends Serializer<AccountName> with _$AccountNameSerializer {

}

