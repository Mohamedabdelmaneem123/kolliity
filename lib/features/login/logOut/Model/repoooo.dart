import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:kolliity/features/login/logOut/Model/user_logOut.dart';
import 'package:kolliity/shared/util/app_routes.dart';
import 'package:kolliity/shared/util/ui.dart';

class UserRepository {


// Create a global key for the ScaffoldMessenger
  final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();

  Future<void> logout(BuildContext context) async {
    try {
      final response = await http.delete(
        Uri.parse('http://kollity.runasp.net/api/user/logout'),
        headers: <String, String>{
          'Accept': '*/*',
        },
      );

      // Debugging output
      print('Response status: ${response.statusCode}');
      print('Response body: ${response.body}');

      if (response.statusCode == 200) {
        // Successfully logged out
        scaffoldMessengerKey.currentState?.showSnackBar(
          SnackBar(content: Text('Successfully logged out')),
        );
        // Navigate to login screen or any other screen as required
        await Future.delayed(Duration(seconds: 1));
        Navigator.pushReplacementNamed(context, '/login');
        UI.pushWithRemove(AppRoutes.loginScreen);
      } else {
        // Handle error
        scaffoldMessengerKey.currentState?.showSnackBar(
          SnackBar(content: Text('Failed to log out')),
        );
      }
    } catch (e) {
      // Handle any exceptions
      scaffoldMessengerKey.currentState?.showSnackBar(
        SnackBar(content: Text('Error occurred: $e')),
      );
    }
  }

}