import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:kolliity/features/units.dart';
import 'dart:ui';

import 'editprofile.dart';
import 'log-in.dart';
import 'nav.dart';


class Profiledata extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 430;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      drawer: NavBar(),
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
          // profiledatayrE (262:443)
          padding: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 0 * fem),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xffebebeb),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // line1BV8 (262:65)
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
                // autogroupotdcN1C (3AwbEHfsy8bee4YtFkotDc)
                padding:
                    EdgeInsets.fromLTRB(13 * fem, 15 * fem, 15 * fem, 0 * fem),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // autogroup5qtngna (3Awa3jomRUGqLHasUx5Qtn)
                      margin: EdgeInsets.fromLTRB(
                          8 * fem, 0 * fem, 0 * fem, 12 * fem),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return login();
                              }));
                            },
                            child: Container(
                              // vectorDnW (262:454)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 1 * fem, 75 * fem, 0 * fem),
                              width: 23 * fem,
                              height: 21 * fem,
                              child: Image.asset(
                                'assets/mobile-app/images/vector-riA.png',
                                width: 23 * fem,
                                height: 21 * fem,
                              ),
                            ),
                          ),
                          Container(
                            // 9gA (262:453)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 53 * fem, 7 * fem),
                            child: Text(
                              'بيانات الملف الشخصي',
                              style: SafeGoogleFont(
                                'Inter',
                                fontSize: 24 * ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.2272726059 * ffem / fem,
                                letterSpacing: -0.4 * fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return Editprofile();
                              }));
                            },
                            child: Container(
                              // vector2jx (262:470)
                              margin: EdgeInsets.fromLTRB(
                                  25 * fem, 5 * fem, 0 * fem, 0 * fem),
                              width: 34 * fem,
                              height: 27 * fem,
                              child: Image.asset(
                                'assets/mobile-app/images/vector-put.png',
                                width: 34 * fem,
                                height: 27 * fem,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // autogroupviuuxNi (3AwaC9jR5pQnFz4KiuViuU)
                      margin: EdgeInsets.fromLTRB(
                          101 * fem, 0 * fem, 95 * fem, 0 * fem),
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
                            // autogroupitcapvi (3AwaJ9ZRWrhvyi7pC5iTcA)
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
                                  'assets/mobile-app/images/ellipse-1-bg-Vyg.png',
                                ),
                              ),
                            ),
                            child: Align(
                              // vectoruSN (262:452)
                              alignment: Alignment.bottomRight,
                              child: SizedBox(
                                width: 27 * fem,
                                height: 23 * fem,
                                child: Image.asset(
                                  'assets/mobile-app/images/vector-BV8.png',
                                  width: 27 * fem,
                                  height: 23 * fem,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            // lorem123qqp (262:451)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 4 * fem, 0 * fem),
                            child: Text(
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
                      // MZG (262:455)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 265 * fem, 10 * fem),
                      child: Text(
                        'معلومات عامة',
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
                      // autogroupanuefpr (3AwaSUestkECJzeSWVaNUE)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 1 * fem, 0 * fem),
                      padding: EdgeInsets.fromLTRB(
                          159 * fem, 11 * fem, 12 * fem, 171 * fem),
                      decoration: BoxDecoration(
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.circular(36 * fem),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            // autogroupm5neMhg (3AwabPZhFr4EoAnrHiM5Ne)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 7 * fem, 11 * fem),
                            width: 167 * fem,
                            height: 43 * fem,
                            child: Stack(
                              children: [
                                Positioned(
                                  // 5ta (262:653)
                                  left: 128 * fem,
                                  top: 0 * fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 37 * fem,
                                      height: 20 * fem,
                                      child: Text(
                                        'الاسم',
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
                                  // abdoaboualsoudyj4 (262:463)
                                  left: 0 * fem,
                                  top: 18 * fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 167 * fem,
                                      height: 25 * fem,
                                      child: Text(
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
                            // autogrouptcduGTG (3Awah8u7qWWLjf1rzFtcdU)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 1 * fem, 20 * fem),
                            width: 136 * fem,
                            height: 43 * fem,
                            child: Stack(
                              children: [
                                Positioned(
                                  // c1L (262:458)
                                  left: 50 * fem,
                                  top: 0 * fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 96 * fem,
                                      height: 20 * fem,
                                      child: Text(
                                        'اسم المستخدم',
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
                                  // aboualsoudJPx (262:465)
                                  left: 0 * fem,
                                  top: 18 * fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 129 * fem,
                                      height: 25 * fem,
                                      child: Text(
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
                          Text(
                            // CkE (262:459)
                            'البريد الإلكتروني',
                            style: SafeGoogleFont(
                              'Inter',
                              fontSize: 16 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2272726297 * ffem / fem,
                              letterSpacing: -0.32 * fem,
                              color: Color(0xff676767),
                            ),
                          ),
                          Container(
                            // aboualsoudgmailcomwC2 (262:466)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 5 * fem, 19 * fem),
                            child: Text(
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
                          Container(
                            // autogrouplwveecE (3AwaoU3uQPGDq2rf9cLwve)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 5 * fem, 0 * fem),
                            width: 77 * fem,
                            height: 42 * fem,
                            child: Stack(
                              children: [
                                Positioned(
                                  // aEz (262:460)
                                  left: 45 * fem,
                                  top: 0 * fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 32 * fem,
                                      height: 20 * fem,
                                      child: Text(
                                        'الكود',
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
                                  // g38 (262:467)
                                  left: 0 * fem,
                                  top: 17 * fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 76 * fem,
                                      height: 25 * fem,
                                      child: Text(
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
