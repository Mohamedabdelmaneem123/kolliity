
import 'package:flutter/material.dart';




class AppRoutes {
  static const String splashScreen = "splashScreen";
  static const String loginScreen = "loginScreen";
  static const String startScreen = "startScreen";
  static const String profileScreen = "profileScreen";
  static const String aboutUsScreen = "aboutUsScreen";
  static const String contactUsScreen = "contactUsScreen";
  static const String verificationCodeScreen = "verificationCodeScreen";
  static const String productScreen = "productScreen";
  static const String termsScreen = "termsScreen";
  static const String notificationScreen = "notificationScreen";
  static const String complaintScreen = "complaintScreen";
  static const String rateScreen = "rateScreen";
  static const String askElhamalDoctorScreen = "askElhamalDoctorScreen";

  static Route<dynamic>? appRoutes(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {

      case splashScreen:
        return null;
      //   return appPage(const SplashScreen());
      // case loginScreen:
      //   return appPage(const LoginScreen());
      // case startScreen:
      //   return appPage(const StartPage());
      // case aboutUsScreen:
      //   return appPage(const AboutUs());
      // case rateScreen:
      //   return appPage(const AddRate());
      // case complaintScreen:
      //   return appPage(const ComplainsPage());
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
