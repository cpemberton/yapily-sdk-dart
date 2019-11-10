import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'core_product.jser.dart';

class CoreProduct {
  
  @Alias('MonthlyMaximumCharge', isNullable: false,  )
  final String monthlyMaximumCharge;
  
  @Alias('ProductDescription', isNullable: false,  )
  final String productDescription;
  
  @Alias('ProductURL', isNullable: false,  )
  final String productURL;
  
  @Alias('SalesAccessChannels', isNullable: false,
          
             processor:  const List<String>FieldProcessor(),
          
  )
  final List<String> salesAccessChannels;
  //enum salesAccessChannelsEnum {  Branch,  CallCentre,  Post,  Online,  RelationshipManager,  };
  @Alias('ServicingAccessChannels', isNullable: false,
          
             processor:  const List<String>FieldProcessor(),
          
  )
  final List<String> servicingAccessChannels;
  //enum servicingAccessChannelsEnum {  ATM,  Branch,  CallCentre,  Post,  MobileBankingApp,  Online,  PostOffice,  RelationshipManager,  Text,  };
  @Alias('TcsAndCsURL', isNullable: false,  )
  final String tcsAndCsURL;
  

  CoreProduct(
      

{
     this.monthlyMaximumCharge = null,  
     this.productDescription = null,  
     this.productURL = null,  
     this.salesAccessChannels = const [],  
     this.servicingAccessChannels = const [],  
     this.tcsAndCsURL = null 
    
    }
  );

  @override
  String toString() {
    return 'CoreProduct[monthlyMaximumCharge=$monthlyMaximumCharge, productDescription=$productDescription, productURL=$productURL, salesAccessChannels=$salesAccessChannels, servicingAccessChannels=$servicingAccessChannels, tcsAndCsURL=$tcsAndCsURL, ]';
  }
}

@GenSerializer(nullableFields: true)
class CoreProductSerializer extends Serializer<CoreProduct> with _$CoreProductSerializer {

}

