import 'package:yapily_sdk/api.dart';
import 'package:test/test.dart';

// tests for CurrencyExchange
void main() {
  var instance = new CurrencyExchange();

  group('test CurrencyExchange', () {
    // ISO 4217 currency code denoting the currency of the creditor
    // String sourceCurrency (default value: null)
    test('to test the property `sourceCurrency`', () async {
      // TODO
    });

    // ISO 4217 currency code denoting the currency of the debtor
    // String targetCurrency (default value: null)
    test('to test the property `targetCurrency`', () async {
      // TODO
    });

    // ISO 4217 currency code denoting the currency used to set the exchange rate (GBP is the unit currency in the conversion of 1 GBP = x CUR)
    // String unitCurrency (default value: null)
    test('to test the property `unitCurrency`', () async {
      // TODO
    });

    // Currency exchange rate
    // num exchangeRate (default value: null)
    test('to test the property `exchangeRate`', () async {
      // TODO
    });


  });

}
