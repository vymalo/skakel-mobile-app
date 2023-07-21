# skakel_api.api.ChatMessageApi

## Load the API package
```dart
import 'package:skakel_api/api.dart';
```

All URIs are relative to *https://skakel.ssegning.com/dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addReactionToChatMessage**](ChatMessageApi.md#addreactiontochatmessage) | **POST** /chat-messages/{id}/reactions | Add a reaction to a chat message
[**deleteChatMessage**](ChatMessageApi.md#deletechatmessage) | **DELETE** /chat-messages/{id} | Delete a chat message by ID
[**getAllChatMessages**](ChatMessageApi.md#getallchatmessages) | **GET** /chat-messages | Get all chat messages
[**getChatMessageById**](ChatMessageApi.md#getchatmessagebyid) | **GET** /chat-messages/{id} | Get a chat message by ID
[**removeReactionFromChatMessage**](ChatMessageApi.md#removereactionfromchatmessage) | **DELETE** /chat-messages/{id}/reactions/{reaction} | Remove a reaction from a chat message
[**sendMessageToChat**](ChatMessageApi.md#sendmessagetochat) | **POST** /chats/{id}/messages | Send a message to a chat
[**updateChatMessage**](ChatMessageApi.md#updatechatmessage) | **PUT** /chat-messages/{id} | Update an existing chat message


# **addReactionToChatMessage**
> addReactionToChatMessage(id, chatReaction)

Add a reaction to a chat message

### Example
```dart
import 'package:skakel_api/api.dart';
// TODO Configure HTTP basic authorization: oauth2
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').password = 'YOUR_PASSWORD';

final api = SkakelApi().getChatMessageApi();
final int id = 789; // int | 
final ChatReaction chatReaction = ; // ChatReaction | Reaction object that needs to be added to the chat message

try {
    api.addReactionToChatMessage(id, chatReaction);
} catch on DioError (e) {
    print('Exception when calling ChatMessageApi->addReactionToChatMessage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **chatReaction** | [**ChatReaction**](ChatReaction.md)| Reaction object that needs to be added to the chat message | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteChatMessage**
> deleteChatMessage(id)

Delete a chat message by ID

### Example
```dart
import 'package:skakel_api/api.dart';
// TODO Configure HTTP basic authorization: oauth2
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').password = 'YOUR_PASSWORD';

final api = SkakelApi().getChatMessageApi();
final int id = 789; // int | 

try {
    api.deleteChatMessage(id);
} catch on DioError (e) {
    print('Exception when calling ChatMessageApi->deleteChatMessage: $e\n');
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

# **getAllChatMessages**
> BuiltList<ChatMessage> getAllChatMessages()

Get all chat messages

### Example
```dart
import 'package:skakel_api/api.dart';
// TODO Configure HTTP basic authorization: oauth2
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').password = 'YOUR_PASSWORD';

final api = SkakelApi().getChatMessageApi();

try {
    final response = api.getAllChatMessages();
    print(response);
} catch on DioError (e) {
    print('Exception when calling ChatMessageApi->getAllChatMessages: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;ChatMessage&gt;**](ChatMessage.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getChatMessageById**
> ChatMessage getChatMessageById(id)

Get a chat message by ID

### Example
```dart
import 'package:skakel_api/api.dart';
// TODO Configure HTTP basic authorization: oauth2
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').password = 'YOUR_PASSWORD';

final api = SkakelApi().getChatMessageApi();
final int id = 789; // int | 

try {
    final response = api.getChatMessageById(id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling ChatMessageApi->getChatMessageById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**ChatMessage**](ChatMessage.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeReactionFromChatMessage**
> removeReactionFromChatMessage(id, reaction)

Remove a reaction from a chat message

### Example
```dart
import 'package:skakel_api/api.dart';
// TODO Configure HTTP basic authorization: oauth2
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').password = 'YOUR_PASSWORD';

final api = SkakelApi().getChatMessageApi();
final int id = 789; // int | 
final String reaction = reaction_example; // String | 

try {
    api.removeReactionFromChatMessage(id, reaction);
} catch on DioError (e) {
    print('Exception when calling ChatMessageApi->removeReactionFromChatMessage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **reaction** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendMessageToChat**
> ChatMessage sendMessageToChat(id, chatMessage)

Send a message to a chat

### Example
```dart
import 'package:skakel_api/api.dart';
// TODO Configure HTTP basic authorization: oauth2
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').password = 'YOUR_PASSWORD';

final api = SkakelApi().getChatMessageApi();
final int id = 789; // int | 
final ChatMessage chatMessage = ; // ChatMessage | ChatMessage object that needs to be sent

try {
    final response = api.sendMessageToChat(id, chatMessage);
    print(response);
} catch on DioError (e) {
    print('Exception when calling ChatMessageApi->sendMessageToChat: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **chatMessage** | [**ChatMessage**](ChatMessage.md)| ChatMessage object that needs to be sent | [optional] 

### Return type

[**ChatMessage**](ChatMessage.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateChatMessage**
> ChatMessage updateChatMessage(id, chatMessage)

Update an existing chat message

### Example
```dart
import 'package:skakel_api/api.dart';
// TODO Configure HTTP basic authorization: oauth2
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').password = 'YOUR_PASSWORD';

final api = SkakelApi().getChatMessageApi();
final int id = 789; // int | 
final ChatMessage chatMessage = ; // ChatMessage | ChatMessage object that needs to be updated

try {
    final response = api.updateChatMessage(id, chatMessage);
    print(response);
} catch on DioError (e) {
    print('Exception when calling ChatMessageApi->updateChatMessage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **chatMessage** | [**ChatMessage**](ChatMessage.md)| ChatMessage object that needs to be updated | [optional] 

### Return type

[**ChatMessage**](ChatMessage.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

