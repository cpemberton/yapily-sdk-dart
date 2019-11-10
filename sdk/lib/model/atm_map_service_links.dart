import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'atm_map_service_links.jser.dart';

class ATMMapServiceLinks {
  
  @Alias('bingMapsUrl', isNullable: false,  )
  final String bingMapsUrl;
  
  @Alias('googleMapsUrl', isNullable: false,  )
  final String googleMapsUrl;
  
  @Alias('hereMapsUrl', isNullable: false,  )
  final String hereMapsUrl;
  

  ATMMapServiceLinks(
      

{
     this.bingMapsUrl = null,  
     this.googleMapsUrl = null,  
     this.hereMapsUrl = null 
    
    }
  );

  @override
  String toString() {
    return 'ATMMapServiceLinks[bingMapsUrl=$bingMapsUrl, googleMapsUrl=$googleMapsUrl, hereMapsUrl=$hereMapsUrl, ]';
  }
}

@GenSerializer(nullableFields: true)
class ATMMapServiceLinksSerializer extends Serializer<ATMMapServiceLinks> with _$ATMMapServiceLinksSerializer {

}

