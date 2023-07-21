# skakel_api.api.CallApi

## Load the API package
```dart
import 'package:skakel_api/api.dart';
```

All URIs are relative to *https://skakel.ssegning.com/dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**endCall**](CallApi.md#endcall) | **DELETE** /calls/{id} | End a call by ID
[**getCallById**](CallApi.md#getcallbyid) | **GET** /calls/{id} | Get a call by ID
[**getCallsByQuery**](CallApi.md#getcallsbyquery) | **GET** /calls | Get calls by query parameters
[**initiateCall**](CallApi.md#initiatecall) | **POST** /calls | Initiate a new call
[**inviteParticipantToCall**](CallApi.md#inviteparticipanttocall) | **POST** /calls/{id}/participants | Invite a participant to a call
[**removeParticipantFromCall**](CallApi.md#removeparticipantfromcall) | **DELETE** /calls/{id}/participants/{userId} | Remove a participant from a call


# **endCall**
> endCall(id)

End a call by ID

### Example
```dart
import 'package:skakel_api/api.dart';
// TODO Configure HTTP basic authorization: oauth2
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').password = 'YOUR_PASSWORD';

final api = SkakelApi().getCallApi();
final int id = 789; // int | 

try {
    api.endCall(id);
} catch on DioError (e) {
    print('Exception when calling CallApi->endCall: $e\n');
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

# **getCallById**
> Call getCallById(id)

Get a call by ID

### Example
```dart
import 'package:skakel_api/api.dart';
// TODO Configure HTTP basic authorization: oauth2
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').password = 'YOUR_PASSWORD';

final api = SkakelApi().getCallApi();
final int id = 789; // int | 

try {
    final response = api.getCallById(id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CallApi->getCallById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**Call**](Call.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCallsByQuery**
> BuiltList<Call> getCallsByQuery(userId, callType, startTime, endTime)

Get calls by query parameters

### Example
```dart
import 'package:skakel_api/api.dart';
// TODO Configure HTTP basic authorization: oauth2
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').password = 'YOUR_PASSWORD';

final api = SkakelApi().getCallApi();
final int userId = 789; // int | ID of the user associated with the calls
final String callType = callType_example; // String | Type of calls (e.g., Video, Audio)
final DateTime startTime = 2013-10-20T19:20:30+01:00; // DateTime | Start time for filtering calls (format yyyy-mm-ddTHH:mm:ssZ)
final DateTime endTime = 2013-10-20T19:20:30+01:00; // DateTime | End time for filtering calls (format yyyy-mm-ddTHH:mm:ssZ)

try {
    final response = api.getCallsByQuery(userId, callType, startTime, endTime);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CallApi->getCallsByQuery: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **int**| ID of the user associated with the calls | [optional] 
 **callType** | **String**| Type of calls (e.g., Video, Audio) | [optional] 
 **startTime** | **DateTime**| Start time for filtering calls (format yyyy-mm-ddTHH:mm:ssZ) | [optional] 
 **endTime** | **DateTime**| End time for filtering calls (format yyyy-mm-ddTHH:mm:ssZ) | [optional] 

### Return type

[**BuiltList&lt;Call&gt;**](Call.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **initiateCall**
> Call initiateCall(call)

Initiate a new call

### Example
```dart
import 'package:skakel_api/api.dart';
// TODO Configure HTTP basic authorization: oauth2
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').password = 'YOUR_PASSWORD';

final api = SkakelApi().getCallApi();
final Call call = ; // Call | Call object that needs to be initiated

try {
    final response = api.initiateCall(call);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CallApi->initiateCall: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **call** | [**Call**](Call.md)| Call object that needs to be initiated | [optional] 

### Return type

[**Call**](Call.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **inviteParticipantToCall**
> Call inviteParticipantToCall(id, user)

Invite a participant to a call

### Example
```dart
import 'package:skakel_api/api.dart';
// TODO Configure HTTP basic authorization: oauth2
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').password = 'YOUR_PASSWORD';

final api = SkakelApi().getCallApi();
final int id = 789; // int | 
final User user = ; // User | User object that needs to be invited as a participant

try {
    final response = api.inviteParticipantToCall(id, user);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CallApi->inviteParticipantToCall: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **user** | [**User**](User.md)| User object that needs to be invited as a participant | [optional] 

### Return type

[**Call**](Call.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeParticipantFromCall**
> removeParticipantFromCall(id, userId)

Remove a participant from a call

### Example
```dart
import 'package:skakel_api/api.dart';
// TODO Configure HTTP basic authorization: oauth2
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').password = 'YOUR_PASSWORD';

final api = SkakelApi().getCallApi();
final int id = 789; // int | 
final int userId = 789; // int | 

try {
    api.removeParticipantFromCall(id, userId);
} catch on DioError (e) {
    print('Exception when calling CallApi->removeParticipantFromCall: $e\n');
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

