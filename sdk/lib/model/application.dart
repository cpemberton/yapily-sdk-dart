import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:yapily_sdk/model/institution.dart';

import 'package:yapily_sdk/model/media.dart';

part 'application.jser.dart';

class Application {
   /* Application UUID */
  @Alias('uuid', isNullable: false,  )
  final String uuid;
  
  @Alias('name', isNullable: false,  )
  final String name;
  
  @Alias('active', isNullable: false,  )
  final bool active;
  
  @Alias('authCallbacks', isNullable: false,  )
  final List<String> authCallbacks;
  
  @Alias('institutions', isNullable: false,  )
  final List<Institution> institutions;
  
  @Alias('media', isNullable: false,  )
  final List<Media> media;
  
  @Alias('created', isNullable: false,  )
  final DateTime created;
  
  @Alias('updated', isNullable: false,  )
  final DateTime updated;
  

  Application(
      

{
     this.uuid = null,  
     this.name = null,  
     this.active = null,  
     this.authCallbacks = const [],  
     this.institutions = const [],  
     this.media = const [],  
     this.created = null,  
     this.updated = null 
    
    }
  );

  @override
  String toString() {
    return 'Application[uuid=$uuid, name=$name, active=$active, authCallbacks=$authCallbacks, institutions=$institutions, media=$media, created=$created, updated=$updated, ]';
  }
}

@GenSerializer(nullableFields: true)
class ApplicationSerializer extends Serializer<Application> with _$ApplicationSerializer {

}

