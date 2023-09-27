import 'package:dio/dio.dart';
import 'package:store_flutter/common/exceptions.dart';


mixin HttpResponseValidator{
  validateResponse(Response response) {
    if (response.statusCode != 200) {
      throw AppException();
    }
  }
}