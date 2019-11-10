import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'monitoring_feature_status.jser.dart';

class MonitoringFeatureStatus {
  
  @Alias('lastTested', isNullable: false,  )
  final DateTime lastTested;
  
  @Alias('span', isNullable: false,  )
  final String span;
  
  @Alias('status', isNullable: false,
          
  )
  final String status;
  //enum statusEnum {  Up,  Down,  Warning,  Unknown,  Expired,  };

  MonitoringFeatureStatus(
      

{
     this.lastTested = null,  
     this.span = null,  
     this.status = null 
    
    }
  );

  @override
  String toString() {
    return 'MonitoringFeatureStatus[lastTested=$lastTested, span=$span, status=$status, ]';
  }
}

@GenSerializer(nullableFields: true)
class MonitoringFeatureStatusSerializer extends Serializer<MonitoringFeatureStatus> with _$MonitoringFeatureStatusSerializer {

}

