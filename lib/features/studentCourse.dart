import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:kolliity/features/units.dart';

import 'nav.dart';


class StudentCourse extends StatelessWidget {
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
          // studentscourses8mc (281:1603)
          padding: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 0 * fem),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xffebebeb),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // line1Yir (281:1608)
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
                // autogroupnpls4x6 (3AwsHAG9RcGse51BemnPLS)
                padding:
                    EdgeInsets.fromLTRB(18 * fem, 16 * fem, 0 * fem, 0 * fem),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // autogrouptahcC2i (3Awq2ZM6U5cVJioc7btaHC)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 160 * fem, 33 * fem),
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // vectorhkA (281:1614)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 132 * fem, 1 * fem),
                            width: 23 * fem,
                            height: 21 * fem,
                            child: Image.asset(
                              'assets/mobile-app/images/vector-BcA.png',
                              width: 23 * fem,
                              height: 21 * fem,
                            ),
                          ),
                          Text(
                            // QuU (281:1613)
                            'الدورات',
                            style: SafeGoogleFont(
                              'Inter',
                              fontSize: 26 * ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.2272726206 * ffem / fem,
                              letterSpacing: -0.52 * fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // jgr (281:1616)
                      margin: EdgeInsets.fromLTRB(
                          122 * fem, 0 * fem, 0 * fem, 15 * fem),
                      child: Text(
                        'دورات الطالب هذا الفصل الدراسي  ',
                        style: SafeGoogleFont(
                          'Inter',
                          fontSize: 18 * ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.2272726695 * ffem / fem,
                          letterSpacing: -0.36 * fem,
                          color: Color(0xff013267),
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
    );
  }
}
