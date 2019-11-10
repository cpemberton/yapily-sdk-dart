import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'currency_exchange.jser.dart';

class CurrencyExchange {
   /* ISO 4217 currency code denoting the currency of the creditor */
  @Alias('sourceCurrency', isNullable: false,  )
  final String sourceCurrency;
   /* ISO 4217 currency code denoting the currency of the debtor */
  @Alias('targetCurrency', isNullable: false,  )
  final String targetCurrency;
   /* ISO 4217 currency code denoting the currency used to set the exchange rate (GBP is the unit currency in the conversion of 1 GBP = x CUR) */
  @Alias('unitCurrency', isNullable: false,  )
  final String unitCurrency;
   /* Currency exchange rate */
  @Alias('exchangeRate', isNullable: false,  )
  final num exchangeRate;
  

  CurrencyExchange(
      

{
     this.sourceCurrency = null,  
     this.targetCurrency = null,  
     this.unitCurrency = null,  
     this.exchangeRate = null 
    
    }
  );

  @override
  String toString() {
    return 'CurrencyExchange[sourceCurrency=$sourceCurrency, targetCurrency=$targetCurrency, unitCurrency=$unitCurrency, exchangeRate=$exchangeRate, ]';
  }
}

@GenSerializer(nullableFields: true)
class CurrencyExchangeSerializer extends Serializer<CurrencyExchange> with _$CurrencyExchangeSerializer {

}

