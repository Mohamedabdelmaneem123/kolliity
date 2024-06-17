
import 'package:flutter/material.dart';
import 'package:kolliity/features/landing.dart';


import '../../features/choosing-lang.dart';
import '../../features/identity/change_profile-picture/change_picture.dart';
import '../../features/login-eng.dart';
import '../../features/login/logOut/logout screen.dart';
import '../../features/login/login_-screen.dart';
import '../../features/nav-eng.dart';
import '../../features/profiledata-eng.dart';
import '../../features/start_screen.dart';
import '../../features/student/addnew_student/add_view.dart';




class AppRoutes {
  static const String splashScreen = "splashScreen";
  static const String UpdatePro = "UpdateProfileImage";
  static const String Out = "logout";
  static const String start = "StartScreen";
  static const String loginScreen = "loginScreen";
  static const String profileData = "profileData";
  static const String profile = "startScreen";
  static const String profileScreen = "profileScreen";
  static const String aboutUsScreen = "aboutUsScreen";
  static const String contactUsScreen = "contactUsScreen";
  static const String verificationCodeScreen = "verificationCodeScreen";
  static const String productScreen = "productScreen";
  static const String termsScreen = "termsScreen";
  static const String notificationScreen = "notificationScreen";
  static const String complaintScreen = "complaintScreen";
  static const String options = "rateScreen";
  static const String addStudent = "addStudent";
  static const String askElhamalDoctorScreen = "askElhamalDoctorScreen";


  static Route<dynamic>? appRoutes(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case start:
        return appPage(const StartScreen());
      case splashScreen:
       return appPage(Choosing_lang());
       case loginScreen:
         // return appPage(Profiledata_Eng());

    return appPage(Login_Eng());
       case profile:
        return appPage(Landing());
      case profileData:
        return appPage(Profiledata_Eng());
      case Out:
        return appPage(const LogOut());
      case options:
        return appPage(NavBar_Eng());
      case addStudent:
        return appPage( AddNewStudent(onAdd: (Student ) {  },));
      // case notificationScreen:
      //   return appPage(const NotificationPage());
      // case askElhamalDoctorScreen:
      //   return appPage(const AskElhamalDoctor());
      // case verificationCodeScreen:
      //   return appPage(VerificationCodePage(phoneNumber: (args as List)[0] as String, dialCode:  (args as List)[1] as String, viewModel: (args as List)[2] as VerificationCodeViewModel, loginViewModel: (args as List)[3] as LoginViewModel,));
      // default:
      //   return appPage(const SplashScreen());
    }
  }

  static appPage(Widget page) {
    return MaterialPageRoute(
      builder: (context) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
          child: page,
        );
      },
    );
  }
}
