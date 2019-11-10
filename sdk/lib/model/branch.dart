import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'branch.jser.dart';

class Branch {
  
  @Alias('Identification', isNullable: false,  )
  final String identification;
  

  Branch(
      

{
     this.identification = null 
    
    }
  );

  @override
  String toString() {
    return 'Branch[identification=$identification, ]';
  }
}

@GenSerializer(nullableFields: true)
class BranchSerializer extends Serializer<Branch> with _$BranchSerializer {

}

