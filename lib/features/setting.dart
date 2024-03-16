import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/widgets.dart';
import 'package:kolliity/features/profiledata.dart';
import 'dart:ui';

import 'package:kolliity/features/units.dart';

import 'choosing_lang_edit.dart';

class Setting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 430;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Container(
          // settingsTQJ (275:1290)
          padding: EdgeInsets.fromLTRB(29 * fem, 24 * fem, 28 * fem, 0 * fem),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xffe8e8e8),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // autogroupwgfxNnA (3AxunWH2fjFhCfW4kvWGfx)
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 29 * fem),
                width: double.infinity,
                height: 304 * fem,
                child: Stack(
                  children: [
                    Positioned(
                      // rectangle58Vrn (275:1291)
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
                      // rectangle59BzW (275:1292)
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
                      // group18u9p (275:1293)
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
                              'assets/mobile-app/images/vector-Xn6.png',
                            ),
                          ),
                        ),
                        child: Center(
                          // vectoroFC (275:1295)
                          child: SizedBox(
                            width: 28.69 * fem,
                            height: 28.69 * fem,
                            child: Image.asset(
                              'assets/mobile-app/images/vector-zpW.png',
                              width: 28.69 * fem,
                              height: 28.69 * fem,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // 82a (275:1296)
                      left: 136 * fem,
                      top: 69 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 110 * fem,
                          height: 31 * fem,
                          child: Text(
                            'الإعدادات',
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
                      top: 69,
                      left: 20,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Profiledata();
                          }));
                        },
                        child: Container(
                          child: Image.asset(
                            'assets/mobile-app/images/vector-hmg.png',
                            width: 23 * fem,
                            height: 21 * fem,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // rectangle6079Q (275:1298)
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
                      // frame15NLE (275:1299)
                      left: 67 * fem,
                      top: 244 * fem,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Profiledata();
                          }));
                        },
                        child: Container(
                          padding: EdgeInsets.fromLTRB(
                              9 * fem, 10 * fem, 0 * fem, 10 * fem),
                          width: 246 * fem,
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
                                // ellipse1EdL (275:1300)
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
                                      'assets/mobile-app/images/ellipse-1-bg-2pe.png',
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                // MT4 (275:1301)
                                'الملف الشخصي',
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
                      // vectorUna (275:1308)
                      left: 171 * fem,
                      top: 10 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 30 * fem,
                          height: 28 * fem,
                          child: Image.asset(
                            'assets/mobile-app/images/vector-zhL.png',
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
                // autogroupcwajP8r (3Axv3agF2ncFbPbcrQcWaJ)
                margin:
                    EdgeInsets.fromLTRB(12 * fem, 0 * fem, 39 * fem, 0 * fem),
                width: double.infinity,
                height: 249 * fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      // autogroupi22rK2W (3AxvCF6UYWbFJKuYrzi22r)
                      padding: EdgeInsets.fromLTRB(
                          194 * fem, 20 * fem, 17 * fem, 145 * fem),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment(0.065, 0.099),
                          end: Alignment(0.31, 2.249),
                          colors: <Color>[Color(0xffffffff), Color(0xff68b1b4)],
                          stops: <double>[0, 1],
                        ),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(13 * fem),
                          bottomLeft: Radius.circular(13 * fem),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return EditLanguage();
                              }));
                            },
                            child: Container(
                              // Aop (275:1306)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 33 * fem),
                              child: Text(
                                'اللغة',
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
                          Text(
                            // UpW (275:1307)
                            'العرض',
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
                        ],
                      ),
                    ),
                    Container(
                      // autogroup1xhccvi (3AxvHf77zLacsAMFsN1xhC)
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
                          topLeft: Radius.circular(13 * fem),
                          bottomLeft: Radius.circular(13 * fem),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // vectorgfg (275:1303)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 2 * fem, 29 * fem),
                            width: 28 * fem,
                            height: 28 * fem,
                            child: Image.asset(
                              'assets/mobile-app/images/vector-8Fp.png',
                              width: 28 * fem,
                              height: 28 * fem,
                            ),
                          ),
                          Container(
                            // vectorCtv (275:1304)
                            margin: EdgeInsets.fromLTRB(
                                1 * fem, 0 * fem, 0 * fem, 0 * fem),
                            width: 29 * fem,
                            height: 29 * fem,
                            child: Image.asset(
                              'assets/mobile-app/images/vector-U5t.png',
                              width: 29 * fem,
                              height: 29 * fem,
                            ),
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
