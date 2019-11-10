import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'site.jser.dart';

class Site {
  
  @Alias('Identification', isNullable: false,  )
  final String identification;
  
  @Alias('Name', isNullable: false,  )
  final String name;
  

  Site(
      

{
     this.identification = null,  
     this.name = null 
    
    }
  );

  @override
  String toString() {
    return 'Site[identification=$identification, name=$name, ]';
  }
}

@GenSerializer(nullableFields: true)
class SiteSerializer extends Serializer<Site> with _$SiteSerializer {

}

