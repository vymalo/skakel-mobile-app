# skakel_api.api.ProductApi

## Load the API package
```dart
import 'package:skakel_api/api.dart';
```

All URIs are relative to *https://skakel.ssegning.com/dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addProduct**](ProductApi.md#addproduct) | **POST** /products | Add a new product
[**getProductById**](ProductApi.md#getproductbyid) | **GET** /products/{id} | Get a product by ID
[**getProductsByQuery**](ProductApi.md#getproductsbyquery) | **GET** /products | Get products by query parameters


# **addProduct**
> Product addProduct(productInfo)

Add a new product

### Example
```dart
import 'package:skakel_api/api.dart';
// TODO Configure HTTP basic authorization: oauth2
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').password = 'YOUR_PASSWORD';

final api = SkakelApi().getProductApi();
final ProductInfo productInfo = ; // ProductInfo | Product details for adding the product

try {
    final response = api.addProduct(productInfo);
    print(response);
} catch on DioError (e) {
    print('Exception when calling ProductApi->addProduct: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **productInfo** | [**ProductInfo**](ProductInfo.md)| Product details for adding the product | [optional] 

### Return type

[**Product**](Product.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProductById**
> Product getProductById(id)

Get a product by ID

### Example
```dart
import 'package:skakel_api/api.dart';
// TODO Configure HTTP basic authorization: oauth2
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').password = 'YOUR_PASSWORD';

final api = SkakelApi().getProductApi();
final int id = 789; // int | 

try {
    final response = api.getProductById(id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling ProductApi->getProductById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**Product**](Product.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProductsByQuery**
> BuiltList<Product> getProductsByQuery(category, minPrice, maxPrice, inStock)

Get products by query parameters

### Example
```dart
import 'package:skakel_api/api.dart';
// TODO Configure HTTP basic authorization: oauth2
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2').password = 'YOUR_PASSWORD';

final api = SkakelApi().getProductApi();
final String category = category_example; // String | Category of the products (e.g., electronics, clothing)
final double minPrice = 3.4; // double | Minimum price of the products
final double maxPrice = 3.4; // double | Maximum price of the products
final bool inStock = true; // bool | Filter products that are in stock

try {
    final response = api.getProductsByQuery(category, minPrice, maxPrice, inStock);
    print(response);
} catch on DioError (e) {
    print('Exception when calling ProductApi->getProductsByQuery: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **category** | **String**| Category of the products (e.g., electronics, clothing) | [optional] 
 **minPrice** | **double**| Minimum price of the products | [optional] 
 **maxPrice** | **double**| Maximum price of the products | [optional] 
 **inStock** | **bool**| Filter products that are in stock | [optional] 

### Return type

[**BuiltList&lt;Product&gt;**](Product.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

