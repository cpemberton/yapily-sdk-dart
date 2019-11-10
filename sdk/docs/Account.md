# yapily_sdk.model.Account

## Load the model package
```dart
import 'package:yapily_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Account Id returned by the institution if present | [optional] [default to null]
**type** | **String** |  | [optional] [default to null]
**description** | **String** | Product name as defined by the financial institution for this account | [optional] [default to null]
**balance** | **num** |  | [optional] [default to null]
**currency** | **String** | ISO 4217 currency code | [optional] [default to null]
**usageType** | **String** |  | [optional] [default to null]
**accountType** | **String** |  | [optional] [default to null]
**nickname** | **String** | Name of the account as defined by the financial institution or the end user | [optional] [default to null]
**details** | **String** | Specifications that might be provided by the institution - characteristics of the account - characteristics of the relevant card | [optional] [default to null]
**accountNames** | [**List&lt;AccountName&gt;**](AccountName.md) |  | [optional] [default to const []]
**accountIdentifications** | [**List&lt;AccountIdentification&gt;**](AccountIdentification.md) |  | [optional] [default to const []]
**accountBalances** | [**List&lt;AccountBalance&gt;**](AccountBalance.md) |  | [optional] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


