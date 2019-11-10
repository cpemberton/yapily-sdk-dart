import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'other_calculation_frequency.jser.dart';

class OtherCalculationFrequency {
  
  @Alias('Code', isNullable: false,  )
  final String code;
  
  @Alias('Description', isNullable: false,  )
  final String description;
  
  @Alias('Name', isNullable: false,  )
  final String name;
  

  OtherCalculationFrequency(
      

{
     this.code = null,  
     this.description = null,  
     this.name = null 
    
    }
  );

  @override
  String toString() {
    return 'OtherCalculationFrequency[code=$code, description=$description, name=$name, ]';
  }
}

@GenSerializer(nullableFields: true)
class OtherCalculationFrequencySerializer extends Serializer<OtherCalculationFrequency> with _$OtherCalculationFrequencySerializer {

}

