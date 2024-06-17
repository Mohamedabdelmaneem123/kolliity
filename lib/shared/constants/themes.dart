import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Dark_mode/Appsates.dart';
import '../Dark_mode/cach_helper.dart';

class AppTheme{
  static final lightTheme = ThemeData(
    primarySwatch: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(

        elevation: 0,
        titleSpacing: 20,
        // backwardsCompatibility: false, to edit status bar

        backgroundColor: Colors.white,
        titleTextStyle: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        iconTheme: IconThemeData(color: Colors.black),
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarIconBrightness: Brightness.dark,
            statusBarColor: Colors.black26,
            statusBarBrightness: Brightness.light
        )),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: Colors.blue,
      backgroundColor: Colors.white,
      unselectedItemColor: Colors.grey,
    ),

  );

  static final darkTheme = ThemeData(
      primarySwatch: Colors.blue,
      scaffoldBackgroundColor:Colors.black26,
      appBarTheme: AppBarTheme(

          elevation: 0,
          titleSpacing: 20,
          // backwardsCompatibility: false, to edit status bar

          backgroundColor: Colors.black26,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          iconTheme: IconThemeData(color: Colors.white),
          systemOverlayStyle: SystemUiOverlayStyle(
              statusBarIconBrightness: Brightness.dark,
              statusBarColor: Colors.white,
              statusBarBrightness: Brightness.dark
          )),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: Colors.blue,
        backgroundColor: Colors.black26,
        unselectedItemColor: Colors.grey,
      ),
      textTheme: TextTheme(bodyText1: TextStyle(
          fontWeight:FontWeight.w900,
          color: Colors.white
      ))

  );
}

class ThemeProvider with ChangeNotifier {
  bool _isDarkMode = false;

  bool get isDarkMode => _isDarkMode;

  void changemode({bool? isDarkFromShared}) {
    if (isDarkFromShared != null) {
      _isDarkMode = isDarkFromShared;

    } else {
      _isDarkMode = !_isDarkMode;
      CacheHelper.setBoolData(key: 'isdark', value: isDarkMode).then((value) {
        notifyListeners();
      }
      );
    }
  }
}