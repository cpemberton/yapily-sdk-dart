import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'statement_reference.jser.dart';

class StatementReference {
  
  @Alias('value', isNullable: false,  )
  final String value;
  

  StatementReference(
      

{
     this.value = null 
    
    }
  );

  @override
  String toString() {
    return 'StatementReference[value=$value, ]';
  }
}

@GenSerializer(nullableFields: true)
class StatementReferenceSerializer extends Serializer<StatementReference> with _$StatementReferenceSerializer {

}

