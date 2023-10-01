import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_flutter/data/repo/product_repository.dart';
import 'package:store_flutter/ui/list/bloc/product_list_bloc.dart';



class ProductListScreen extends StatelessWidget {
  final int sort;
  const ProductListScreen({Key? key, required this.sort}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('کفش های ورزشی'),
      ),
      body: BlocProvider<ProductListBloc>(
        create:(contex)=>ProductListBloc(productRepository)..add(ProductListStarted(sort)),
        child: BlocBuilder<ProductListBloc,ProductListState>(
            builder: (context,state){
              if(state is ProductListSuccses){
                ListView.builder(
                    itemBuilder: (context,index){
                      return Container();
                    });
              }else{
                return const Center(
                  child: CupertinoActivityIndicator(),
                );
              }
            })
      ),
    );
  }
}

///10:28