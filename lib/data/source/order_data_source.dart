import 'package:store_flutter/data/order.dart';

abstract class IOrderdataSource {
  Future<createOrderResult> create();
}
