
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../shared/constants/colors.dart';
import '../../shared/generic_cubit/generic_cubit.dart';
import '../../shared/prefs/pref_manager.dart';
import '../../shared/ui/componants/custom_button.dart';
import '../../shared/ui/componants/loading_widget.dart';
import '../../shared/util/app_routes.dart';
import '../../shared/util/ui.dart';
import '../choosing-lang.dart';
import '../forgetpassword-eng.dart';
import '../units.dart';
import 'login_viewModel.dart';
import 'model/usermodel.dart';

class Login_Eng extends StatefulWidget {
  @override
  _Login_EngState createState() => _Login_EngState();
}

class _Login_EngState extends State<Login_Eng> {
  LoginViewModel viewModel = LoginViewModel();


  @override
  Widget build(BuildContext context) {
    double baseWidth = 430;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 25),
        child: Form(
          key: viewModel.formKey,
          child: Container(
            width: double.infinity,
            child: Container(
              // loginsZ8 (67:107)
              padding: EdgeInsets.fromLTRB(0 * fem, 8 * fem, 0 * fem, 0 * fem),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xffffffff),
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      // autogroupzbolz9t (3AuxzaXTSmNu4TJmdTZboL)
                      padding:
                      EdgeInsets.fromLTRB(
                          22 * fem, 10 * fem, 22 * fem, 0 * fem),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // autogroupwyneJgN (3AuxPbXkG2zBs4HjtvwyNe)
                            margin: EdgeInsets.fromLTRB(
                                85 * fem, 0 * fem, 97 * fem, 11 * fem),
                            width: double.infinity,
                            height: 113 * fem,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // p8v (67:134)
                                  width: 113 * fem,
                                  height: 113 * fem,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(
                                        97.5 * fem),
                                    child: Image.asset(
                                      'assets/mobile-app/images/-7JE.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Container(
                                  // autogrouphwtnwzE (3AuxUviCRQMsqUncykhWtN)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 24 * fem, 0 * fem, 29 * fem),
                                  width: 91 * fem,
                                  height: double.infinity,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        // fcaiUzA (67:135)
                                        left: 0 * fem,
                                        top: 0 * fem,
                                        child: Align(
                                          child: SizedBox(
                                            width: 91 * fem,
                                            height: 53 * fem,
                                            child: Text(
                                              'FCAI',
                                              style: SafeGoogleFont(
                                                'Krub',
                                                fontSize: 43 * ffem,
                                                fontWeight: FontWeight.w700,
                                                height: 1.2272726547 * ffem /
                                                    fem,
                                                letterSpacing: -0.86 * fem,
                                                color: Color(0xff000000),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        // platformmiN (67:136)
                                        left: 36 * fem,
                                        top: 44 * fem,
                                        child: Align(
                                          child: SizedBox(
                                            width: 51 * fem,
                                            height: 16 * fem,
                                            child: Text(
                                              'platform',
                                              style: SafeGoogleFont(
                                                'Krub',
                                                fontSize: 13 * ffem,
                                                fontWeight: FontWeight.w500,
                                                height: 1.2272726206 * ffem /
                                                    fem,
                                                letterSpacing: -0.26 * fem,
                                                color: Color(0xff6b6b6b),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // autogroup1tyiGv2 (3AuxaLiqsEMFQKEKz81TYi)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 264 * fem, 10 * fem),
                            width: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                          return Choosing_lang();
                                        }));
                                  },
                                  child: Container(
                                    // vectorzr2 (67:111)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 9 * fem, 3 * fem),
                                    width: 23 * fem,
                                    height: 21 * fem,
                                    child: Image.asset(
                                      'assets/mobile-app/images/vector-8nJ.png',
                                      width: 23 * fem,
                                      height: 21 * fem,
                                    ),
                                  ),
                                ),
                                Text(
                                  // login8BY (67:110)
                                  "log in",
                                  style: SafeGoogleFont(
                                    'Inter',
                                    fontSize: 32 * ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.2272726297 * ffem / fem,
                                    letterSpacing: -0.64 * fem,
                                    color: Color(0xff013267),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // autogroupbygpWZq (LoJbiRDGcjvMiUGK2abygP)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 10 * fem, 0 * fem, 14 * fem),
                            width: double.infinity,
                            height: 91 * fem,
                            child: TextFormField(
                              controller: viewModel.username,
                              decoration: const InputDecoration(
                                labelText: 'user_name',
                                border: OutlineInputBorder(),
                                prefixIcon: Icon(
                                  Icons.supervised_user_circle,),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your user_name';
                                }
                                return null;
                              },
                            ),
                          ),
                          BlocBuilder<
                              GenericCubit<bool>,
                              GenericCubitState<bool>>(
                              bloc: viewModel.isPasswordVisible,
                              builder: (context, visibleState) {
                                return Container(
                                  // autogroupd1d5tVq (LoJbz5Rqy1ahG5yeasd1d5)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 0 * fem, 7 * fem),
                                  width: double.infinity,
                                  height: 88 * fem,
                                  child: TextFormField(
                                    controller: viewModel.password,
                                    obscureText: !visibleState.data,
                                    decoration: InputDecoration(
                                      labelText: 'Password',
                                      border: const OutlineInputBorder(),
                                      prefixIcon: const Icon(
                                        Icons.lock,
                                      ),
                                      suffixIcon: IconButton(
                                        icon: Icon(visibleState.data
                                            ? Icons.visibility
                                            : Icons.visibility_off),
                                        onPressed: () {
                                          viewModel.isPasswordVisible
                                              .onUpdateData(!visibleState.data);
                                        },
                                      ),
                                    ),


                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter your password';
                                      }
                                      return null;
                                    },

                                  ),
                                );
                              }
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                    return Forgetpassword_Eng();
                                  }));
                            },
                            child: Container(
                              // iforgotmypasswordRVQ (67:133)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 17 * fem, 27 * fem),
                              child: Text(
                                'I forgot my password ?',
                                style: SafeGoogleFont(
                                  'Inter',
                                  fontSize: 15 * ffem,
                                  fontWeight: FontWeight.w500,
                                  height: 1.2272726695 * ffem / fem,
                                  letterSpacing: -0.3 * fem,
                                  color: Color(0xffb80000),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          BlocConsumer<GenericCubit<Map<String, dynamic>?>,
                              GenericCubitState<Map<String, dynamic>?>>(
                            bloc: viewModel.loginCubit,
                            listener: (context, state) {
                              if (state is GenericErrorState) {
                                UI.showCustomMessage(
                                    state.responseError?.data['message'] ?? "check password and user name");
                              } else if (state is GenericUpdatedState) {
                                print("state.data");
                                print(state.data);
                                UserModel user = UserModel.fromJson(state.data!);
                                PrefManager.setCurrentUser(user);
                                UI.pushWithRemove(
                                    AppRoutes.profileData);
                              }
                            },
                            builder: (context, state) {
                              return CustomButton(
                                title: "login",
                                width: 150.sp,
                                textColor: AppColors.kBlackColor,
                                btnColor: AppColors.kGreyColor9D9,
                                onClick: () {
                                  viewModel.login();
                                },
                              );
                            },
                          ),


                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

}