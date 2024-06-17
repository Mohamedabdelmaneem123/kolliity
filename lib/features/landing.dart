import 'package:flutter/material.dart';
import 'package:kolliity/features/log-in.dart';
import 'package:kolliity/shared/extentions/string_extensions.dart';

import 'dart:ui';

import 'package:kolliity/features/units.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:kolliity/shared/util/app_routes.dart';
import 'package:kolliity/shared/util/ui.dart';

import 'choosing-lang.dart';


class Landing extends StatelessWidget {

  @override

  Widget build(BuildContext context) {
    double baseWidth = 430;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;


    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Column(
              children: [

                Container(
                  // autogroupcke2Ndk (3AucKFpAPJrWmqDRqmCke2)
                  margin: EdgeInsets.fromLTRB(90 * fem, 0 * fem, 26 * fem, 73 * fem),
                  width: double.infinity,
                  height: 330 * fem,
                  child: Stack(
                    children:<Widget> [
                      Positioned(
                        // J1c (67:11)
                        left: 0 * fem,
                        top: 10 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 254 * fem,
                            height: 254 * fem,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(97.5 * fem),
                              child: Image.asset(
                                'assets/mobile-app/images/-e2A.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // fcaibmQ (67:12)
                        left: 59 * fem,
                        top: 250 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 135 * fem,
                            height: 70 * fem,
                            child: Text(
                              'FCAI',
                              style: SafeGoogleFont(
                                'Krub',
                                fontSize: 64 * ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.2272726297 * ffem / fem,
                                letterSpacing: -1.28 * fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // platformsyp (67:13)
                        left: 127 * fem,
                        top: 310 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 63 * fem,
                            height: 20 * fem,
                            child: Text(
                              'platform',
                              style: SafeGoogleFont(
                                'Krub',
                                fontSize: 16 * ffem,
                                fontWeight: FontWeight.w500,
                                height: 1.2272726297 * ffem / fem,
                                letterSpacing: -0.32 * fem,
                                color: Color(0xff6b6b6b),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 50 * fem,
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        // welcometoyourplatformJpE (67:14)
                        left: 70 * fem,
                        top: 0 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 293 * fem,
                            height: 30 * fem,
                            child: Text(
                              'Welcome to your Platform',
                              style: SafeGoogleFont(
                                'Inter',
                                fontSize: 24 * ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.2272726695 * ffem / fem,
                                letterSpacing: -0.48 * fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // PKt (67:15)
                        left: 170 * fem,
                        top: 29 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 195 * fem,
                            height: 18 * fem,
                            child: Text(
                              'منصة كلية حاسبات وذكاء اصطناعي',
                              style: SafeGoogleFont(
                                'Inter',
                                fontSize: 15 * ffem,
                                fontWeight: FontWeight.w500,
                                height: 1.2272725786 * ffem / fem,
                                letterSpacing: -0.28 * fem,
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
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return login();
                      }));
                    },
                    child: Container(
                      width: 259 * fem,
                      height: 67 * fem,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8 * fem),
                        gradient: LinearGradient(
                          begin: Alignment(-0.123, -0.447),
                          end: Alignment(0.541, 5.806),
                          colors: <Color>[Color(0xff0e8388), Color(0x00ffffff)],
                          stops: <double>[0, 1],
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x3f000000),
                            offset: Offset(0 * fem, 4 * fem),
                            blurRadius: 2 * fem,
                          ),
                        ],
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // vector1HrW (67:18)
                            margin: EdgeInsets.fromLTRB(
                                40 * fem, 0 * fem, 10 * fem, 0 * fem),
                            width: 31 * fem,
                            height: 27 * fem,
                            child: Image.asset(
                              'assets/mobile-app/images/vector-1.png',
                              width: 31 * fem,
                              height: 27 * fem,
                            ),
                          ),
                          Container(
                            // joinplatformnowc86 (67:19)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 1 * fem, 0 * fem, 0 * fem),
                            child: ElevatedButton(

                              onPressed: () {
                                UI.pushWithRemove(AppRoutes.loginScreen);
                              },
                              child: Text(
                                'Join Platform Now'.tr(),
                                style: SafeGoogleFont(
                                  'Inter',
                                  fontSize: 15 * ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.2272725786 * ffem / fem,
                                  letterSpacing: -0.28 * fem,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  // autogroupgep6weE (3AucW11FzWDaK6A1vxGEp6)
                  width: double.infinity,
                  height: 422 * fem,
                  child: Stack(
                    children:<Widget> [
                      Positioned(
                        // vector274r (67:20)
                        left: -20 * fem,
                        top: -40 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 452 * fem,
                            height: 405 * fem,
                            child: Image.asset(
                              'assets/mobile-app/images/vector-2.png',
                              width: 452 * fem,
                              height: 405 * fem,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // alreadyhaveaccount2Bp (67:21)
                        left: 133 * fem,
                        top: 120 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 157 * fem,
                            height: 19 * fem,
                            child: Text(
                              "Already have account?".tr(),
                              
                              style: SafeGoogleFont(
                                'Inter',
                                fontSize: 15 * ffem,
                                fontWeight: FontWeight.w500,
                                height: 1.2272726695 * ffem / fem,
                                letterSpacing: -0.3 * fem,
                                color: Color(0xffffffff),

                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // frame27UA (67:22)
                        left: 85 * fem,
                        top: 150 * fem,
                        child: Container(
                          padding: EdgeInsets.fromLTRB(
                              82.5 * fem, 19.5 * fem, 82.5 * fem, 18.5 * fem),
                          width: 259 * fem,
                          height: 67 * fem,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8 * fem),
                            gradient: LinearGradient(
                              begin: Alignment(0.1, -0.582),
                              end: Alignment(0.598, 2.716),
                              colors: <Color>[Color(0xffffffff), Color(0xff0e8388)],
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
                          child: MaterialButton(
                            onPressed: () {
                              UI.pushWithRemove(AppRoutes.loginScreen);
                              },
                            child: SingleChildScrollView(
                              scrollDirection:Axis.horizontal ,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    // loginUi2 (67:24)
                                    'Login'.tr(),
                                    style: SafeGoogleFont(
                                      'Inter',
                                      fontSize: 23 * ffem,
                                      fontWeight: FontWeight.w700,
                                      height: 1.2272726142 * ffem / fem,
                                      letterSpacing: -0.46 * fem,
                                      color: Color(0xff0e8388),
                                    ),
                                  ),
                                ],
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
        ),
      ),
    );
  }
}
