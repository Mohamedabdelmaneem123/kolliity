import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/widgets.dart';

import 'dart:ui';

import 'package:kolliity/features/units.dart';

import 'log-in.dart';


class Forgetpassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 430;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Container(
          // forgetpasswordcvz (262:626)
          padding: EdgeInsets.fromLTRB(0 * fem, 8 * fem, 0 * fem, 0 * fem),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xffffffff),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // autogroup84sa8uL (3AxrtFn3SnWkgi31wp84SA)
                margin:
                    EdgeInsets.fromLTRB(13 * fem, 0 * fem, 12 * fem, 9 * fem),
                width: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // vectorfPU (262:627)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 2 * fem, 158 * fem, 0 * fem),
                      width: 19 * fem,
                      height: 19 * fem,
                      child: Image.asset(
                        'assets/mobile-app/images/vector-GKY.png',
                        width: 19 * fem,
                        height: 19 * fem,
                      ),
                    ),
                    Container(
                      // vectoryf4 (262:646)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 172 * fem, 0 * fem),
                      width: 30 * fem,
                      height: 28 * fem,
                      child: Image.asset(
                        'assets/mobile-app/images/vector-zRt.png',
                        width: 30 * fem,
                        height: 28 * fem,
                      ),
                    ),
                    Container(
                      // vectoruYi (262:628)
                      width: 26 * fem,
                      height: 22 * fem,
                      child: Image.asset(
                        'assets/mobile-app/images/vector-YdC.png',
                        width: 26 * fem,
                        height: 22 * fem,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // line1T4S (262:631)
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
                // autogroup4mxzNx6 (3Axsh4mNvgGQ8jHNmc4Mxz)
                padding:
                    EdgeInsets.fromLTRB(39 * fem, 10 * fem, 17 * fem, 0 * fem),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // autogroupq9iwuSE (3Axs4VyyMEBifVJeVjq9iW)
                      margin: EdgeInsets.fromLTRB(
                          68 * fem, 0 * fem, 102 * fem, 12 * fem),
                      width: double.infinity,
                      height: 113 * fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // pZC (262:636)
                            width: 113 * fem,
                            height: 113 * fem,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(97.5 * fem),
                              child: Image.asset(
                                'assets/mobile-app/images/-fYJ.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            // autogrouplfgrx9c (3AxsCL6G2N1tSJAKGtLfgr)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 24 * fem, 0 * fem, 29 * fem),
                            width: 91 * fem,
                            height: double.infinity,
                            child: Stack(
                              children: [
                                Container(
                                 
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
                                  // platformmMx (262:638)
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
                      // autogroupebqqFY2 (3AxsJaQrJnA5wG4HWhEbqQ)
                      margin: EdgeInsets.fromLTRB(
                          197 * fem, 0 * fem, 0 * fem, 60 * fem),
                      height: 32 * fem,
                      child: Row(
                        children: [
                          Container(
                            child: Align(
                              child: SizedBox(
                                width: 150 * fem,
                                height: 32 * fem,
                                child: Text(
                                  'نسيت كلمة السر',
                                  style: SafeGoogleFont(
                                    'Inter',
                                    fontSize: 26 * ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.2272726206 * ffem / fem,
                                    letterSpacing: -0.52 * fem,
                                    color: Color(0xff013267),
                                  ),
                                ),
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
                            child: Container(
                              child: Align(
                                child: SizedBox(
                                  width: 23 * fem,
                                  height: 19 * fem,
                                  child: Image.asset(
                                    'assets/mobile-app/images/vector-xTQ.png',
                                    width: 23 * fem,
                                    height: 21 * fem,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // zP8 (262:639)
                      margin: EdgeInsets.fromLTRB(
                          8 * fem, 0 * fem, 0 * fem, 18 * fem),
                      child: Text(
                        'البريد الإلكتروني',
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
                      // autogroupkykeHd8 (3AxsPaGXLK53Y2mruLkYke)
                      margin: EdgeInsets.fromLTRB(
                          44 * fem, 0 * fem, 47 * fem, 4 * fem),
                      width: double.infinity,
                      height: 49 * fem,
                      child: Stack(
                        children: [
                          Positioned(
                            // RDY (262:640)
                            left: 23 * fem,
                            top: 0 * fem,
                            child: Align(
                              child: SizedBox(
                                width: 283 * fem,
                                height: 26 * fem,
                                child: Text(
                                  'ادخل عنوان البريد الإلكتروني المرتبط',
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
                            ),
                          ),
                          Positioned(
                            // Uhc (262:652)
                            left: 190 * fem,
                            top: 23 * fem,
                            child: Align(
                              child: SizedBox(
                                width: 81 * fem,
                                height: 26 * fem,
                                child: Text(
                                  'مع حسابك',
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
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // autogroupbygpWZq (LoJbiRDGcjvMiUGK2abygP)
                      margin: EdgeInsets.fromLTRB(
                          10 * fem, 10 * fem, 26 * fem, 14 * fem),
                      width: double.infinity,
                      height: 91 * fem,
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        validator: (String? value) {
                          if (value?.isEmpty ?? true) {
                            return "ادخل البريد الالكتروني";
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                          labelText: 'البريد الالكتروني',
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
                      // frame2Xhp (262:632)
                      margin: EdgeInsets.fromLTRB(
                          10 * fem, 0 * fem, 40 * fem, 0 * fem),
                      padding: EdgeInsets.fromLTRB(
                          70 * fem, 13 * fem, 3 * fem, 12 * fem),
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
                            // vector7vv (262:634)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 8 * fem, 0 * fem),
                            width: 27 * fem,
                            height: 33 * fem,
                            child: Image.asset(
                              'assets/mobile-app/images/vector-kGe.png',
                              width: 27 * fem,
                              height: 33 * fem,
                            ),
                          ),
                          Container(
                            // ifp (262:635)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 1 * fem, 0 * fem, 0 * fem),
                            child: Text(
                              'استرجاع كلمة السر',
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
