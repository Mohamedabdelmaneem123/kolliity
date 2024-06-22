import 'package:kolliity/features/login/model/usermodel.dart';
import 'package:kolliity/shared/prefs/pref_manager.dart';

class EndPoints {
  static const String login = "user/login";
  static const String logout = "logout";
  static  String home = "Student/${PrefManager.currentUser?.id}/profile";
  static const String checkUserName = "checkUserName";
  static const String checkPassword = "checkPassword";
  static const String faq = "faq";
  static const String location = "location";
  static const String notifications = "notifications";
  static const String complaints = "complaints";
  static const String complaint_replies = "complaint-replies";
  static const String rates = "rates";
  static const String sites = "sites";
  static const String users = "users";
}
