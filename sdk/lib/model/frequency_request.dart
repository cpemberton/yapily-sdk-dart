import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'frequency_request.jser.dart';

class FrequencyRequest {
  
  @Alias('type', isNullable: false,
          
  )
  final String type;
  //enum typeEnum {  DAILY,  EVERY_WORKING_DAY,  CALENDAR_DAY,  WEEKLY,  EVERY_TWO_WEEKS,  MONTHLY,  EVERY_TWO_MONTHS,  QUARTERLY,  SEMIANNUAL,  ANNUAL,  };
  @Alias('intervalWeek', isNullable: false,  )
  final int intervalWeek;
  
  @Alias('intervalMonth', isNullable: false,  )
  final int intervalMonth;
  
  @Alias('executionDay', isNullable: false,  )
  final int executionDay;
  

  FrequencyRequest(
      

{
     this.type = null,  
     this.intervalWeek = null,  
     this.intervalMonth = null,  
     this.executionDay = null 
    
    }
  );

  @override
  String toString() {
    return 'FrequencyRequest[type=$type, intervalWeek=$intervalWeek, intervalMonth=$intervalMonth, executionDay=$executionDay, ]';
  }
}

@GenSerializer(nullableFields: true)
class FrequencyRequestSerializer extends Serializer<FrequencyRequest> with _$FrequencyRequestSerializer {

}

