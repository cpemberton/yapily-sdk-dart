import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:yapily_sdk/model/other_residency_type.dart';

part 'residency_eligibility.jser.dart';

class ResidencyEligibility {
  
  @Alias('Notes', isNullable: false,  )
  final List<String> notes;
  
  @Alias('OtherResidencyType', isNullable: false,  )
  final OtherResidencyType otherResidencyType;
  
  @Alias('ResidencyIncluded', isNullable: false,  )
  final List<String> residencyIncluded;
  
  @Alias('ResidencyType', isNullable: false,
          
  )
  final String residencyType;
  //enum residencyTypeEnum {  Householder,  Other,  };

  ResidencyEligibility(
      

{
     this.notes = const [],  
     this.otherResidencyType = null,  
     this.residencyIncluded = const [],  
     this.residencyType = null 
    
    }
  );

  @override
  String toString() {
    return 'ResidencyEligibility[notes=$notes, otherResidencyType=$otherResidencyType, residencyIncluded=$residencyIncluded, residencyType=$residencyType, ]';
  }
}

@GenSerializer(nullableFields: true)
class ResidencyEligibilitySerializer extends Serializer<ResidencyEligibility> with _$ResidencyEligibilitySerializer {

}

