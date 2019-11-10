# yapily_sdk.model.PaymentResponse

## Load the model package
```dart
import 'package:yapily_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] [default to null]
**institutionConsentId** | **String** |  | [optional] [default to null]
**paymentIdempotencyId** | **String** |  | [optional] [default to null]
**paymentLifecycleId** | **String** |  | [optional] [default to null]
**status** | **String** |  | [optional] [default to null]
**statusDetails** | [**PaymentStatusDetails**](PaymentStatusDetails.md) |  | [optional] [default to null]
**payeeDetails** | [**Payee**](Payee.md) |  | [optional] [default to null]
**reference** | **String** |  | [optional] [default to null]
**amount** | **num** |  | [optional] [default to null]
**currency** | **String** |  | [optional] [default to null]
**amountDetails** | [**Amount**](Amount.md) |  | [optional] [default to null]
**firstPaymentAmount** | [**Amount**](Amount.md) |  | [optional] [default to null]
**firstPaymentDateTime** | [**DateTime**](DateTime.md) |  | [optional] [default to null]
**nextPaymentAmount** | [**Amount**](Amount.md) |  | [optional] [default to null]
**nextPaymentDateTime** | [**DateTime**](DateTime.md) |  | [optional] [default to null]
**finalPaymentAmount** | [**Amount**](Amount.md) |  | [optional] [default to null]
**finalPaymentDateTime** | [**DateTime**](DateTime.md) |  | [optional] [default to null]
**createdAt** | [**DateTime**](DateTime.md) |  | [optional] [default to null]
**previousPaymentAmount** | [**Amount**](Amount.md) |  | [optional] [default to null]
**previousPaymentDateTime** | [**DateTime**](DateTime.md) |  | [optional] [default to null]
**chargeDetails** | [**List&lt;ChargeDetails&gt;**](ChargeDetails.md) |  | [optional] [default to []]
**scheduledPaymentType** | **String** |  | [optional] [default to null]
**scheduledPaymentDateTime** | [**DateTime**](DateTime.md) |  | [optional] [default to null]
**frequency** | [**FrequencyResponse**](FrequencyResponse.md) |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


