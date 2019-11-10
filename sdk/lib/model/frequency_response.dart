import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'frequency_response.jser.dart';

class FrequencyResponse {
  
  @Alias('executionDay', isNullable: false,  )
  final int executionDay;
  
  @Alias('frequencyType', isNullable: false,
          
  )
  final String frequencyType;
  //enum frequencyTypeEnum {  DAILY,  EVERY_WORKING_DAY,  CALENDAR_DAY,  WEEKLY,  EVERY_TWO_WEEKS,  MONTHLY,  EVERY_TWO_MONTHS,  QUARTERLY,  SEMIANNUAL,  ANNUAL,  };
  @Alias('intervalMonth', isNullable: false,  )
  final int intervalMonth;
  
  @Alias('intervalWeek', isNullable: false,  )
  final int intervalWeek;
  

  FrequencyResponse(
      

{
     this.executionDay = null,  
     this.frequencyType = null,  
     this.intervalMonth = null,  
     this.intervalWeek = null 
    
    }
  );

  @override
  String toString() {
    return 'FrequencyResponse[executionDay=$executionDay, frequencyType=$frequencyType, intervalMonth=$intervalMonth, intervalWeek=$intervalWeek, ]';
  }
}

@GenSerializer(nullableFields: true)
class FrequencyResponseSerializer extends Serializer<FrequencyResponse> with _$FrequencyResponseSerializer {

}

