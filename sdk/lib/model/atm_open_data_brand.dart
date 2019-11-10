import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:yapily_sdk/model/inline_response2001_atm.dart';

part 'atm_open_data_brand.jser.dart';

class ATMOpenDataBrand {
  
  @Alias('ATM', isNullable: false,  )
  final List<InlineResponse2001ATM> ATM;
  
  @Alias('BrandName', isNullable: false,  )
  final String brandName;
  

  ATMOpenDataBrand(
      

{
     this.ATM = const [],  
     this.brandName = null 
    
    }
  );

  @override
  String toString() {
    return 'ATMOpenDataBrand[ATM=$ATM, brandName=$brandName, ]';
  }
}

@GenSerializer(nullableFields: true)
class ATMOpenDataBrandSerializer extends Serializer<ATMOpenDataBrand> with _$ATMOpenDataBrandSerializer {

}

