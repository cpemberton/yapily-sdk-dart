import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'media.jser.dart';

class Media {
  
  @Alias('source', isNullable: false,  )
  final String source;
  
  @Alias('type', isNullable: false,  )
  final String type;
  

  Media(
      

{
     this.source = null,  
     this.type = null 
    
    }
  );

  @override
  String toString() {
    return 'Media[source=$source, type=$type, ]';
  }
}

@GenSerializer(nullableFields: true)
class MediaSerializer extends Serializer<Media> with _$MediaSerializer {

}

