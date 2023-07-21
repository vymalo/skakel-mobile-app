# skakel_api.api.PaymentApi

## Load the API package
```dart
import 'package:skakel_api/api.dart';
```

All URIs are relative to *https://skakel.ssegning.com/dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancelPaymentTransaction**](PaymentApi.md#cancelpaymenttransaction) | **POST** /payment/transactions/{id}/cancel | Cancel a payment transaction by ID
[**confirmPaymentTransaction**](PaymentApi.md#confirmpaymenttransaction) | **POST** /payment/transactions/{id}/confirm | Confirm a payment transaction by ID
[**getPaymentTransactionById**](PaymentApi.md#getpaymenttransactionbyid) | **GET** /payment/transactions/{id} | Get a payment transaction by ID
[**initiatePaymentTransaction**](PaymentApi.md#initiatepaymenttransaction) | **POST** /payment/transactions | Initiate a new payment transaction


# **cancelPaymentTransaction**
> PaymentTransaction cancelPaymentTransaction(id)

Cancel a payment transaction by ID

### Example
```dart
import 'package:skakel_api/api.dart';
// TODO Configure HTTP basic authorization: oauth2
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').password = 'YOUR_PASSWORD';

final api = SkakelApi().getPaymentApi();
final int id = 789; // int | 

try {
    final response = api.cancelPaymentTransaction(id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling PaymentApi->cancelPaymentTransaction: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**PaymentTransaction**](PaymentTransaction.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **confirmPaymentTransaction**
> PaymentTransaction confirmPaymentTransaction(id)

Confirm a payment transaction by ID

### Example
```dart
import 'package:skakel_api/api.dart';
// TODO Configure HTTP basic authorization: oauth2
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').password = 'YOUR_PASSWORD';

final api = SkakelApi().getPaymentApi();
final int id = 789; // int | 

try {
    final response = api.confirmPaymentTransaction(id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling PaymentApi->confirmPaymentTransaction: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**PaymentTransaction**](PaymentTransaction.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPaymentTransactionById**
> PaymentTransaction getPaymentTransactionById(id)

Get a payment transaction by ID

### Example
```dart
import 'package:skakel_api/api.dart';
// TODO Configure HTTP basic authorization: oauth2
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').password = 'YOUR_PASSWORD';

final api = SkakelApi().getPaymentApi();
final int id = 789; // int | 

try {
    final response = api.getPaymentTransactionById(id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling PaymentApi->getPaymentTransactionById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**PaymentTransaction**](PaymentTransaction.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **initiatePaymentTransaction**
> PaymentTransaction initiatePaymentTransaction(paymentInfo)

Initiate a new payment transaction

### Example
```dart
import 'package:skakel_api/api.dart';
// TODO Configure HTTP basic authorization: oauth2
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').password = 'YOUR_PASSWORD';

final api = SkakelApi().getPaymentApi();
final PaymentInfo paymentInfo = ; // PaymentInfo | Payment information for the transaction

try {
    final response = api.initiatePaymentTransaction(paymentInfo);
    print(response);
} catch on DioError (e) {
    print('Exception when calling PaymentApi->initiatePaymentTransaction: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **paymentInfo** | [**PaymentInfo**](PaymentInfo.md)| Payment information for the transaction | [optional] 

### Return type

[**PaymentTransaction**](PaymentTransaction.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

