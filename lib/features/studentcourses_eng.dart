import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:kolliity/features/profiledata-eng.dart';
import 'package:kolliity/features/units.dart';

import 'nav-eng.dart';


class StudentCourses_Eng extends StatelessWidget {
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
          // studentscoursesMW6 (281:1683)
          padding: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 0 * fem),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xffebebeb),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // line1upS (281:1688)
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 15 * fem),
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
                  // autogrouptkgaQmC (3AxKeepdN5XFsEBpuLTKgA)
                  padding: EdgeInsets.fromLTRB(
                      15 * fem, 6 * fem, 18 * fem, 491 * fem),
                  width: double.infinity,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // autogrouplpx88x6 (3AxHsTHamXGTjhz66BLpX8)
                          margin: EdgeInsets.fromLTRB(
                              145 * fem, 0 * fem, 8 * fem, 30 * fem),
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // coursesGHc (281:1732)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 2 * fem, 111 * fem, 0 * fem),
                                child: Text(
                                  'Courses',
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
                                    return Profiledata_Eng();
                                  }));
                                },
                                child: Container(
                                  // vectorZGi (281:1694)
                                  width: 23 * fem,
                                  height: 21 * fem,
                                  child: Image.asset(
                                    'assets/mobile-app/images/vector-PCa.png',
                                    width: 23 * fem,
                                    height: 21 * fem,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // studentscoursesthistermHyQ (281:1707)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 151 * fem, 6 * fem),
                          child: Text(
                            'Student’s courses this term',
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
                      ])),
            ],
          ),
        ),
      ),
    );
  }
}
