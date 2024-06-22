import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:kolliity/features/student/student%20profile/model/model.dart';
import 'package:kolliity/features/student/student%20profile/model/pref/studentManager.dart';
import 'package:kolliity/features/student/student%20profile/model/reprsatry.dart';
import 'package:kolliity/features/units.dart';
import 'package:kolliity/shared/extentions/string_extensions.dart';
import 'package:kolliity/shared/util/app_routes.dart';
import 'package:kolliity/shared/util/ui.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../shared/prefs/pref_manager.dart';
import 'editprofile-eng.dart';
import 'login-eng.dart';
import 'login/login_-screen.dart';
import 'login/model/usermodel.dart';
import 'nav-eng.dart';


class Profiledata_Eng extends StatefulWidget {
  late final String username;
  late final String fullName;


  @override
  State<Profiledata_Eng> createState() => _Profiledata_EngState();

  Profiledata_Eng({required String user_name, required String full_Name});
}

class _Profiledata_EngState extends State<Profiledata_Eng> {


  @override

  Widget build(BuildContext context) {
    double baseWidth = 430;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      drawer: NavBar_Eng(),
      appBar: AppBar(
        toolbarHeight: 40,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 130.0),
            child: IconButton(
              onPressed: () {

              },
              icon: Icon(Icons.home),
              iconSize: 30,
            ),
          ),
          IconButton(
            onPressed: () {

            },
            icon: Icon(Icons.search),
            iconSize: 30,
          )
        ],
      ),
      body:  Container(
              width: double.infinity,
              child: Container(
                // profiledataehc (67:364)
                padding: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 0 * fem),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xffebebeb),
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // line1CWA (67:369)
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
                        // autogroupjcnavSA (3AwYk2UvUM3K11KoKMJcna)
                        padding:
                        EdgeInsets.fromLTRB(13 * fem, 15 * fem, 16 * fem, 0 * fem),
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // autogroupctge42a (3AwXee8sX8rpUpy1nHCtgE)
                              margin: EdgeInsets.fromLTRB(
                                  11 * fem, 0 * fem, 5 * fem, 9 * fem),
                              width: double.infinity,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                            return Editprofile_Eng();
                                          }));
                                    },
                                    child: Container(
                                      // vectorALW (145:229)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 2 * fem, 84 * fem, 0 * fem),
                                      width: 34 * fem,
                                      height: 27 * fem,
                                      child: Image.asset(
                                        'assets/mobile-app/images/vector-VuG.png',
                                        width: 34 * fem,
                                        height: 27 * fem,
                                      ),
                                    ),
                                  ),

                                  Container(
                                    // profiledataV7t (67:374)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 93 * fem, 0 * fem),
                                    child: Text(
                                      'Profile Data'.tr(),
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
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                            return Login_Eng();
                                          }));
                                    },
                                    child: Container(
                                      // vectornMt (67:375)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 0 * fem, 2 * fem),
                                      width: 23 * fem,
                                      height: 21 * fem,
                                      child: Image.asset(
                                        'assets/mobile-app/images/vector-5pa.png',
                                        width: 23 * fem,
                                        height: 21 * fem,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              // autogroupeo2whze (3AwXooYGjcXukEwuL8eo2W)
                              margin: EdgeInsets.fromLTRB(
                                  101 * fem, 0 * fem, 94 * fem, 0 * fem),
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
                                    // autogroupmtpenFQ (3AwXyDSFoU43ntmGecmtpe)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 0 * fem, 7 * fem),
                                    padding: EdgeInsets.fromLTRB(
                                        118 * fem, 121 * fem, 10 * fem, 11 * fem),
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Color(0xffd9d9d9),
                                      borderRadius: BorderRadius.circular(77.5 * fem),

                                      image:  DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                          '${PrefManager.currentUser?.profileImage}',
                                        ),
                                      ),
                                    ),
                                    child: MaterialButton(

                                      onPressed: () {
                                        UI.push(AppRoutes.UpdatePro);
                                      },
                                      child: const Icon(Icons.camera_alt_outlined,size: 30),

                                    ),
                                  ),
                                  Container(
                                    // lorem123zMU (67:372)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 4 * fem, 0 * fem),
                                    child: PrefManager.currentUser?.userName != null
                                        ? Text('${PrefManager.currentUser?.userName}', style: SafeGoogleFont(
                                      'Inter',
                                      fontSize: 19 * ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.2272726406 * ffem / fem,
                                      letterSpacing: -0.44 * fem,
                                      color: Color(0xff000000),
                                    ))
                                        : Text(
                                      "@mahmoud",
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
                              // generalinfo6fQ (67:376)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 284 * fem, 10 * fem),
                              child: Text(
                                'General Info'.tr(),
                                style: SafeGoogleFont(
                                  'Inter',
                                  fontSize: 20 * ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.2272726059 * ffem / fem,
                                  letterSpacing: -0.4 * fem,
                                  color: Color(0xff013267),
                                ),
                              ),
                            ),
                            Container(
                              // autogroupybj4p5c (3AwY88M5AZt6H4ugRqYbj4)
                              padding: EdgeInsets.fromLTRB(
                                  17 * fem, 8 * fem, 17 * fem, 173 * fem),
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Color(0xffffffff),
                                borderRadius: BorderRadius.circular(36 * fem),
                              ),
                              child: SingleChildScrollView(

                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                      // autogroupc5pljTU (3AwYKhr7cMPykTJXkUC5PL)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 0 * fem, 14 * fem),
                                      width: 167 * fem,
                                      height: 43 * fem,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            // nameFwc (67:377)
                                            left: 0 * fem,
                                            top: 0 * fem,
                                            child: Align(
                                              child: SizedBox(
                                                width: 48 * fem,
                                                height: 20 * fem,
                                                child: Text(
                                                  'Name:'.tr(),
                                                  style: SafeGoogleFont(
                                                    'Inter',
                                                    fontSize: 16 * ffem,
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.2272726297 * ffem / fem,
                                                    letterSpacing: -0.32 * fem,
                                                    color: Color(0xff676767),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            // abdoaboualsoudLy4 (67:384)
                                            left: 0 * fem,
                                            top: 18 * fem,
                                            child: Align(
                                              child: SizedBox(
                                                width: 167 * fem,
                                                height: 25 * fem,
                                                child: StudentManager.currentUser?.id != null
                                               ? Text(
                                                  '${StudentManager.currentUser?.fullNameInArabic}',
                                                  style: SafeGoogleFont(
                                                    'Inter',
                                                    fontSize: 20 * ffem,
                                                    fontWeight: FontWeight.w600,
                                                    height: 1.2272726059 * ffem / fem,
                                                    letterSpacing: -0.4 * fem,
                                                    color: Color(0xff000000),
                                                  ),
                                                )
                                               : Text(
                                              'this is my student10.th full name',
                                              style: SafeGoogleFont(
                                              'Inter',
                                                  fontSize: 20 * ffem,
                                                  fontWeight: FontWeight.w600,
                                              height: 1.2272726059 * ffem / fem,
                                                  letterSpacing: -0.4 * fem,
                                                  color: Color(0xff000000),
                                            ),
                                          ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      // autogroupeq7cdxA (3AwYQ34ENDPUbvTVkmEq7c)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 0 * fem, 23 * fem),
                                      width: 180 * fem,
                                      height: 50 * fem,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            // usernameyWE (67:379)
                                            left: 0 * fem,
                                            top: 0 * fem,
                                            child: Align(
                                              child: SizedBox(
                                                width: 75 * fem,
                                                height: 20 * fem,
                                                child: Text(
                                                  'Username'.tr(),
                                                  style: SafeGoogleFont(
                                                    'Inter',
                                                    fontSize: 16 * ffem,
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.2272726297 * ffem / fem,
                                                    letterSpacing: -0.32 * fem,
                                                    color: Color(0xff676767),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Spacer(),
                                          Positioned(
                                            // aboualsoudH18 (67:386)
                                            left: 0 * fem,
                                            top: 25 * fem,
                                            child: Align(
                                              child: SizedBox(
                                                width: 180 * fem,
                                                height: 25 * fem,
                                                child: PrefManager.currentUser?.token != null
                                                    ? Text(' ${PrefManager.currentUser?.userName}', style:SafeGoogleFont(
                                                  'Inter',
                                                  fontSize: 18 * ffem,
                                                  fontWeight: FontWeight.w600,
                                                  height: 1.2272726059 * ffem / fem,
                                                  letterSpacing: -0.4 * fem,
                                                  color: Color(0xff000000),
                                                ))
                                                    : Text(
                                                  '',
                                                  style: SafeGoogleFont(
                                                    'Inter',
                                                    fontSize: 20 * ffem,
                                                    fontWeight: FontWeight.w600,
                                                    height: 1.2272726059 * ffem / fem,
                                                    letterSpacing: -0.4 * fem,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      // autogroupjbhgaW2 (3AwYUHS9qcmHryfdqWjBhG)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 0 * fem, 24 * fem),
                                      width: 225 * fem,
                                      height: 40 * fem,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            // emailhqY (67:380)
                                            left: 0 * fem,
                                            top: 0 * fem,
                                            child: Align(
                                              child: SizedBox(
                                                width: 39 * fem,
                                                height: 20 * fem,
                                                child: Text(
                                                  'Email'.tr(),
                                                  style: SafeGoogleFont(
                                                    'Inter',
                                                    fontSize: 16 * ffem,
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.2272726297 * ffem / fem,
                                                    letterSpacing: -0.32 * fem,
                                                    color: Color(0xff676767),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            // aboualsoudgmailcomota (67:387)
                                            left: 0 * fem,
                                            top: 15 * fem,
                                            child: Align(
                                              child: SizedBox(
                                                width: 225 * fem,
                                                height: 25 * fem,
                                                child:  PrefManager.currentUser?.token != null
                                                    ? Text(' ${PrefManager.currentUser?.email}',
                                                  style: SafeGoogleFont(
                                                    'Inter',
                                                    fontSize: 20 * ffem,
                                                    fontWeight: FontWeight.w600,
                                                    height: 1.2272726059 * ffem / fem,
                                                    letterSpacing: -0.4 * fem,
                                                    color: Color(0xff000000),
                                                  ),
                                                )
                                                :Text(
                                                  '',
                                                  style: SafeGoogleFont(
                                                    'Inter',
                                                    fontSize: 20 * ffem,
                                                    fontWeight: FontWeight.w600,
                                                    height: 1.2272726059 * ffem / fem,
                                                    letterSpacing: -0.4 * fem,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      // autogroups9pcgSa (3AwYY2pucGT1ZZCpNzs9PC)
                                      width: 76 * fem,
                                      height: 40 * fem,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            // codepHt (67:381)
                                            left: 0 * fem,
                                            top: 0 * fem,
                                            child: Align(
                                              child: SizedBox(
                                                width: 40 * fem,
                                                height: 20 * fem,
                                                child: Text(
                                                  'Code'.tr(),
                                                  style: SafeGoogleFont(
                                                    'Inter',
                                                    fontSize: 16 * ffem,
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.2272726297 * ffem / fem,
                                                    letterSpacing: -0.32 * fem,
                                                    color: Color(0xff676767),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            // v62 (67:388)
                                            left: 0 * fem,
                                            top: 15 * fem,
                                            child: Align(
                                              child: SizedBox(
                                                width: 76 * fem,
                                                height: 25 * fem,
                                                child:  StudentManager.currentUser?.id != null
                                                ?Text(
                                                  '${StudentManager.currentUser?.code}',
                                                  style: SafeGoogleFont(
                                                    'Inter',
                                                    fontSize: 20 * ffem,
                                                    fontWeight: FontWeight.w600,
                                                    height: 1.2272726059 * ffem / fem,
                                                    letterSpacing: -0.4 * fem,
                                                    color: Color(0xff000000),
                                                  ),
                                                )
                                               : Text(
                                                  '22',
                                                  style: SafeGoogleFont(
                                                    'Inter',
                                                    fontSize: 20 * ffem,
                                                    fontWeight: FontWeight.w600,
                                                    height: 1.2272726059 * ffem / fem,
                                                    letterSpacing: -0.4 * fem,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),


                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 5,),
                                    Center(child: Text("My course"))

                                  ],
                                ),
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
