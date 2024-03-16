import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:kolliity/features/units.dart';

import 'login-eng.dart';
import 'nav-eng.dart';


class Forgetpassword_Eng extends StatelessWidget {
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
          // forgetpasswordZmp (67:391)
          padding: EdgeInsets.fromLTRB(0 * fem, 8 * fem, 0 * fem, 0 * fem),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xffffffff),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // line1xSa (67:396)
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
                // autogroupeebqGy4 (3AxqvsCfjdPo8ARZ2yeebQ)
                padding:
                    EdgeInsets.fromLTRB(22 * fem, 10 * fem, 22 * fem, 0 * fem),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // autogroup962anwQ (3AxqDdtNGUrtRoWZ4e962A)
                      margin: EdgeInsets.fromLTRB(
                          85 * fem, 0 * fem, 97 * fem, 11 * fem),
                      width: double.infinity,
                      height: 113 * fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // Juk (67:401)
                            width: 113 * fem,
                            height: 113 * fem,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(97.5 * fem),
                              child: Image.asset(
                                'assets/mobile-app/images/-KUr.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            // autogroup8e8ndh8 (3AxqKJPbZghJmsnjqe8E8N)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 24 * fem, 0 * fem, 29 * fem),
                            width: 91 * fem,
                            height: double.infinity,
                            child: Stack(
                              children: [
                                Positioned(
                                  // fcaiASA (67:402)
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
                                  // platformSPg (67:403)
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
                      // autogroupfmpcXAE (3AxqR3j29M9QiN1kYBfmPC)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 103 * fem, 53 * fem),
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return Login_Eng();
                              }));
                            },
                            child: Container(
                              // vectorEqL (67:395)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 9 * fem, 3 * fem),
                              width: 23 * fem,
                              height: 21 * fem,
                              child: Image.asset(
                                'assets/mobile-app/images/vector-TYS.png',
                                width: 23 * fem,
                                height: 21 * fem,
                              ),
                            ),
                          ),
                          Text(
                            // forgetpasswordmKU (67:394)
                            'Forget Password',
                            style: SafeGoogleFont(
                              'Inter',
                              fontSize: 32 * ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.2272726297 * ffem / fem,
                              letterSpacing: -0.64 * fem,
                              color: Color(0xff013267),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // mailaddresshereHoc (67:404)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 23 * fem, 18 * fem),
                      child: Text(
                        'Mail Address Here',
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
                    Container(
                      // entertheemailaddressassociated (67:405)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 50 * fem, 1 * fem),
                      constraints: BoxConstraints(
                        maxWidth: 320 * fem,
                      ),
                      child: Text(
                        'Enter the email address associated \nwith your account',
                        style: SafeGoogleFont(
                          'Inter',
                          fontSize: 20 * ffem,
                          fontWeight: FontWeight.w500,
                          height: 1.3 * ffem / fem,
                          letterSpacing: -0.6 * fem,
                          color: Color(0xff626262),
                        ),
                      ),
                    ),
                    Container(
                      // autogroupbygpWZq (LoJbiRDGcjvMiUGK2abygP)
                      margin: EdgeInsets.fromLTRB(
                          10 * fem, 20 * fem, 26 * fem, 14 * fem),
                      width: double.infinity,
                      height: 91 * fem,
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        validator: (String? value) {
                          if (value?.isEmpty ?? true) {
                            return "Please Enter your Email";
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                          labelText: 'Email',
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(
                            Icons.email,
                          ),
                        ),
                        onFieldSubmitted: (String value) {
                          print(value);
                        },
                        onChanged: (String value) {
                          print(value);
                        },
                      ),
                    ),
                    Container(
                      // frame2BZY (67:397)
                      margin: EdgeInsets.fromLTRB(
                          10.5 * fem, 0 * fem, 40 * fem, 0 * fem),
                      padding: EdgeInsets.fromLTRB(
                          51 * fem, 13 * fem, 48.5 * fem, 12 * fem),
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
                            // vectorcer (67:399)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 8 * fem, 0 * fem),
                            width: 27 * fem,
                            height: 33 * fem,
                            child: Image.asset(
                              'assets/mobile-app/images/vector-MWv.png',
                              width: 27 * fem,
                              height: 33 * fem,
                            ),
                          ),
                          Container(
                            // recoverpasswordYYW (67:400)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 1 * fem, 0 * fem, 0 * fem),
                            child: Text(
                              'Recover Password',
                              style: SafeGoogleFont(
                                'Inter',
                                fontSize: 23 * ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.2272726142 * ffem / fem,
                                letterSpacing: -0.46 * fem,
                                color: Color(0xffffffff),
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
    );
  }
}
