import 'dart:async';


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kolliity/shared/prefs/pref_manager.dart';

import '../shared/constants/colors.dart';
import '../shared/util/app_routes.dart';
import '../shared/util/ui.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  Future<void> _checkLoginStatus() async {



    if (PrefManager.currentUser?.token != null) {
      // User is logged in, navigate to profile screen
      UI.pushWithRemove(AppRoutes.profileData);

    } else {
      // User is not logged in, navigate to login screen
      UI.pushWithRemove(AppRoutes.splashScreen);
    }
  }
  @override
  void initState() {
    Timer(const Duration(seconds: 2), () async {
      _checkLoginStatus();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: AppColors.kWhiteColor,
        child: Center(
          child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset( 'assets/mobile-app/images/-Cr2.png', height: 700.sp,width: 400.sp,)
          ),
        ),
      ),
    );
  }
}