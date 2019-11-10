import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:yapily_sdk/model/atm_open_data.dart';

part 'atm_open_data_response.jser.dart';

class ATMOpenDataResponse {
  
  @Alias('data', isNullable: false,  )
  final List<ATMOpenData> data;
  

  ATMOpenDataResponse(
      

{
     this.data = const [] 
    
    }
  );

  @override
  String toString() {
    return 'ATMOpenDataResponse[data=$data, ]';
  }
}

@GenSerializer(nullableFields: true)
class ATMOpenDataResponseSerializer extends Serializer<ATMOpenDataResponse> with _$ATMOpenDataResponseSerializer {

}

