# skakel_api.api.OrderApi

## Load the API package
```dart
import 'package:skakel_api/api.dart';
```

All URIs are relative to *https://skakel.ssegning.com/dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancelOrder**](OrderApi.md#cancelorder) | **POST** /orders/{id}/cancel | Cancel an order by ID
[**getOrderById**](OrderApi.md#getorderbyid) | **GET** /orders/{id} | Get an order by ID
[**getOrdersByQuery**](OrderApi.md#getordersbyquery) | **GET** /orders | Get orders by query parameters
[**placeOrder**](OrderApi.md#placeorder) | **POST** /orders | Place a new order


# **cancelOrder**
> Order cancelOrder(id)

Cancel an order by ID

### Example
```dart
import 'package:skakel_api/api.dart';
// TODO Configure HTTP basic authorization: oauth2
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').password = 'YOUR_PASSWORD';

final api = SkakelApi().getOrderApi();
final String id = id_example; // String | 

try {
    final response = api.cancelOrder(id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling OrderApi->cancelOrder: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**Order**](Order.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrderById**
> Order getOrderById(id)

Get an order by ID

### Example
```dart
import 'package:skakel_api/api.dart';
// TODO Configure HTTP basic authorization: oauth2
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').password = 'YOUR_PASSWORD';

final api = SkakelApi().getOrderApi();
final String id = id_example; // String | 

try {
    final response = api.getOrderById(id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling OrderApi->getOrderById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**Order**](Order.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrdersByQuery**
> BuiltList<Order> getOrdersByQuery(userId, status, startDate, endDate)

Get orders by query parameters

### Example
```dart
import 'package:skakel_api/api.dart';
// TODO Configure HTTP basic authorization: oauth2
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').password = 'YOUR_PASSWORD';

final api = SkakelApi().getOrderApi();
final String userId = userId_example; // String | ID of the user who placed the orders
final String status = status_example; // String | Status of the orders (e.g., pending, shipped, delivered)
final Date startDate = 2013-10-20; // Date | Start date for filtering orders (format yyyy-mm-dd)
final Date endDate = 2013-10-20; // Date | End date for filtering orders (format yyyy-mm-dd)

try {
    final response = api.getOrdersByQuery(userId, status, startDate, endDate);
    print(response);
} catch on DioError (e) {
    print('Exception when calling OrderApi->getOrdersByQuery: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| ID of the user who placed the orders | [optional] 
 **status** | **String**| Status of the orders (e.g., pending, shipped, delivered) | [optional] 
 **startDate** | **Date**| Start date for filtering orders (format yyyy-mm-dd) | [optional] 
 **endDate** | **Date**| End date for filtering orders (format yyyy-mm-dd) | [optional] 

### Return type

[**BuiltList&lt;Order&gt;**](Order.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **placeOrder**
> Order placeOrder(orderInfo)

Place a new order

### Example
```dart
import 'package:skakel_api/api.dart';
// TODO Configure HTTP basic authorization: oauth2
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').password = 'YOUR_PASSWORD';

final api = SkakelApi().getOrderApi();
final OrderInfo orderInfo = ; // OrderInfo | Order details for placing the order

try {
    final response = api.placeOrder(orderInfo);
    print(response);
} catch on DioError (e) {
    print('Exception when calling OrderApi->placeOrder: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderInfo** | [**OrderInfo**](OrderInfo.md)| Order details for placing the order | [optional] 

### Return type

[**Order**](Order.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

