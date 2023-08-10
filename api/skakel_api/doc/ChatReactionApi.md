# skakel_api.api.ChatReactionApi

## Load the API package
```dart
import 'package:skakel_api/api.dart';
```

All URIs are relative to *https://skakel.apps.ssegning.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addReactionToChatMessage**](ChatReactionApi.md#addreactiontochatmessage) | **POST** /chat-reactions | Add a reaction to a chat message
[**getReactionFromChatMessage**](ChatReactionApi.md#getreactionfromchatmessage) | **GET** /chat-reactions/{id} | Remove a reaction from a chat message
[**getReactionsFromChatMessage**](ChatReactionApi.md#getreactionsfromchatmessage) | **GET** /chat-reactions | Get reactions from a chat message
[**putReactionFromChatMessage**](ChatReactionApi.md#putreactionfromchatmessage) | **PUT** /chat-reactions/{id} | Put a reaction from a chat message
[**removeReactionFromChatMessage**](ChatReactionApi.md#removereactionfromchatmessage) | **DELETE** /chat-reactions/{id} | Remove a reaction from a chat message


# **addReactionToChatMessage**
> ChatReaction addReactionToChatMessage(chatReaction)

Add a reaction to a chat message

### Example
```dart
import 'package:skakel_api/api.dart';
// TODO Configure HTTP basic authorization: oauth2
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').password = 'YOUR_PASSWORD';

final api = SkakelApi().getChatReactionApi();
final ChatReaction chatReaction = ; // ChatReaction | Reaction object that needs to be added to the chat message

try {
    final response = api.addReactionToChatMessage(chatReaction);
    print(response);
} catch on DioError (e) {
    print('Exception when calling ChatReactionApi->addReactionToChatMessage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chatReaction** | [**ChatReaction**](ChatReaction.md)| Reaction object that needs to be added to the chat message | [optional] 

### Return type

[**ChatReaction**](ChatReaction.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getReactionFromChatMessage**
> ChatReaction getReactionFromChatMessage(id)

Remove a reaction from a chat message

### Example
```dart
import 'package:skakel_api/api.dart';
// TODO Configure HTTP basic authorization: oauth2
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').password = 'YOUR_PASSWORD';

final api = SkakelApi().getChatReactionApi();
final String id = id_example; // String | 

try {
    final response = api.getReactionFromChatMessage(id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling ChatReactionApi->getReactionFromChatMessage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**ChatReaction**](ChatReaction.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getReactionsFromChatMessage**
> BuiltList<ChatReaction> getReactionsFromChatMessage(chatId)

Get reactions from a chat message

### Example
```dart
import 'package:skakel_api/api.dart';
// TODO Configure HTTP basic authorization: oauth2
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').password = 'YOUR_PASSWORD';

final api = SkakelApi().getChatReactionApi();
final String chatId = chatId_example; // String | 

try {
    final response = api.getReactionsFromChatMessage(chatId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling ChatReactionApi->getReactionsFromChatMessage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chatId** | **String**|  | 

### Return type

[**BuiltList&lt;ChatReaction&gt;**](ChatReaction.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putReactionFromChatMessage**
> BuiltList<ChatReaction> putReactionFromChatMessage(id, chatReactionInfo)

Put a reaction from a chat message

### Example
```dart
import 'package:skakel_api/api.dart';
// TODO Configure HTTP basic authorization: oauth2
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').password = 'YOUR_PASSWORD';

final api = SkakelApi().getChatReactionApi();
final String id = id_example; // String | 
final ChatReactionInfo chatReactionInfo = ; // ChatReactionInfo | Reaction object that needs to be added to the chat message

try {
    final response = api.putReactionFromChatMessage(id, chatReactionInfo);
    print(response);
} catch on DioError (e) {
    print('Exception when calling ChatReactionApi->putReactionFromChatMessage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **chatReactionInfo** | [**ChatReactionInfo**](ChatReactionInfo.md)| Reaction object that needs to be added to the chat message | [optional] 

### Return type

[**BuiltList&lt;ChatReaction&gt;**](ChatReaction.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeReactionFromChatMessage**
> removeReactionFromChatMessage(id)

Remove a reaction from a chat message

### Example
```dart
import 'package:skakel_api/api.dart';
// TODO Configure HTTP basic authorization: oauth2
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').password = 'YOUR_PASSWORD';

final api = SkakelApi().getChatReactionApi();
final String id = id_example; // String | 

try {
    api.removeReactionFromChatMessage(id);
} catch on DioError (e) {
    print('Exception when calling ChatReactionApi->removeReactionFromChatMessage: $e\n');
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

