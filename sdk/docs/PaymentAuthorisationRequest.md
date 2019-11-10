# yapily_sdk.model.PaymentAuthorisationRequest

## Load the model package
```dart
import 'package:yapily_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**userUuid** | **String** |  | [optional] [default to null]
**applicationUserId** | **String** |  | [optional] [default to null]
**forwardParameters** | **List&lt;String&gt;** |  | [optional] [default to []]
**institutionId** | **String** |  | [default to null]
**callback** | **String** |  | [default to null]
**oneTimeToken** | **bool** |  | [default to null]
**paymentRequest** | [**PaymentRequest**](PaymentRequest.md) |  | [default to null]
**totalMaxAmount** | **num** |  | [optional] [default to null]
**totalMaxAmountFrequency** | **String** |  | [optional] [default to null]
**maxAmountPerRequest** | **num** |  | [optional] [default to null]
**startsAt** | [**DateTime**](DateTime.md) |  | [optional] [default to null]
**expiresAt** | [**DateTime**](DateTime.md) |  | [optional] [default to null]
**allowOverdraft** | **bool** |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


