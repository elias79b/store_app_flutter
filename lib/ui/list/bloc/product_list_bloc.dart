import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:store_flutter/common/exceptions.dart';
import 'package:store_flutter/data/product.dart';
import 'package:store_flutter/data/repo/product_repository.dart';


part 'product_list_event.dart';
part 'product_list_state.dart';

class ProductListBloc extends Bloc<ProductListEvent, ProductListState> {
  final IProductRepository repository;
  ProductListBloc(this.repository): super(ProductListLoading()){
    on<ProductListEvent>((event,emit) async{
      if(event is ProductListStarted){
        emit(ProductListLoading());
      }
      try{
        // final products = await repository.getAll(event.sort);
        // emit(ProductListSuccses(products, event.sort, ProductSort.names));
      }catch(e){
        emit(ProductListError(AppException()));
      }
    });
  }
}
