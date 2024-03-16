import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:kolliity/features/profiledata-eng.dart';
import 'package:kolliity/features/profiledata.dart';
import 'package:kolliity/features/setting-eng.dart';
import 'package:kolliity/features/units.dart';

import 'nav-eng.dart';


class EditLang_Eng extends StatelessWidget {
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
          // choosinglanguageYYe (272:1164)
          padding: EdgeInsets.fromLTRB(0 * fem, 8 * fem, 0 * fem, 0 * fem),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xffffffff),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // line1F5g (272:1168)
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
                // autogroupeq5kmpi (3Av8j3ouaciB2LULyvEQ5k)
                padding:
                    EdgeInsets.fromLTRB(9 * fem, 14 * fem, 9 * fem, 0 * fem),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // autogroup8b8juR8 (3Av8R9A5ZxSQTaEhVw8b8J)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 13 * fem, 40 * fem),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // ellipse1Sfx (272:1186)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 25 * fem, 4 * fem),
                            width: 62 * fem,
                            height: 62 * fem,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(31 * fem),
                              color: Color(0xffd9d9d9),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  'assets/mobile-app/images/ellipse-1-bg-VC2.png',
                                ),
                              ),
                            ),
                          ),
                          Container(
                            // chooselanguagej9G (272:1167)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 31 * fem, 52 * fem, 0 * fem),
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
                                return Setting_Eng();
                              }));
                            },
                            child: Container(
                              // vectorELv (272:1185)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 25 * fem),
                              width: 23 * fem,
                              height: 21 * fem,
                              child: Image.asset(
                                'assets/mobile-app/images/vector-BpA.png',
                                width: 23 * fem,
                                height: 21 * fem,
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
                          return Profiledata();
                        }));
                      },
                      child: Container(
                          child: Column(children: [
                        Container(
                          // flagegyptcountryworldicon1pR4 (263:984)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 11 * fem, 4 * fem),
                          width: 127 * fem,
                          height: 127 * fem,
                          child: Image.asset(
                            'assets/mobile-app/images/flagegyptcountryworldicon-1-z46.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          // V1Q (263:985)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 10 * fem, 3 * fem, 28 * fem),
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
                      ])),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return Profiledata_Eng();
                        }));
                      },
                      child: Container(
                        // autogroupr29khNN (3Av7PkhNEmngRDFaGyr29k)
                        margin: EdgeInsets.fromLTRB(
                            80 * fem, 10 * fem, 79 * fem, 0 * fem),

                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // group17ujL (263:987)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 6 * fem),
                              width: 127 * fem,
                              height: 127 * fem,
                              child: Image.asset(
                                'assets/mobile-app/images/group-17-oUJ.png',
                                width: 127 * fem,
                                height: 127 * fem,
                              ),
                            ),
                            Container(
                              // DEE (263:986)
                              margin: EdgeInsets.fromLTRB(
                                  13 * fem, 4 * fem, 10 * fem, 4 * fem),
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
                    ),
                    Container(
                      // frame2Ry8 (272:1169)
                      margin: EdgeInsets.fromLTRB(
                          86 * fem, 20 * fem, 85 * fem, 0 * fem),
                      padding: EdgeInsets.fromLTRB(
                          63 * fem, 17.5 * fem, 64 * fem, 15.5 * fem),
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
                            // vectorroY (272:1170)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 7 * fem, 1 * fem),
                            width: 19 * fem,
                            height: 20 * fem,
                            child: Image.asset(
                              'assets/mobile-app/images/vector-jNN.png',
                              width: 19 * fem,
                              height: 20 * fem,
                            ),
                          ),
                          Text(
                            // confirmazS (272:1171)
                            'Confirm',
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
      ),
    );
  }
}
