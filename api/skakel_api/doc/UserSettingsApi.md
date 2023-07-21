# skakel_api.api.UserSettingsApi

## Load the API package
```dart
import 'package:skakel_api/api.dart';
```

All URIs are relative to *https://skakel.ssegning.com/dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getUserSettingsById**](UserSettingsApi.md#getusersettingsbyid) | **GET** /users/{id}/settings | Get user settings by user ID
[**updateUserSettings**](UserSettingsApi.md#updateusersettings) | **PUT** /users/{id}/settings | Update user settings


# **getUserSettingsById**
> UserSettings getUserSettingsById(id)

Get user settings by user ID

### Example
```dart
import 'package:skakel_api/api.dart';
// TODO Configure HTTP basic authorization: oauth2
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').password = 'YOUR_PASSWORD';

final api = SkakelApi().getUserSettingsApi();
final int id = 789; // int | 

try {
    final response = api.getUserSettingsById(id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UserSettingsApi->getUserSettingsById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**UserSettings**](UserSettings.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateUserSettings**
> UserSettings updateUserSettings(id, userSettings)

Update user settings

### Example
```dart
import 'package:skakel_api/api.dart';
// TODO Configure HTTP basic authorization: oauth2
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').password = 'YOUR_PASSWORD';

final api = SkakelApi().getUserSettingsApi();
final int id = 789; // int | 
final UserSettings userSettings = ; // UserSettings | User settings object that needs to be updated

try {
    final response = api.updateUserSettings(id, userSettings);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UserSettingsApi->updateUserSettings: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **userSettings** | [**UserSettings**](UserSettings.md)| User settings object that needs to be updated | [optional] 

### Return type

[**UserSettings**](UserSettings.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

