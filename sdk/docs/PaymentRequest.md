# yapily_sdk.model.PaymentRequest

## Load the model package
```dart
import 'package:yapily_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**paymentIdempotencyId** | **String** |  | [default to null]
**payerAccountIdentifications** | [**List&lt;AccountIdentification&gt;**](AccountIdentification.md) |  | [optional] [default to []]
**amount** | [**Amount**](Amount.md) |  | [optional] [default to null]
**reference** | **String** |  | [optional] [default to null]
**contextType** | **String** |  | [optional] [default to null]
**type** | **String** |  | [optional] [default to null]
**paymentDateTime** | [**DateTime**](DateTime.md) |  | [optional] [default to null]
**payee** | [**Payee**](Payee.md) |  | [default to null]
**periodicPayments** | [**PeriodicPaymentRequest**](PeriodicPaymentRequest.md) |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


