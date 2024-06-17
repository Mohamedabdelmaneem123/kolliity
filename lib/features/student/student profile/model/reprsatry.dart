
import 'package:dio/dio.dart';

import '../../../../shared/models/failure.dart';
import '../../../../shared/network/endpoints.dart';
import '../../../../shared/network/network.dart';

class HomeRepository {
  Future getHomeData() async {
    try {
      Response response = await Network.get(
          EndPoints.home
      );
      return response.data;
    } on Failure {
      rethrow;
    }
  }
}