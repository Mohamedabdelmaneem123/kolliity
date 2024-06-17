import 'dart:convert';

import 'package:kolliity/shared/models/failure.dart';
import 'package:kolliity/shared/network/endpoints.dart';
import 'package:kolliity/shared/network/network.dart';


class LoginRepository {

  // final String apiUrl = 'http://kollity.runasp.net/api/user';
  //
  // Future<UserModel> login(String userName, String password) async {
  //   final response = await http.post(
  //     Uri.parse('$apiUrl/login'),
  //     headers: <String, String>{
  //       'Content-Type': 'application/json; charset=UTF-8',
  //     },
  //     body: jsonEncode(<String, String>{
  //       'userName': userName,
  //       'password': password,
  //     }),
  //   );
  //
  //   if (response.statusCode == 200) {
  //     return UserModel.fromJson(jsonDecode(response.body));
  //   } else {
  //     throw Exception('Failed to login');
  //   }
  // }
  Future login(Map<String , dynamic> data) async {
    try {
      var response = await Network.post(
        EndPoints.login,
        data: data,
      );
      return response;
    } on Failure {
      rethrow;
    }
  }

}


