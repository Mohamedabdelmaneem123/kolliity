import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

import 'dart:ui';

import 'package:kolliity/features/units.dart';

import 'log-in.dart';
import 'login-eng.dart';

class Choosing_lang extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 430;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: Container(
        // choosinglanguage7ga (261:50)
        padding: EdgeInsets.fromLTRB(0 * fem, 8 * fem, 0 * fem, 0 * fem),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xffffffff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogrouptgtxqMg (3Av4hagbANFiw7rLKmTgTx)
              margin: EdgeInsets.fromLTRB(9 * fem, 0 * fem, 12 * fem, 7 * fem),
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // vectorMqp (261:52)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 165 * fem, 0 * fem),
                    width: 26 * fem,
                    height: 22 * fem,
                    child: Image.asset(
                      'assets/mobile-app/images/vector-wnN.png',
                      width: 26 * fem,
                      height: 22 * fem,
                    ),
                  ),
                  Container(
                    // vectorgdC (261:61)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 2 * fem, 169 * fem, 0 * fem),
                    width: 30 * fem,
                    height: 28 * fem,
                    child: Image.asset(
                      'assets/mobile-app/images/vector-iva.png',
                      width: 30 * fem,
                      height: 28 * fem,
                    ),
                  ),
                  Container(
                    // vectorcFx (261:51)
                    margin:
                        EdgeInsets.fromLTRB(0 * fem, 2 * fem, 0 * fem, 0 * fem),
                    width: 19 * fem,
                    height: 19 * fem,
                    child: Image.asset(
                      'assets/mobile-app/images/vector-qdp.png',
                      width: 19 * fem,
                      height: 19 * fem,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // line19Ft (261:54)
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
              // autogroupefvnGrJ (3Av54a5cg1HkTA4YxtEFvN)
              padding:
                  EdgeInsets.fromLTRB(95 * fem, 0 * fem, 94 * fem, 0 * fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroupi1wenpe (3Av4pKzM9Y61zZRG6qi1WE)
                    margin: EdgeInsets.fromLTRB(
                        12 * fem, 0 * fem, 25 * fem, 11 * fem),
                    width: double.infinity,
                    height: 113 * fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // Jnz (261:58)
                          width: 113 * fem,
                          height: 113 * fem,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(97.5 * fem),
                            child: Image.asset(
                              'assets/mobile-app/images/-Cr2.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          // autogroupu9sl3En (3Av4uaLc2Sr2NZyKG7u9sL)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 24 * fem, 0 * fem, 29 * fem),
                          width: 91 * fem,
                          height: double.infinity,
                          child: Stack(
                            children: [
                              Positioned(
                                // fcaixsY (261:59)
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
                                        height: 1.2272726547 * ffem / fem,
                                        letterSpacing: -0.86 * fem,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // platform3PC (261:60)
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
                                        height: 1.2272726206 * ffem / fem,
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
                    // chooselanguage8fY (261:53)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 2 * fem, 29 * fem),
                    child: Text(
                      'Choose Language',
                      style: SafeGoogleFont(
                        'Inter',
                        fontSize: 28 * ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.2272725786 * ffem / fem,
                        letterSpacing: -0.56 * fem,
                        color: Color(0xff013267),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return login();
                      }));
                    },
                    child: Column(
                      children: [
                        Container(
                          // flagegyptcountryworldicon1ECn (261:62)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 2 * fem, 3 * fem),
                          width: 127 * fem,
                          height: 127 * fem,
                          child: Image.asset(
                            'assets/mobile-app/images/flagegyptcountryworldicon-1-13t.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          // arabicwcz (261:63)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 6 * fem, 30 * fem),
                          child: Text(
                            'Arabic',
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
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Login_Eng();
                      }));
                    },
                    child: Column(
                      children: [
                        Container(
                          // group17enJ (261:84)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 10 * fem, 6 * fem),
                          width: 127 * fem,
                          height: 127 * fem,
                          child: Image.asset(
                            'assets/mobile-app/images/group-17-Zka.png',
                            width: 127 * fem,
                            height: 127 * fem,
                          ),
                        ),
                        Container(
                          // englishMwc (261:73)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 19 * fem, 55 * fem),
                          child: Text(
                            'English',
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
                      ],
                    ),
                  ),
                  Container(
                    // frame2HKU (261:55)
                    padding: EdgeInsets.fromLTRB(
                        58 * fem, 17.5 * fem, 59 * fem, 15.5 * fem),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(19 * fem),
                      gradient: LinearGradient(
                        begin: Alignment(0.1, -0.582),
                        end: Alignment(0.598, 2.716),
                        colors: <Color>[Color(0xff0e8388), Color(0xffffffff)],
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
                          // vectorwQ2 (261:56)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 5 * fem, 1 * fem),
                          width: 19 * fem,
                          height: 20 * fem,
                          child: Image.asset(
                            'assets/mobile-app/images/vector-4Kg.png',
                            width: 19 * fem,
                            height: 20 * fem,
                          ),
                        ),
                        Text(
                          // continueYuc (261:57)
                          'Continue',
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
