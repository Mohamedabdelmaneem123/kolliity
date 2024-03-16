import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/widgets.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:kolliity/features/profiledata-eng.dart';
import 'package:kolliity/features/profiledata.dart';
import 'package:kolliity/features/setting.dart';
import 'package:kolliity/features/units.dart';

import 'nav.dart';

class EditLanguage extends StatelessWidget {
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
          // choosinglanguagekcE (263:972)
          padding: EdgeInsets.fromLTRB(0 * fem, 8 * fem, 0 * fem, 0 * fem),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xffffffff),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // line1kPG (263:976)
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
                  // autogrouphw1psin (3Av7Y5npcfJwkVnCbPhw1p)
                  padding: EdgeInsets.fromLTRB(
                      22 * fem, 14 * fem, 12 * fem, 0 * fem),
                  width: double.infinity,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // autogroupc7yaQCv (3Av7F1SwSbC17rzpLrC7Ya)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 40 * fem),
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return Setting();
                                  }));
                                },
                                child: Container(
                                  // vectorKqg (263:995)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 112 * fem, 31 * fem),
                                  width: 23 * fem,
                                  height: 21 * fem,
                                  child: Image.asset(
                                    'assets/mobile-app/images/vector-MnN.png',
                                    width: 23 * fem,
                                    height: 21 * fem,
                                  ),
                                ),
                              ),
                              Container(
                                // r4v (263:975)
                                margin: EdgeInsets.fromLTRB(
                                    5 * fem, 31 * fem, 62 * fem, 0 * fem),
                                child: Text(
                                  'اختار اللغة',
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
                              Container(
                                // ellipse1jeW (263:996)
                                margin: EdgeInsets.fromLTRB(
                                    30 * fem, 0 * fem, 0 * fem, 4 * fem),
                                width: 62 * fem,
                                height: 62 * fem,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(31 * fem),
                                  color: Color(0xffd9d9d9),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                      'assets/mobile-app/images/ellipse-1-bg-74z.png',
                                    ),
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
                                'العربية',
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
                                      13 * fem, 10 * fem, 10 * fem, 4 * fem),
                                  child: Text(
                                    'الإنجليزية',
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
                          // frame2Ko4 (263:977)
                          margin: EdgeInsets.fromLTRB(
                              73 * fem, 30 * fem, 82 * fem, 0 * fem),
                          padding: EdgeInsets.fromLTRB(
                              84 * fem, 17.5 * fem, 78 * fem, 15.5 * fem),
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
                                // vectork7g (263:978)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 7 * fem, 1 * fem),
                                width: 19 * fem,
                                height: 20 * fem,
                                child: Image.asset(
                                  'assets/mobile-app/images/vector-7M8.png',
                                  width: 19 * fem,
                                  height: 20 * fem,
                                ),
                              ),
                              Text(
                                // rgW (263:979)
                                'تأكيد',
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
                      ])),
            ],
          ),
        ),
      ),
    );
  }
}
