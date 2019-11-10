import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'age_eligibility.jser.dart';

class AgeEligibility {
  
  @Alias('MaximumAge', isNullable: false,  )
  final double maximumAge;
  
  @Alias('MinimumAge', isNullable: false,  )
  final double minimumAge;
  
  @Alias('Notes', isNullable: false,  )
  final List<String> notes;
  

  AgeEligibility(
      

{
     this.maximumAge = null,  
     this.minimumAge = null,  
     this.notes = const [] 
    
    }
  );

  @override
  String toString() {
    return 'AgeEligibility[maximumAge=$maximumAge, minimumAge=$minimumAge, notes=$notes, ]';
  }
}

@GenSerializer(nullableFields: true)
class AgeEligibilitySerializer extends Serializer<AgeEligibility> with _$AgeEligibilitySerializer {

}

