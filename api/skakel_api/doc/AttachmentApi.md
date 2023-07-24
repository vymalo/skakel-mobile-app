# skakel_api.api.AttachmentApi

## Load the API package
```dart
import 'package:skakel_api/api.dart';
```

All URIs are relative to *https://skakel.ssegning.com/dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteAttachment**](AttachmentApi.md#deleteattachment) | **DELETE** /attachments/{id} | Delete an attachment by ID
[**getAttachmentById**](AttachmentApi.md#getattachmentbyid) | **GET** /attachments/{id} | Get an attachment by ID
[**getAttachmentsByQuery**](AttachmentApi.md#getattachmentsbyquery) | **GET** /attachments | Get attachments by query parameters
[**uploadAttachment**](AttachmentApi.md#uploadattachment) | **POST** /attachments | Upload a new attachment


# **deleteAttachment**
> deleteAttachment(id)

Delete an attachment by ID

### Example
```dart
import 'package:skakel_api/api.dart';
// TODO Configure HTTP basic authorization: oauth2
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').password = 'YOUR_PASSWORD';

final api = SkakelApi().getAttachmentApi();
final int id = 789; // int | 

try {
    api.deleteAttachment(id);
} catch on DioError (e) {
    print('Exception when calling AttachmentApi->deleteAttachment: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAttachmentById**
> Uint8List getAttachmentById(id)

Get an attachment by ID

### Example
```dart
import 'package:skakel_api/api.dart';
// TODO Configure HTTP basic authorization: oauth2
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').password = 'YOUR_PASSWORD';

final api = SkakelApi().getAttachmentApi();
final int id = 789; // int | 

try {
    final response = api.getAttachmentById(id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling AttachmentApi->getAttachmentById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**Uint8List**](Uint8List.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAttachmentsByQuery**
> BuiltList<Attachment> getAttachmentsByQuery(chatId, userId, attachmentType)

Get attachments by query parameters

### Example
```dart
import 'package:skakel_api/api.dart';
// TODO Configure HTTP basic authorization: oauth2
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').password = 'YOUR_PASSWORD';

final api = SkakelApi().getAttachmentApi();
final int chatId = 789; // int | ID of the chat associated with the attachments
final int userId = 789; // int | ID of the user associated with the attachments
final String attachmentType = attachmentType_example; // String | Type of attachments (e.g., image, document, video)

try {
    final response = api.getAttachmentsByQuery(chatId, userId, attachmentType);
    print(response);
} catch on DioError (e) {
    print('Exception when calling AttachmentApi->getAttachmentsByQuery: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chatId** | **int**| ID of the chat associated with the attachments | [optional] 
 **userId** | **int**| ID of the user associated with the attachments | [optional] 
 **attachmentType** | **String**| Type of attachments (e.g., image, document, video) | [optional] 

### Return type

[**BuiltList&lt;Attachment&gt;**](Attachment.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uploadAttachment**
> uploadAttachment(body)

Upload a new attachment

### Example
```dart
import 'package:skakel_api/api.dart';
// TODO Configure HTTP basic authorization: oauth2
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').password = 'YOUR_PASSWORD';

final api = SkakelApi().getAttachmentApi();
final MultipartFile body = BINARY_DATA_HERE; // MultipartFile | Attachment data to be uploaded

try {
    api.uploadAttachment(body);
} catch on DioError (e) {
    print('Exception when calling AttachmentApi->uploadAttachment: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **MultipartFile**| Attachment data to be uploaded | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/octet-stream
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

