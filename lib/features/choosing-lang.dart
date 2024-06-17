import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:kolliity/features/landing.dart';

import 'dart:ui';

import 'package:kolliity/features/units.dart';
import 'package:kolliity/shared/extentions/string_extensions.dart';
import 'package:kolliity/shared/util/app_routes.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../shared/app_size.dart';
import '../shared/prefs/pref_manager.dart';
import '../shared/providers/language_provider.dart';
import '../shared/util/ui.dart';


class Choosing_lang extends StatefulWidget {
  @override
  State<Choosing_lang> createState() => _Choosing_langState();
}

class _Choosing_langState extends State<Choosing_lang> {

  @override
  void initState() {
    super.initState();
  }

  Future<void> _checkLoginStatus() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? username = prefs.getString('username');

    if (username != null) {
      // User is logged in, navigate to profile screen
      UI.pushWithRemove(AppRoutes.profileData);

    } else {
      // User is not logged in, navigate to login screen
      UI.pushWithRemove(AppRoutes.profile);
    }
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 430;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Container(
          // choosinglanguage7ga (261:50)
          padding: EdgeInsets.fromLTRB(0 * fem, 8 * fem, 0 * fem, 0 * fem),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xffffffff),
          ),
          child: SingleChildScrollView(

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
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
                          'Choose Language'.tr(),
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
                        onTap: () async{
                          Provider.of<LanguageProvider>(context, listen: false).changeLanguage(Locale("ar"));
                          UI.pushWithRemove(AppRoutes.profile);
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
                                'العربية'.tr(),
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
                          Provider.of<LanguageProvider>(context, listen: false).changeLanguage(Locale("en"));

                          _checkLoginStatus();
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
