
import '../../../../shared/models/failure.dart';
import '../../../../shared/network/endpoints.dart';
import '../../../../shared/network/network.dart';

class HomeRepository {
  Future getHomeData() async {
    try {
      var response = await Network.get(
          EndPoints.home
      );
      return response;
    } on Failure {
      rethrow;
    }
  }
}