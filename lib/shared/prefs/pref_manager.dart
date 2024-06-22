import 'package:kolliity/features/login/model/usermodel.dart';
import 'package:kolliity/shared/prefs/pref_keys.dart';
import 'package:kolliity/shared/prefs/pref_utils.dart';
import 'package:logger/logger.dart';

class PrefManager {
  static UserModel? currentUser;

  static Future init() async {
    /// User
    currentUser = await getCurrentUser();
    Logger().d(currentUser?.toJson());
  }

  /// SETTERS
  static Future setCurrentUser(UserModel? user) async {
    currentUser = user;
    await PrefUtils.setJson(PrefKeys.currentUser, user?.toJson());
    init();
    Logger().d(currentUser!.toJson());
  }

  static Future clearUserData() async {
    currentUser = null;
    await PrefUtils.setJson(PrefKeys.currentUser, null);
  }

  /// GETTERS
  static Future<UserModel?> getCurrentUser() async {
    Map<String, dynamic>? userData = await PrefUtils.getJson(PrefKeys.currentUser);
    UserModel? temp;
    if (userData != null) {
      temp = UserModel.fromJson(userData);
      Logger().d("user : ${temp.toJson()}");
    }
    return temp;
  }
}