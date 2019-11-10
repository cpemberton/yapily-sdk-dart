import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'credit_check.jser.dart';

class CreditCheck {
  
  @Alias('Notes', isNullable: false,  )
  final List<String> notes;
  
  @Alias('ScoringType', isNullable: false,
          
  )
  final String scoringType;
  //enum scoringTypeEnum {  Hard,  Soft,  };

  CreditCheck(
      

{
     this.notes = const [],  
     this.scoringType = null 
    
    }
  );

  @override
  String toString() {
    return 'CreditCheck[notes=$notes, scoringType=$scoringType, ]';
  }
}

@GenSerializer(nullableFields: true)
class CreditCheckSerializer extends Serializer<CreditCheck> with _$CreditCheckSerializer {

}

