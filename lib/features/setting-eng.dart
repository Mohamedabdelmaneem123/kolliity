import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:kolliity/features/profiledata-eng.dart';
import 'package:kolliity/features/theme-service.dart';
import 'package:kolliity/features/units.dart';
import 'package:kolliity/shared/Dark_mode/AppCubit.dart';
import 'package:provider/provider.dart';
import 'package:kolliity/shared/extentions/string_extensions.dart';

import '../shared/constants/themes.dart';
import '../shared/util/app_routes.dart';
import '../shared/util/ui.dart';
import 'editlang_eng.dart';


class Setting_Eng extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 430;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Container(
          // settingspLn (275:1280)
          padding: EdgeInsets.fromLTRB(29 * fem, 28 * fem, 28 * fem, 0 * fem),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xffe8e8e8),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // autogroupbnv28cN (3AxtdxMaw5hG8oDt9BBNv2)
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 29 * fem),
                width: double.infinity,
                height: 304 * fem,
                child: Stack(
                  children: [
                    Positioned(
                      // rectangle58eai (275:1281)
                      left: 0 * fem,
                      top: 0 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 373 * fem,
                          height: 270 * fem,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xff54a7aa),
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(78 * fem),
                                bottomLeft: Radius.circular(78 * fem),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // rectangle59kdk (275:1283)
                      left: 95 * fem,
                      top: 117 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 183 * fem,
                          height: 107 * fem,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(43 * fem),
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // group18gGW (272:1155)
                      left: 154 * fem,
                      top: 138 * fem,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(
                            18.14 * fem, 19.03 * fem, 18.17 * fem, 19.03 * fem),
                        width: 65 * fem,
                        height: 66.76 * fem,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              'assets/mobile-app/images/vector-KGJ.png',
                            ),
                          ),
                        ),
                        child: Center(
                          // vectoryFc (272:1157)
                          child: SizedBox(
                            width: 28.69 * fem,
                            height: 28.69 * fem,
                            child: Image.asset(
                              'assets/mobile-app/images/vector-okr.png',
                              width: 28.69 * fem,
                              height: 28.69 * fem,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // settingsWFY (275:1284)
                      left: 137 * fem,
                      top: 69 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 98 * fem,
                          height: 31 * fem,
                          child: Text(
                            'settings'.tr(),
                            style: SafeGoogleFont(
                              'Inter',
                              fontSize: 25 * ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.227272644 * ffem / fem,
                              letterSpacing: -0.5 * fem,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // vectorQri (275:1285)
                      left: 325 * fem,
                      top: 70 * fem,
                      child: GestureDetector(
                        onTap: () {
                          UI.push(AppRoutes.profileData);
                        },
                        child: Container(
                          child: Align(
                            child: SizedBox(
                              width: 23 * fem,
                              height: 21 * fem,
                              child: Image.asset(
                                'assets/mobile-app/images/vector-Qar.png',
                                width: 23 * fem,
                                height: 21 * fem,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // rectangle60LVU (275:1286)
                      left: 46 * fem,
                      top: 0 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 281 * fem,
                          height: 66 * fem,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(80 * fem),
                                bottomLeft: Radius.circular(80 * fem),
                              ),
                              gradient: LinearGradient(
                                begin: Alignment(0.004, -0.485),
                                end: Alignment(0.004, 1.424),
                                colors: <Color>[
                                  Color(0xffffffff),
                                  Color(0x00ffffff)
                                ],
                                stops: <double>[0, 1],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // frame15Nwx (275:1289)
                      left: 90 * fem,
                      top: 244 * fem,
                      child: GestureDetector(
                        onTap: () {
                          UI.push(AppRoutes.profileData);
                        },
                        child: Container(
                          padding: EdgeInsets.fromLTRB(
                              34 * fem, 10 * fem, 34 * fem, 10 * fem),
                          width: 250 * fem,
                          height: 60 * fem,
                          decoration: BoxDecoration(
                            color: Color(0xffffffff),
                            borderRadius: BorderRadius.circular(57 * fem),
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
                                // ellipse1rs8 (272:1127)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 10 * fem, 0 * fem),
                                width: 40 * fem,
                                height: 40 * fem,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20 * fem),
                                  color: Color(0xffd9d9d9),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                      'assets/mobile-app/images/ellipse-1-bg-cEz.png',
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                // profileyB4 (275:1288)
                                'My profile'.tr(),
                                style: SafeGoogleFont(
                                  'Inter',
                                  fontSize: 25 * ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.227272644 * ffem / fem,
                                  letterSpacing: -0.5 * fem,
                                  color: Color(0xff013267),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // vectoruaW (272:1172)
                      left: 171 * fem,
                      top: 10 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 30 * fem,
                          height: 28 * fem,
                          child: Image.asset(
                            'assets/mobile-app/images/vector-jL2.png',
                            width: 30 * fem,
                            height: 28 * fem,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // autogroupsbmgRHx (3AxtxhKMnL7rdgunrbsBMg)
                margin:
                    EdgeInsets.fromLTRB(12 * fem, 0 * fem, 39 * fem, 0 * fem),
                width: double.infinity,
                height: 249 * fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      // autogroupfuyaZ9G (3Axu5XTK3xZqHYRYZDfuYa)
                      padding: EdgeInsets.fromLTRB(
                          7 * fem, 18 * fem, 8 * fem, 145 * fem),
                      width: 45 * fem,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment(0, -1),
                          end: Alignment(-0.222, 1.928),
                          colors: <Color>[Color(0xff51a5a9), Color(0xffffffff)],
                          stops: <double>[0, 1],
                        ),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(13 * fem),
                          bottomRight: Radius.circular(13 * fem),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // vector1mx (272:1158)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 2 * fem, 29 * fem),
                            width: 28 * fem,
                            height: 28 * fem,
                            child: Image.asset(
                              'assets/mobile-app/images/vector-c4N.png',
                              width: 28 * fem,
                              height: 28 * fem,
                            ),
                          ),
                          Container(
                              // vector8Ln (272:1159)
                              margin: EdgeInsets.fromLTRB(
                                  1 * fem, 0 * fem, 0 * fem, 0 * fem),
                              width: 29 * fem,
                              height: 29 * fem,
                              child: IconButton(
                                icon: Icon(Icons.dark_mode),
                                onPressed: () {
                                  ThemeProvider().isDarkMode;
                                },
                              )),
                        ],
                      ),
                    ),
                    Container(
                      // autogroup54aa3ie (3AxuAMebWaFRhVFU6n54Aa)
                      padding: EdgeInsets.fromLTRB(
                          11 * fem, 20 * fem, 11 * fem, 117 * fem),
                      width: 277 * fem,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment(0.065, 0.099),
                          end: Alignment(0.31, 2.249),
                          colors: <Color>[Color(0xffffffff), Color(0xff68b1b4)],
                          stops: <double>[0, 1],
                        ),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(13 * fem),
                          bottomRight: Radius.circular(13 * fem),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:[
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return EditLang_Eng();
                              }));
                            },
                            child: Container(
                              // languageJ8n (272:1160)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 36 * fem),
                              child: Text(
                                'language'.tr(),
                                textAlign: TextAlign.right,
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
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                // display1Yz (272:1161)
                                'Display'.tr(),
                                textAlign: TextAlign.right,
                                style: SafeGoogleFont(
                                  'Inter',
                                  fontSize: 20 * ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.2272726059 * ffem / fem,
                                  letterSpacing: -0.4 * fem,
                                  color: Color(0xff013267),
                                ),
                              ),
                              const Spacer(),
                              Switch(
                                value: Appcubiit.get(context).isdark,
                                // Provider.of<ThemeProvider>(context).isDarkMode,
                                onChanged: (value) {
                                  Appcubiit.get(context).changemode();
                                  // Provider.of<ThemeProvider>(context, listen: false).changemode();
                                },
                              ),
                            ],
                          ),


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
    );
  }
}
