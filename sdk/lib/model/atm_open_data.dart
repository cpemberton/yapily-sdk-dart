import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:yapily_sdk/model/atm_open_data_brand.dart';

part 'atm_open_data.jser.dart';

class ATMOpenData {
  
  @Alias('Brand', isNullable: false,  )
  final List<ATMOpenDataBrand> brand;
  

  ATMOpenData(
      

{
     this.brand = const [] 
    
    }
  );

  @override
  String toString() {
    return 'ATMOpenData[brand=$brand, ]';
  }
}

@GenSerializer(nullableFields: true)
class ATMOpenDataSerializer extends Serializer<ATMOpenData> with _$ATMOpenDataSerializer {

}

