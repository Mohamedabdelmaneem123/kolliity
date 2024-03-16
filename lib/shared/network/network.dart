import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:elhamlah_elraqiah/shared/models/failure.dart';
import 'package:elhamlah_elraqiah/shared/prefs/pref_manager.dart';
import 'package:elhamlah_elraqiah/shared/util/app_routes.dart';
import 'package:elhamlah_elraqiah/shared/util/ui.dart';
import 'package:logger/logger.dart';

class Network {
  static const String devBaseUrl = 'https://alraqiah.com/api/';
  static const String baseUrl = devBaseUrl;

  static final Dio _dio = Dio();

  /// POST Method
  static Future<Response> post(String endPoint,
      {Map<String, dynamic>? data}) async {
    Logger().d(baseUrl + endPoint);
    Logger().d(data);
    try {
      Response response = await _dio.post(
        baseUrl + endPoint,
        data: FormData.fromMap(data!),
        options: PrefManager.currentUser?.token != null
            ? Options(
                headers: {
                  "Authorization":
                      "Bearer ${PrefManager.currentUser?.token}",
                  "Content-Type": "application/json",
                  "Accept": "application/json",
                },
              )
            : null,
      );

      Logger().d(response.data);

      return response;
    } on DioError catch (error) {
      Logger().e(error.error);
      Logger().e(error.response?.data);
      if (error.response!.statusCode == 401 || error.response!.statusCode == 403){
        UI.push(AppRoutes.loginScreen);
      }
      throw Failure(message: error.message, data: error.response?.data);
    } on SocketException {
      throw Failure(message: "No Internet connect");
    } on FormatException {
      throw Failure(message: "Format Exception");
    } on Error catch (e) {
      throw Failure(message: "Error $e");
    }
  }

  /// POST Method with JSON Data
  static Future postJson(String endPoint, {Map<String, dynamic>? data}) async {
    Logger().d(baseUrl + endPoint);
    Logger().d(data);
    try {
      Response response = await _dio.post(
        baseUrl + endPoint,
        data: jsonEncode(data),
        options: PrefManager.currentUser?.token != null
            ? Options(
                headers: {
                  "Authorization":
                      "Bearer ${PrefManager.currentUser?.token}",
                  "Content-Type": "application/json",
                  "Accept": "application/json",
                },
              )
            : null,
      );

      Logger().d(response.data);

      return response;
    } on DioError catch (error) {
      if (error.response!.statusCode == 500) {
        throw Failure(message: "Server error", statusCode: 500);
      } else if (error.response!.statusCode == 401) {
        throw Failure(
          message: error.response!.data['errors'] != null
              ? error.response!.data['errors']['MESSAGE']
              : error.response!.data['message'],
          statusCode: 401,
        );
      } else if (error.response!.statusCode == 404) {
        throw Failure(
          message: error.response!.data['errors']['Not Found'],
          statusCode: 404,
        );
      } else if (error.response!.statusCode == 400) {
        throw Failure(
          message: error.response!.data['errors']['MESSAGE'].toString(),
          statusCode: 400,
          data: error.response!.data,
        );
      } else {
        throw Failure(message: error.response!.statusMessage);
      }
    } on SocketException {
      throw Failure(message: "No Internet connect");
    } on FormatException {
      throw Failure(message: "Format Exception");
    } on Error catch (e) {
      throw Failure(message: "Error $e");
    }
  }

  /// PUT Method
  static Future put(String endPoint, {Map<String, dynamic>? data}) async {
    Logger().d(baseUrl + endPoint);
    Logger().d(data);
    try {
      Response response = await _dio.put(
        baseUrl + endPoint,
        data: FormData.fromMap(data!),
        options: PrefManager.currentUser?.token != null
            ? Options(
                headers: {
                  "Authorization":
                      "Bearer ${PrefManager.currentUser?.token}",
                  "Content-Type": "multipart/form-data",
                  "Accept": "application/json",
                },
              )
            : null,
      );

      Logger().d(response.data);

      return response;
    } on DioError catch (error) {
      if (error.response!.statusCode == 500) {
        throw Failure(message: "Server error", statusCode: 500);
      } else if (error.response!.statusCode == 401) {
        throw Failure(
            message: error.response!.data['errors'] != null
                ? error.response!.data['errors']['MESSAGE']
                : error.response!.data['message'],
            statusCode: 500);
      } else if (error.response!.statusCode == 404) {
        throw Failure(
          message: error.response!.data['errors']['Not Found'],
          statusCode: 404,
        );
      } else if (error.response!.statusCode == 400) {
        throw Failure(
          message: error.response!.data['errors']['MESSAGE'].toString(),
          statusCode: 400,
        );
      } else {
        throw Failure(message: error.response!.statusMessage);
      }
    } on SocketException {
      throw Failure(message: "No Internet connect");
    } on FormatException {
      throw Failure(message: "Format Exception");
    } on Error catch (e) {
      throw Failure(message: "Error $e");
    }
  }

  /// PUT Json
  static Future putJson(String endPoint, {Map<String, dynamic>? data}) async {
    Logger().d(baseUrl + endPoint);
    Logger().d(data);
    try {
      Response response = await _dio.put(
        baseUrl + endPoint,
        data: jsonEncode(data),
        options: PrefManager.currentUser?.token != null
            ? Options(
                headers: {
                  "Authorization":
                      "Bearer ${PrefManager.currentUser?.token}",
                  "Content-Type": "application/json",
                  "Accept": "application/json",
                },
              )
            : null,
      );
      Logger().d(response.data);

      return response;
    } on DioError catch (error) {
      Logger().e(error.error);
      Logger().e(error.response?.data);
      if (error.response!.statusCode == 500) {
        throw Failure(message: "Server error", statusCode: 500);
      } else if (error.response!.statusCode == 401) {
        throw Failure(
            message: error.response!.data['errors'] != null
                ? error.response!.data['errors']['MESSAGE']
                : error.response!.data['message'],
            statusCode: 500);
      } else if (error.response!.statusCode == 404) {
        throw Failure(
          message: error.response!.data['errors']['Not Found'],
          statusCode: 404,
        );
      } else if (error.response!.statusCode == 400) {
        throw Failure(
          message: error.response!.data['errors']['MESSAGE'].toString(),
          statusCode: 400,
        );
      } else {
        throw Failure(message: error.response!.statusMessage);
      }
    } on SocketException {
      throw Failure(message: "No Internet connect");
    } on FormatException {
      throw Failure(message: "Format Exception");
    } on Error catch (e) {
      throw Failure(message: "Error $e");
    }
  }

  /// Delete Method
  static Future delete(String endPoint, {Map<String, dynamic>? data}) async {
    try {
      return await _dio.delete(
        baseUrl + endPoint,
        data: jsonEncode(data),
        options: PrefManager.currentUser?.token != null
            ? Options(
                headers: {
                  "Authorization":
                      "Bearer ${PrefManager.currentUser?.token}",
                  "Content-Type": "multipart/form-data",
                  "Accept": "application/json",
                },
              )
            : null,
      );
    } on DioError catch (error) {
      if (error.response!.statusCode == 500) {
        throw Failure(message: "Server error", statusCode: 500);
      } else if (error.response!.statusCode == 401) {
        throw Failure(
            message: error.response!.data['errors'] != null
                ? error.response!.data['errors']['MESSAGE']
                : error.response!.data['message'],
            statusCode: 500);
      } else if (error.response!.statusCode == 404) {
        throw Failure(
          message: error.response!.data['errors']['Not Found'],
          statusCode: 404,
        );
      } else if (error.response!.statusCode == 400) {
        throw Failure(
          message: error.response!.data['errors']['MESSAGE'].toString(),
          statusCode: 400,
        );
      } else {
        throw Failure(message: error.response!.statusMessage);
      }
    } on SocketException {
      throw Failure(message: "No Internet connect");
    } on FormatException {
      throw Failure(message: "Format Exception");
    } on Error catch (e) {
      throw Failure(message: "Error $e");
    }
  }

  /// GET Method
  static Future<Response<dynamic>> get(endPoint) async {
    Logger().d(baseUrl + endPoint);
    try {
      Response response = await _dio.get(
        baseUrl + endPoint,
        options: PrefManager.currentUser?.token != null
            ? Options(
                headers: {
                  "Authorization":
                      "Bearer ${PrefManager.currentUser?.token}",
                  "Accept": "application/json",
                },
              )
            : null,
      );

      print("${endPoint}");
      print(response.statusCode);
      Logger().d(response.data);
      return response;
    } on DioError catch (error) {
      Logger().d(error.response?.data);
      if (error.response!.statusCode == 401 || error.response!.statusCode == 403){
        PrefManager.setCurrentUser(null);
        PrefManager.clearUserData();
        UI.push(AppRoutes.loginScreen);
      }
      if (error.response!.statusCode == 500) {
        throw Failure(message: "Server error");
      } else if (error.response!.statusCode == 404) {
        throw Failure(message: "Not Found");
      } else {
        throw Failure(message: error.response!.statusMessage);
      }
    } on SocketException {
      throw Failure(message: "No Internet connect");
    } on FormatException {
      throw Failure(message: "Format Exception");
    } on Error catch (e) {
      throw Failure(message: "Error $e");
    }
  }

  /// GET URL Method
  static Future<Response<dynamic>> getUrl(endPoint) async {
    Logger().d(endPoint);
    try {
      Response response = await _dio.get(endPoint);

      Logger().d(response.data);

      return response;
    } on DioError catch (error) {
      Logger().d(error.response?.data);
      if (error.response!.statusCode == 500) {
        throw Failure(message: "Server error");
      } else if (error.response!.statusCode == 401) {
        throw Failure(message: "Unauthorized");
      } else if (error.response!.statusCode == 404) {
        throw Failure(message: "Not Found");
      } else {
        throw Failure(message: error.response!.statusMessage);
      }
    } on SocketException {
      throw Failure(message: "No Internet connect");
    } on FormatException {
      throw Failure(message: "Format Exception");
    } on Error catch (e) {
      throw Failure(message: "Error $e");
    }
  }
}
