# skakel_api.api.ChatApi

## Load the API package
```dart
import 'package:skakel_api/api.dart';
```

All URIs are relative to *https://skakel.apps.ssegning.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createChat**](ChatApi.md#createchat) | **POST** /chats | Create a new chat
[**deleteChat**](ChatApi.md#deletechat) | **DELETE** /chats/{id} | Delete a chat by ID
[**getAllChats**](ChatApi.md#getallchats) | **GET** /chats | Get all chats
[**getChatById**](ChatApi.md#getchatbyid) | **GET** /chats/{id} | Get a chat by ID
[**updateChat**](ChatApi.md#updatechat) | **PUT** /chats/{id} | Update an existing chat


# **createChat**
> Chat createChat(chatInfo)

Create a new chat

### Example
```dart
import 'package:skakel_api/api.dart';
// TODO Configure HTTP basic authorization: oauth2
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').password = 'YOUR_PASSWORD';

final api = SkakelApi().getChatApi();
final ChatInfo chatInfo = ; // ChatInfo | Chat object that needs to be created

try {
    final response = api.createChat(chatInfo);
    print(response);
} catch on DioError (e) {
    print('Exception when calling ChatApi->createChat: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chatInfo** | [**ChatInfo**](ChatInfo.md)| Chat object that needs to be created | [optional] 

### Return type

[**Chat**](Chat.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteChat**
> deleteChat(id)

Delete a chat by ID

### Example
```dart
import 'package:skakel_api/api.dart';
// TODO Configure HTTP basic authorization: oauth2
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').password = 'YOUR_PASSWORD';

final api = SkakelApi().getChatApi();
final String id = id_example; // String | 

try {
    api.deleteChat(id);
} catch on DioError (e) {
    print('Exception when calling ChatApi->deleteChat: $e\n');
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

# **getAllChats**
> BuiltList<Chat> getAllChats()

Get all chats

### Example
```dart
import 'package:skakel_api/api.dart';
// TODO Configure HTTP basic authorization: oauth2
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').password = 'YOUR_PASSWORD';

final api = SkakelApi().getChatApi();

try {
    final response = api.getAllChats();
    print(response);
} catch on DioError (e) {
    print('Exception when calling ChatApi->getAllChats: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;Chat&gt;**](Chat.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getChatById**
> Chat getChatById(id)

Get a chat by ID

### Example
```dart
import 'package:skakel_api/api.dart';
// TODO Configure HTTP basic authorization: oauth2
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').password = 'YOUR_PASSWORD';

final api = SkakelApi().getChatApi();
final String id = id_example; // String | 

try {
    final response = api.getChatById(id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling ChatApi->getChatById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**Chat**](Chat.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateChat**
> Chat updateChat(id, chatInfo)

Update an existing chat

### Example
```dart
import 'package:skakel_api/api.dart';
// TODO Configure HTTP basic authorization: oauth2
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').password = 'YOUR_PASSWORD';

final api = SkakelApi().getChatApi();
final String id = id_example; // String | 
final ChatInfo chatInfo = ; // ChatInfo | Chat object that needs to be updated

try {
    final response = api.updateChat(id, chatInfo);
    print(response);
} catch on DioError (e) {
    print('Exception when calling ChatApi->updateChat: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **chatInfo** | [**ChatInfo**](ChatInfo.md)| Chat object that needs to be updated | [optional] 

### Return type

[**Chat**](Chat.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

