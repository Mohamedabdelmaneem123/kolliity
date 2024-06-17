import 'package:logger/logger.dart';

import '../../../../../shared/prefs/pref_keys.dart';
import '../../../../../shared/prefs/pref_utils.dart';
import '../model.dart';

class StudentManager{
  static Profile? currentUser;

  static Future init() async {
    /// User
    currentUser = await getCurrentUser();
  }

  /// SETTERS
  static Future setCurrentUser(Profile? user) async {
    currentUser = user;
    await PrefUtils.setJson(PrefKeys.currentUser, user?.toJson());
  }

  static Future clearUserData() async {
    currentUser = null;
    await PrefUtils.setJson(PrefKeys.currentUser, null);
  }

  /// GETTERS
  static Future<Profile?> getCurrentUser() async {
    Map<String, dynamic>? userData =
    await PrefUtils.getJson(PrefKeys.currentUser);
    Profile? temp;
    if (userData != null) {
      temp = Profile.fromJson(userData);
      Logger().d("user : ${temp.toJson()}");
    }
    return temp;
  }
}