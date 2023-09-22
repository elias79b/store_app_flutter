import 'package:store_flutter/data/common/exceptions.dart';
import 'package:store_flutter/data/product.dart';
import 'package:dio/dio.dart';
abstract class IProductdataSource{
  Future<List<ProductEntity>> getAll(int sort);
  Future<List<ProductEntity>> search(String searchTerm);

}


class ProductrRemoteDataSource implements IProductdataSource{
  final Dio httpClient;
  ProductrRemoteDataSource(this.httpClient);
  @override
  Future<List<ProductEntity>> getAll(int sort) async{
  final response =await  httpClient.get('product/list?sort=$sort');
  validataResponse(response);
  final products = <ProductEntity>[];
  (response.data as List).forEach((element) {
    products.add(ProductEntity.fromJson(element));
  });
  return products;
  }

  @override
  Future<List<ProductEntity>> search(String searchTerm) async{
    final response =await  httpClient.get('product/search?q=$searchTerm');
    validataResponse(response);
    final products = <ProductEntity>[];
    (response.data as List).forEach((element) {
      products.add(ProductEntity.fromJson(element));
    });
    return products;
  }


  validataResponse(Response response){

    if(response.statusCode != 200){
      throw AppException();
    }
  }

}