import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'next.jser.dart';

class Next {
  
  @Alias('before', isNullable: false,  )
  final DateTime before;
  
  @Alias('from', isNullable: false,  )
  final DateTime from;
  

  Next(
      

{
     this.before = null,  
     this.from = null 
    
    }
  );

  @override
  String toString() {
    return 'Next[before=$before, from=$from, ]';
  }
}

@GenSerializer(nullableFields: true)
class NextSerializer extends Serializer<Next> with _$NextSerializer {

}

