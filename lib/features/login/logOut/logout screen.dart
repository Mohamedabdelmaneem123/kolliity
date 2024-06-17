import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kolliity/shared/util/app_routes.dart';
import 'package:kolliity/shared/util/ui.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../shared/app_size.dart';
import '../../../shared/constants/colors.dart';
import 'package:kolliity/shared/extentions/string_extensions.dart';
import '../../../shared/constants/styles.dart';
import '../../../shared/generic_cubit/generic_cubit.dart';
import '../../../shared/prefs/pref_manager.dart';
import '../../../shared/ui/componants/custom_button.dart';
import '../../../shared/ui/componants/loading_widget.dart';
import '../login_-screen.dart';
import '../model/login_reprositry.dart';
import 'package:http/http.dart' as http;

import 'Model/repoooo.dart';
import 'Model/user_logOut.dart';

class LogOut extends StatefulWidget {
  const LogOut({Key? key}) : super(key: key);


  @override
  State<LogOut> createState() => _LogOutState();
}

class _LogOutState extends State<LogOut> {

  Future<void> _logout(BuildContext context) async {
    final response = await http.delete(
      Uri.parse('http://kollity.runasp.net/api/user/logout'),
      headers: {'accept': '*/*'},
    );

    if (response.statusCode == 200) {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.remove('username');

      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => Login_Eng()),
            (Route<dynamic> route) => false,
      );
    } else {
      // Handle error here
      print('Logout failed with status code: ${response.statusCode}');
    }
  }
  LoginRepository  _loginRepository = LoginRepository();
  final UserRepository userRepository = UserRepository();


  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.white,
      child: Dialog(
        shape:  RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.r30),
        ),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppSize.r30),
              color: AppColors.kBackgroundColor
          ),
          height: AppSize.a230,
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("log_out".tr(), style: AppStyles.kTextStyle24.copyWith(
                  color: AppColors.kMainColor,
                  fontWeight: FontWeight.w600
              ),),
              SizedBox(height: 10,),
              Text("Are you sure you want to sign out".tr(), style: AppStyles.kTextStyle12.copyWith(
                  color: AppColors.kMainColor
              ),),
              SizedBox(height: 10,),

             CustomButton(
                  title: "Yes".tr(),
                  btnColor: AppColors.kMainColor.withOpacity(.6),
                  width: 150,
                  onClick: () => _logout(context)
              ),
              SizedBox(height: 5,),
              CustomButton(
                  title: "No".tr(),
                  btnColor: AppColors.kRedColor,
                  width: 150,
                  onClick: () => UI.pushWithRemove(AppRoutes.options)
              ),
            ],
          ),
        ),
      ),
    );
  }
}
