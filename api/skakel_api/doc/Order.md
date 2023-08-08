# skakel_api.model.Order

## Load the model package
```dart
import 'package:skakel_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**createdAt** | [**DateTime**](DateTime.md) |  | [optional] 
**updatedAt** | [**DateTime**](DateTime.md) |  | [optional] 
**version** | **int** |  | [optional] 
**syncStatus** | [**SyncStatus**](SyncStatus.md) |  | [optional] 
**items** | [**BuiltList&lt;OrderItem&gt;**](OrderItem.md) |  | 
**totalAmount** | **int** |  | 
**timestamp** | [**DateTime**](DateTime.md) |  | [optional] 
**status** | **String** |  | [optional] 
**buyer** | [**User**](User.md) |  | 
**seller** | [**User**](User.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


