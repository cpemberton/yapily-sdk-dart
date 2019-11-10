import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:yapily_sdk/model/amount.dart';

part 'charge_details.jser.dart';

class ChargeDetails {
  
  @Alias('chargeAmount', isNullable: false,  )
  final Amount chargeAmount;
  

  ChargeDetails(
      

{
     this.chargeAmount = null 
    
    }
  );

  @override
  String toString() {
    return 'ChargeDetails[chargeAmount=$chargeAmount, ]';
  }
}

@GenSerializer(nullableFields: true)
class ChargeDetailsSerializer extends Serializer<ChargeDetails> with _$ChargeDetailsSerializer {

}

