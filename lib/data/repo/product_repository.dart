import 'package:dio/dio.dart';
import 'package:store_flutter/data/product.dart';
import 'package:store_flutter/data/source/product_data_source.dart';

final httpClient =
    Dio(BaseOptions(baseUrl: 'http://expertdevelopers.ir/api/v1/'));
final productRepository =
    ProductRepositiry(ProductrRemoteDataSource(httpClient) as IProductRepository);

abstract class IProductRepository {
  Future<List<ProductEntity>> getAll(int sort);

  Future<List<ProductEntity>> search(String searchTerm);
}

class ProductRepositiry implements IProductRepository {
  final IProductRepository dataSource;

  ProductRepositiry(this.dataSource);

  @override
  Future<List<ProductEntity>> getAll(int sort) => dataSource.getAll(sort);

  @override
  Future<List<ProductEntity>> search(String searchTerm) =>
      dataSource.search(searchTerm);
}
