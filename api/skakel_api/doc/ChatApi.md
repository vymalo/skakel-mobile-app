# skakel_api.api.ChatApi

## Load the API package
```dart
import 'package:skakel_api/api.dart';
```

All URIs are relative to *https://skakel.ssegning.com/dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addMemberToChat**](ChatApi.md#addmembertochat) | **POST** /chats/{id}/members | Add a member to a chat
[**createChat**](ChatApi.md#createchat) | **POST** /chats | Create a new chat
[**deleteChat**](ChatApi.md#deletechat) | **DELETE** /chats/{id} | Delete a chat by ID
[**getAllChats**](ChatApi.md#getallchats) | **GET** /chats | Get all chats
[**getChatById**](ChatApi.md#getchatbyid) | **GET** /chats/{id} | Get a chat by ID
[**removeMemberFromChat**](ChatApi.md#removememberfromchat) | **DELETE** /chats/{id}/members/{userId} | Remove a member from a chat
[**updateChat**](ChatApi.md#updatechat) | **PUT** /chats/{id} | Update an existing chat


# **addMemberToChat**
> Chat addMemberToChat(id, user)

Add a member to a chat

### Example
```dart
import 'package:skakel_api/api.dart';
// TODO Configure HTTP basic authorization: oauth2
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').password = 'YOUR_PASSWORD';

final api = SkakelApi().getChatApi();
final int id = 789; // int | 
final User user = ; // User | User object that needs to be added as a member

try {
    final response = api.addMemberToChat(id, user);
    print(response);
} catch on DioError (e) {
    print('Exception when calling ChatApi->addMemberToChat: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **user** | [**User**](User.md)| User object that needs to be added as a member | [optional] 

### Return type

[**Chat**](Chat.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createChat**
> Chat createChat(chat)

Create a new chat

### Example
```dart
import 'package:skakel_api/api.dart';
// TODO Configure HTTP basic authorization: oauth2
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').password = 'YOUR_PASSWORD';

final api = SkakelApi().getChatApi();
final Chat chat = ; // Chat | Chat object that needs to be created

try {
    final response = api.createChat(chat);
    print(response);
} catch on DioError (e) {
    print('Exception when calling ChatApi->createChat: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chat** | [**Chat**](Chat.md)| Chat object that needs to be created | [optional] 

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
final int id = 789; // int | 

try {
    api.deleteChat(id);
} catch on DioError (e) {
    print('Exception when calling ChatApi->deleteChat: $e\n');
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
final int id = 789; // int | 

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
 **id** | **int**|  | 

### Return type

[**Chat**](Chat.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeMemberFromChat**
> removeMemberFromChat(id, userId)

Remove a member from a chat

### Example
```dart
import 'package:skakel_api/api.dart';
// TODO Configure HTTP basic authorization: oauth2
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').password = 'YOUR_PASSWORD';

final api = SkakelApi().getChatApi();
final int id = 789; // int | 
final int userId = 789; // int | 

try {
    api.removeMemberFromChat(id, userId);
} catch on DioError (e) {
    print('Exception when calling ChatApi->removeMemberFromChat: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **userId** | **int**|  | 

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateChat**
> Chat updateChat(id, chat)

Update an existing chat

### Example
```dart
import 'package:skakel_api/api.dart';
// TODO Configure HTTP basic authorization: oauth2
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').password = 'YOUR_PASSWORD';

final api = SkakelApi().getChatApi();
final int id = 789; // int | 
final Chat chat = ; // Chat | Chat object that needs to be updated

try {
    final response = api.updateChat(id, chat);
    print(response);
} catch on DioError (e) {
    print('Exception when calling ChatApi->updateChat: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **chat** | [**Chat**](Chat.md)| Chat object that needs to be updated | [optional] 

### Return type

[**Chat**](Chat.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

