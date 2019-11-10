# yapily_sdk.model.Transaction

## Load the model package
```dart
import 'package:yapily_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Transaction Id returned by the institution if present | [optional] [default to null]
**date** | [**DateTime**](DateTime.md) | Transaction date as defined by the institution | [optional] [default to null]
**bookingDateTime** | [**DateTime**](DateTime.md) | Date and (if available) time that transaction is posted | [optional] [default to null]
**valueDateTime** | [**DateTime**](DateTime.md) | The actual or expected date and time transaction is cleared | [optional] [default to null]
**status** | **String** | The status of the transaction | [optional] [default to null]
**amount** | **num** | Deprecated. Use the amount value in &#x60;transactionAmount&#x60; instead | [optional] [default to null]
**currency** | **String** | Deprecated. Use the currency value in &#x60;transactionAmount&#x60; instead | [optional] [default to null]
**transactionAmount** | [**Amount**](Amount.md) |  | [optional] [default to null]
**currencyExchange** | [**CurrencyExchange**](CurrencyExchange.md) |  | [optional] [default to null]
**chargeDetails** | [**ChargeDetails**](ChargeDetails.md) | If present, contains details of any charges applied during this transaction | [optional] [default to null]
**reference** | **String** | Transaction reference | [optional] [default to null]
**statementReferences** | [**List&lt;StatementReference&gt;**](StatementReference.md) |  | [optional] [default to []]
**description** | **String** | Unstructured text containing details of the transaction. Usage varies according to the institution | [optional] [default to null]
**transactionInformation** | **List&lt;String&gt;** | Further information related to the transaction. Usage varies according to the institution | [optional] [default to []]
**addressDetails** | [**AddressDetails**](AddressDetails.md) |  | [optional] [default to null]
**isoBankTransactionCode** | [**IsoBankTransactionCode**](IsoBankTransactionCode.md) |  | [optional] [default to null]
**proprietaryBankTransactionCode** | [**ProprietaryBankTransactionCode**](ProprietaryBankTransactionCode.md) |  | [optional] [default to null]
**balance** | [**Balance**](Balance.md) | Running account balance after transaction has been applied | [optional] [default to null]
**merchant** | [**Merchant**](Merchant.md) | Merchant details | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


