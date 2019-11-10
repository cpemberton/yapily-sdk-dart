import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'institution_consent.jser.dart';

class InstitutionConsent {
  
  @Alias('institutionId', isNullable: false,  )
  final String institutionId;
  

  InstitutionConsent(
      

{
     this.institutionId = null 
    
    }
  );

  @override
  String toString() {
    return 'InstitutionConsent[institutionId=$institutionId, ]';
  }
}

@GenSerializer(nullableFields: true)
class InstitutionConsentSerializer extends Serializer<InstitutionConsent> with _$InstitutionConsentSerializer {

}

