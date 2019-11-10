import 'package:yapily_sdk/api.dart';
import 'package:test/test.dart';

// tests for Transaction
void main() {
  var instance = new Transaction();

  group('test Transaction', () {
    // Transaction Id returned by the institution if present
    // String id (default value: null)
    test('to test the property `id`', () async {
      // TODO
    });

    // Transaction date as defined by the institution
    // DateTime date (default value: null)
    test('to test the property `date`', () async {
      // TODO
    });

    // Date and (if available) time that transaction is posted
    // DateTime bookingDateTime (default value: null)
    test('to test the property `bookingDateTime`', () async {
      // TODO
    });

    // The actual or expected date and time transaction is cleared
    // DateTime valueDateTime (default value: null)
    test('to test the property `valueDateTime`', () async {
      // TODO
    });

    // The status of the transaction
    // String status (default value: null)
    test('to test the property `status`', () async {
      // TODO
    });

    // Deprecated. Use the amount value in `transactionAmount` instead
    // num amount (default value: null)
    test('to test the property `amount`', () async {
      // TODO
    });

    // Deprecated. Use the currency value in `transactionAmount` instead
    // String currency (default value: null)
    test('to test the property `currency`', () async {
      // TODO
    });

    // Amount transactionAmount (default value: null)
    test('to test the property `transactionAmount`', () async {
      // TODO
    });

    // CurrencyExchange currencyExchange (default value: null)
    test('to test the property `currencyExchange`', () async {
      // TODO
    });

    // ChargeDetails chargeDetails (default value: null)
    test('to test the property `chargeDetails`', () async {
      // TODO
    });

    // Transaction reference
    // String reference (default value: null)
    test('to test the property `reference`', () async {
      // TODO
    });

    // List<StatementReference> statementReferences (default value: const [])
    test('to test the property `statementReferences`', () async {
      // TODO
    });

    // Unstructured text containing details of the transaction. Usage varies according to the institution
    // String description (default value: null)
    test('to test the property `description`', () async {
      // TODO
    });

    // Further information related to the transaction. Usage varies according to the institution
    // List<String> transactionInformation (default value: const [])
    test('to test the property `transactionInformation`', () async {
      // TODO
    });

    // AddressDetails addressDetails (default value: null)
    test('to test the property `addressDetails`', () async {
      // TODO
    });

    // IsoBankTransactionCode isoBankTransactionCode (default value: null)
    test('to test the property `isoBankTransactionCode`', () async {
      // TODO
    });

    // ProprietaryBankTransactionCode proprietaryBankTransactionCode (default value: null)
    test('to test the property `proprietaryBankTransactionCode`', () async {
      // TODO
    });

    // Balance balance (default value: null)
    test('to test the property `balance`', () async {
      // TODO
    });

    // Merchant merchant (default value: null)
    test('to test the property `merchant`', () async {
      // TODO
    });


  });

}
