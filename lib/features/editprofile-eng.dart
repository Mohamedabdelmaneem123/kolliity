import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:kolliity/features/profiledata-eng.dart';
import 'package:kolliity/features/units.dart';
import 'package:kolliity/shared/prefs/pref_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../shared/constants/colors.dart';
import '../shared/ui/componants/custom_button.dart';
import '../shared/util/app_routes.dart';
import '../shared/util/ui.dart';
import 'nav-eng.dart';
import 'package:kolliity/shared/extentions/string_extensions.dart';


class Editprofile_Eng extends StatefulWidget {
  late final Function(Profiledata_Eng) onAdd;

  @override
  State<Editprofile_Eng> createState() => _Editprofile_EngState();
}

class _Editprofile_EngState extends State<Editprofile_Eng> {
  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _fullNameController = TextEditingController();


  @override
  void dispose() {
    _usernameController.dispose();
    _fullNameController.dispose();
    super.dispose();
  }

  void _submit() {
    if (_formKey.currentState!.validate()) {
      final editProfile = Profiledata_Eng(
        user_name: _usernameController.text,
        full_Name: _fullNameController.text,

      );
      widget.onAdd(editProfile);

      Navigator.of(context).pop();
    }
  }
  @override
  Widget build(BuildContext context) {
    double baseWidth = 430;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      drawer: NavBar_Eng(),
      appBar: AppBar(
        toolbarHeight: 40,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 130.0),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.home),
              iconSize: 30,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            iconSize: 30,
          )
        ],
      ),
      body: Container(
        width: double.infinity,
        child: Container(
          // editprofile9Xk (145:200)
          padding: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 0 * fem),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xffebebeb),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // line1KUA (145:205)
                  width: double.infinity,
                  height: 1 * fem,
                  decoration: BoxDecoration(
                    color: Color(0xffffffff),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xff000000),
                        offset: Offset(0 * fem, 3 * fem),
                        blurRadius: 2.5 * fem,
                      ),
                    ],
                  ),
                ),
                Container(
                  // autogroup9enaeWS (3Ax86pQ5FjwSM6F2ja9eNa)
                  padding:
                      EdgeInsets.fromLTRB(13 * fem, 15 * fem, 16 * fem, 0 * fem),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // autogroupygqtAza (3Ax75gRwmw8m5y6PHFYGqt)
                        margin: EdgeInsets.fromLTRB(
                            129 * fem, 0 * fem, 7 * fem, 9 * fem),
                        width: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // editprofileHpJ (145:210)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 101 * fem, 0 * fem),
                              child: Text(
                                'Edit Profile',
                                style: SafeGoogleFont(
                                  'Inter',
                                  fontSize: 28 * ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.2272725786 * ffem / fem,
                                  letterSpacing: -0.56 * fem,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                UI.push(AppRoutes.profileData);
                              },
                              child: Container(
                                // vectoraYW (145:211)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 2 * fem),
                                width: 23 * fem,
                                height: 21 * fem,
                                child: Image.asset(
                                  'assets/mobile-app/images/vector-oW6.png',
                                  width: 23 * fem,
                                  height: 21 * fem,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // autogroupdmneWSA (3Ax7FBA88FGaj2raXHDmne)
                        margin: EdgeInsets.fromLTRB(
                            101 * fem, 0 * fem, 94 * fem, 35 * fem),
                        padding: EdgeInsets.fromLTRB(
                            26 * fem, 7 * fem, 25 * fem, 10 * fem),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xffffffff),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(29 * fem),
                            topRight: Radius.circular(29 * fem),
                            bottomRight: Radius.circular(56 * fem),
                            bottomLeft: Radius.circular(56 * fem),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // autogroupzjnaawp (3Ax7MLeX8Co6daoiqYZJna)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 7 * fem),
                              padding: EdgeInsets.fromLTRB(
                                  118 * fem, 121 * fem, 10 * fem, 11 * fem),
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Color(0xffd9d9d9),
                                borderRadius: BorderRadius.circular(77.5 * fem),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    '${PrefManager.currentUser?.profileImage}',
                                  ),
                                ),
                              ),
                              child: Align(
                                // vectorG3x (145:209)
                                alignment: Alignment.bottomRight,
                                child: SizedBox(
                                  width: 27 * fem,
                                  height: 23 * fem,
                                  child: Image.asset(
                                    'assets/mobile-app/images/vector-pjG.png',
                                    width: 27 * fem,
                                    height: 23 * fem,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              // lorem123nHC (145:208)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 4 * fem, 0 * fem),
                              child: PrefManager.currentUser?.token != null
                                  ? Text('${PrefManager.currentUser?.userName}', style: SafeGoogleFont(
                                'Inter',
                                fontSize: 19 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2272726406 * ffem / fem,
                                letterSpacing: -0.44 * fem,
                                color: Color(0xff000000),
                              ))
                                 :Text(
                                '@lorem_123',
                                style: SafeGoogleFont(
                                  'Inter',
                                  fontSize: 22 * ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.2272726406 * ffem / fem,
                                  letterSpacing: -0.44 * fem,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // autogrouplsdtgdU (3Ax7TRJiqhhvwip3EGLSdt)
                        padding: EdgeInsets.fromLTRB(
                            33 * fem, 20 * fem, 35 * fem, 67 * fem),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xffffffff),
                          borderRadius: BorderRadius.circular(36 * fem),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // autogroupbygpWZq (LoJbiRDGcjvMiUGK2abygP)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 14 * fem),
                              width: double.infinity,
                              height: 91 * fem,
                              child: TextFormField(
                                controller: _fullNameController,
                                keyboardType: TextInputType.text,
                                validator: (String? value) {
                                  if (value?.isEmpty ?? true) {
                                    return "من فضلك ادخل الاسم".tr();
                                  }
                                  return null;
                                },
                                decoration: const InputDecoration(
                                  labelText: 'الاسم الجديد بالكامل',
                                  border: OutlineInputBorder(),
                                  prefixIcon: Icon(
                                    Icons.person,
                                  ),
                                ),
                                onFieldSubmitted: (String value) {
                                  print(value);
                                },
                                onChanged: (String value) {
                                  print(value);
                                },
                              ),
                            ),
                            Container(
                              // autogroupbygpWZq (LoJbiRDGcjvMiUGK2abygP)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 14 * fem),
                              width: double.infinity,
                              height: 91 * fem,
                              child: TextFormField(
                                controller: _usernameController,
                                keyboardType: TextInputType.text,
                                validator: (String? value) {
                                  if (value?.isEmpty ?? true) {
                                    PrefManager.currentUser?.token != null
                                    ? Text('${PrefManager.currentUser?.userName}', style: SafeGoogleFont(
                                      'Inter',
                                      fontSize: 19 * ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.2272726406 * ffem / fem,
                                      letterSpacing: -0.44 * fem,
                                      color: Color(0xff000000),
                                    ))
                                    : Text( "من فضلك ادخل اسم المستخدم");
                                  }
                                  return null;
                                },
                                decoration: const InputDecoration(
                                  labelText: 'اسم المستخدم الجديد',
                                  border: OutlineInputBorder(),
                                  prefixIcon: Icon(
                                    Icons.supervised_user_circle,
                                  ),
                                ),
                                onFieldSubmitted: (String value) {
                                  print(value);
                                },
                                onChanged: (String value) {
                                  print(value);
                                },
                              ),
                            ),
                            Container(
                              // frame2aGv (145:238)
                              margin: EdgeInsets.fromLTRB(
                                  45 * fem, 0 * fem, 59 * fem, 12 * fem),
                              padding: EdgeInsets.fromLTRB(
                                  67.5 * fem, 15.5 * fem, 73.5 * fem, 13.5 * fem),
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(19 * fem),
                                gradient: LinearGradient(
                                  begin: Alignment(0.1, -0.582),
                                  end: Alignment(0.598, 2.716),
                                  colors: <Color>[
                                    Color(0xff0e8388),
                                    Color(0xffffffff)
                                  ],
                                  stops: <double>[0, 1],
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0x3f000000),
                                    offset: Offset(0 * fem, 4 * fem),
                                    blurRadius: 1.5 * fem,
                                  ),
                                ],
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // vector1NE (145:242)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 11 * fem, 1 * fem),
                                    width: 24 * fem,
                                    height: 24 * fem,
                                    child: Image.asset(
                                      'assets/mobile-app/images/vector-ueE.png',
                                      width: 24 * fem,
                                      height: 24 * fem,
                                    ),
                                  ),
                                  Text(
                                    // savevzz (145:240)
                                    'Save',
                                    style: SafeGoogleFont(
                                      'Inter',
                                      fontSize: 23 * ffem,
                                      fontWeight: FontWeight.w700,
                                      height: 1.2272726142 * ffem / fem,
                                      letterSpacing: -0.46 * fem,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              // frame5G3G (145:243)
                              margin: EdgeInsets.fromLTRB(
                                  73 * fem, 0 * fem, 94 * fem, 0 * fem),
                              padding: EdgeInsets.fromLTRB(
                                  26.5 * fem, 7.5 * fem, 32.5 * fem, 5.5 * fem),
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(19 * fem),
                                gradient: LinearGradient(
                                  begin: Alignment(0.1, -0.582),
                                  end: Alignment(0.598, 2.716),
                                  colors: <Color>[
                                    Color(0xffaa0000),
                                    Color(0xffffffff)
                                  ],
                                  stops: <double>[0, 1],
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0x3f000000),
                                    offset: Offset(0 * fem, 4 * fem),
                                    blurRadius: 1.5 * fem,
                                  ),
                                ],
                              ),
                              child: CustomButton(
                                title: "Cancel",
                                width: 150.sp,
                                textColor: AppColors.kWhiteColor,
                                btnColor: AppColors.kRedColor,
                                onClick: () {
                                  UI.pop();
                                },
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
