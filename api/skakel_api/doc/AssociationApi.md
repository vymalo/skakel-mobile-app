# skakel_api.api.AssociationApi

## Load the API package
```dart
import 'package:skakel_api/api.dart';
```

All URIs are relative to *https://skakel.apps.ssegning.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addAssociation**](AssociationApi.md#addassociation) | **POST** /associations | Add an association by ID
[**deleteAssociationById**](AssociationApi.md#deleteassociationbyid) | **DELETE** /associations/{id} | Delete an Association by ID
[**getAssociationById**](AssociationApi.md#getassociationbyid) | **GET** /associations/{id} | Get a association by ID
[**queryAssociations**](AssociationApi.md#queryassociations) | **GET** /associations | Get all Associations
[**updateAssociationById**](AssociationApi.md#updateassociationbyid) | **PUT** /associations/{id} | Update a association by ID


# **addAssociation**
> Association addAssociation(associationInfo)

Add an association by ID

### Example
```dart
import 'package:skakel_api/api.dart';
// TODO Configure HTTP basic authorization: oauth2
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').password = 'YOUR_PASSWORD';

final api = SkakelApi().getAssociationApi();
final AssociationInfo associationInfo = ; // AssociationInfo | Association details for adding the association

try {
    final response = api.addAssociation(associationInfo);
    print(response);
} catch on DioError (e) {
    print('Exception when calling AssociationApi->addAssociation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **associationInfo** | [**AssociationInfo**](AssociationInfo.md)| Association details for adding the association | [optional] 

### Return type

[**Association**](Association.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteAssociationById**
> deleteAssociationById(id)

Delete an Association by ID

### Example
```dart
import 'package:skakel_api/api.dart';
// TODO Configure HTTP basic authorization: oauth2
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').password = 'YOUR_PASSWORD';

final api = SkakelApi().getAssociationApi();
final String id = id_example; // String | 

try {
    api.deleteAssociationById(id);
} catch on DioError (e) {
    print('Exception when calling AssociationApi->deleteAssociationById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAssociationById**
> Association getAssociationById(id)

Get a association by ID

### Example
```dart
import 'package:skakel_api/api.dart';
// TODO Configure HTTP basic authorization: oauth2
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').password = 'YOUR_PASSWORD';

final api = SkakelApi().getAssociationApi();
final String id = id_example; // String | 

try {
    final response = api.getAssociationById(id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling AssociationApi->getAssociationById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**Association**](Association.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **queryAssociations**
> BuiltList<Association> queryAssociations()

Get all Associations

### Example
```dart
import 'package:skakel_api/api.dart';
// TODO Configure HTTP basic authorization: oauth2
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').password = 'YOUR_PASSWORD';

final api = SkakelApi().getAssociationApi();

try {
    final response = api.queryAssociations();
    print(response);
} catch on DioError (e) {
    print('Exception when calling AssociationApi->queryAssociations: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;Association&gt;**](Association.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateAssociationById**
> Association updateAssociationById(id, associationInfo)

Update a association by ID

### Example
```dart
import 'package:skakel_api/api.dart';
// TODO Configure HTTP basic authorization: oauth2
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').password = 'YOUR_PASSWORD';

final api = SkakelApi().getAssociationApi();
final String id = id_example; // String | 
final AssociationInfo associationInfo = ; // AssociationInfo | Association details for adding the association

try {
    final response = api.updateAssociationById(id, associationInfo);
    print(response);
} catch on DioError (e) {
    print('Exception when calling AssociationApi->updateAssociationById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **associationInfo** | [**AssociationInfo**](AssociationInfo.md)| Association details for adding the association | [optional] 

### Return type

[**Association**](Association.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

