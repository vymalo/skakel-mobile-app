# skakel_api.api.ChatMessageApi

## Load the API package
```dart
import 'package:skakel_api/api.dart';
```

All URIs are relative to *https://skakel.apps.ssegning.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteChatMessage**](ChatMessageApi.md#deletechatmessage) | **DELETE** /chat-messages/{id} | Delete a chat message by ID
[**getAllChatMessages**](ChatMessageApi.md#getallchatmessages) | **GET** /chat-messages | Get all chat messages
[**getChatMessageById**](ChatMessageApi.md#getchatmessagebyid) | **GET** /chat-messages/{id} | Get a chat message by ID
[**sendMessageToChat**](ChatMessageApi.md#sendmessagetochat) | **POST** /chats-messages | Send a message to a chat
[**updateChatMessage**](ChatMessageApi.md#updatechatmessage) | **PUT** /chat-messages/{id} | Update an existing chat message


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
final String id = id_example; // String | 

try {
    api.deleteChatMessage(id);
} catch on DioError (e) {
    print('Exception when calling ChatMessageApi->deleteChatMessage: $e\n');
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
final String id = id_example; // String | 

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
 **id** | **String**|  | 

### Return type

[**ChatMessage**](ChatMessage.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendMessageToChat**
> ChatMessage sendMessageToChat(chatMessageInfo)

Send a message to a chat

### Example
```dart
import 'package:skakel_api/api.dart';
// TODO Configure HTTP basic authorization: oauth2
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').password = 'YOUR_PASSWORD';

final api = SkakelApi().getChatMessageApi();
final ChatMessageInfo chatMessageInfo = ; // ChatMessageInfo | ChatMessage object that needs to be sent

try {
    final response = api.sendMessageToChat(chatMessageInfo);
    print(response);
} catch on DioError (e) {
    print('Exception when calling ChatMessageApi->sendMessageToChat: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chatMessageInfo** | [**ChatMessageInfo**](ChatMessageInfo.md)| ChatMessage object that needs to be sent | 

### Return type

[**ChatMessage**](ChatMessage.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateChatMessage**
> ChatMessage updateChatMessage(id, chatMessageInfo)

Update an existing chat message

### Example
```dart
import 'package:skakel_api/api.dart';
// TODO Configure HTTP basic authorization: oauth2
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').password = 'YOUR_PASSWORD';

final api = SkakelApi().getChatMessageApi();
final String id = id_example; // String | 
final ChatMessageInfo chatMessageInfo = ; // ChatMessageInfo | ChatMessage object that needs to be updated

try {
    final response = api.updateChatMessage(id, chatMessageInfo);
    print(response);
} catch on DioError (e) {
    print('Exception when calling ChatMessageApi->updateChatMessage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **chatMessageInfo** | [**ChatMessageInfo**](ChatMessageInfo.md)| ChatMessage object that needs to be updated | [optional] 

### Return type

[**ChatMessage**](ChatMessage.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

