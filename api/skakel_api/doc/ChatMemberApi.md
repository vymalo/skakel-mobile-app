# skakel_api.api.ChatMemberApi

## Load the API package
```dart
import 'package:skakel_api/api.dart';
```

All URIs are relative to *https://skakel.apps.ssegning.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addMemberToChat**](ChatMemberApi.md#addmembertochat) | **POST** /chats-members | Add a member to a chat
[**getChatMemberById**](ChatMemberApi.md#getchatmemberbyid) | **GET** /chats-members/{id} | Get a chat member by ID
[**getChatMembersByChatId**](ChatMemberApi.md#getchatmembersbychatid) | **GET** /chats-members | Get chat members by chat ID
[**removeMemberFromChat**](ChatMemberApi.md#removememberfromchat) | **DELETE** /chats-members/{id} | Remove a member from a chat
[**updateChatMember**](ChatMemberApi.md#updatechatmember) | **PUT** /chats-members/{id} | Update an existing chat member


# **addMemberToChat**
> ChatMember addMemberToChat(chatMemberInfo)

Add a member to a chat

### Example
```dart
import 'package:skakel_api/api.dart';
// TODO Configure HTTP basic authorization: oauth2
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').password = 'YOUR_PASSWORD';

final api = SkakelApi().getChatMemberApi();
final ChatMemberInfo chatMemberInfo = ; // ChatMemberInfo | User object that needs to be added as a member

try {
    final response = api.addMemberToChat(chatMemberInfo);
    print(response);
} catch on DioError (e) {
    print('Exception when calling ChatMemberApi->addMemberToChat: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chatMemberInfo** | [**ChatMemberInfo**](ChatMemberInfo.md)| User object that needs to be added as a member | [optional] 

### Return type

[**ChatMember**](ChatMember.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getChatMemberById**
> ChatMember getChatMemberById(id)

Get a chat member by ID

### Example
```dart
import 'package:skakel_api/api.dart';
// TODO Configure HTTP basic authorization: oauth2
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').password = 'YOUR_PASSWORD';

final api = SkakelApi().getChatMemberApi();
final String id = id_example; // String | Chat member ID

try {
    final response = api.getChatMemberById(id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling ChatMemberApi->getChatMemberById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Chat member ID | 

### Return type

[**ChatMember**](ChatMember.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getChatMembersByChatId**
> ChatMember getChatMembersByChatId(chatId)

Get chat members by chat ID

### Example
```dart
import 'package:skakel_api/api.dart';
// TODO Configure HTTP basic authorization: oauth2
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').password = 'YOUR_PASSWORD';

final api = SkakelApi().getChatMemberApi();
final String chatId = chatId_example; // String | 

try {
    final response = api.getChatMembersByChatId(chatId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling ChatMemberApi->getChatMembersByChatId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chatId** | **String**|  | 

### Return type

[**ChatMember**](ChatMember.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeMemberFromChat**
> removeMemberFromChat(id)

Remove a member from a chat

### Example
```dart
import 'package:skakel_api/api.dart';
// TODO Configure HTTP basic authorization: oauth2
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').password = 'YOUR_PASSWORD';

final api = SkakelApi().getChatMemberApi();
final String id = id_example; // String | Chat member ID

try {
    api.removeMemberFromChat(id);
} catch on DioError (e) {
    print('Exception when calling ChatMemberApi->removeMemberFromChat: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Chat member ID | 

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateChatMember**
> ChatMember updateChatMember(id, chatMemberInfo)

Update an existing chat member

### Example
```dart
import 'package:skakel_api/api.dart';
// TODO Configure HTTP basic authorization: oauth2
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').password = 'YOUR_PASSWORD';

final api = SkakelApi().getChatMemberApi();
final String id = id_example; // String | Chat member ID
final ChatMemberInfo chatMemberInfo = ; // ChatMemberInfo | ChatMember object that needs to be updated

try {
    final response = api.updateChatMember(id, chatMemberInfo);
    print(response);
} catch on DioError (e) {
    print('Exception when calling ChatMemberApi->updateChatMember: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Chat member ID | 
 **chatMemberInfo** | [**ChatMemberInfo**](ChatMemberInfo.md)| ChatMember object that needs to be updated | [optional] 

### Return type

[**ChatMember**](ChatMember.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

