import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:kolliity/features/profiledata.dart';
import 'package:kolliity/features/theme-service.dart';
import 'package:kolliity/features/units.dart';

import 'dart:ui';

import 'choosing-lang.dart';
import 'forgetpassword.dart';
import 'nav.dart';


class login extends StatefulWidget {
  @override
  State<login> createState() => _LoginState();
}

class _LoginState extends State<login> {
  final _formKey = GlobalKey<FormState>();
  final _textEditingController = TextEditingController();
  final _passwordEditingController = TextEditingController();
  final _codeEditingController = TextEditingController();
  bool _isPasswordVisible = false;
  @override
  void dispose() {
    _textEditingController.dispose();
    _codeEditingController.dispose();
    _passwordEditingController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    _isPasswordVisible = false;
  }

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
              onPressed: () {
                ThemeService().chandeTheme();
              },
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
          // loginzGE (262:60)
          padding: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 0 * fem),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xffffffff),
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
                // autogroupqe2z7Nn (3Auzu7Bd1hmmQJhDgVqE2z)
                padding:
                    EdgeInsets.fromLTRB(46 * fem, 10 * fem, 28 * fem, 0 * fem),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // autogroupqcnz2Vk (3AuzGsiza69pJiVo6oqcNz)
                      margin: EdgeInsets.fromLTRB(
                          61 * fem, 0 * fem, 91 * fem, 13 * fem),
                      width: double.infinity,
                      height: 113 * fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // M2E (262:87)
                            width: 113 * fem,
                            height: 113 * fem,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(97.5 * fem),
                              child: Image.asset(
                                'assets/mobile-app/images/-g4N.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            // autogrouppkvcGQ6 (3AuzNYEDsHzEenmysopkVC)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 24 * fem, 0 * fem, 29 * fem),
                            width: 91 * fem,
                            height: double.infinity,
                            child: Stack(
                              children: [
                                Positioned(
                                  // fcaizqt (262:88)
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
                                  // platformUFG (262:89)
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
                      // autogroupdug6Mpr (3AuzVNNB8vSDJeHjaRdUg6)
                      margin: EdgeInsets.fromLTRB(
                          187 * fem, 0 * fem, 0 * fem, 16 * fem),
                      child: Row(
                        children: [
                          Positioned(
                            child: Align(
                              child: SizedBox(
                                width: 145 * fem,
                                height: 32 * fem,
                                child: Text(
                                  'تسجيل الدخول',
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
                                return Choosing_lang();
                              }));
                            },
                            child: Positioned(
                              // vector9ki (262:64)
                              left: 0 * fem,
                              top: 6 * fem,
                              child: Align(
                                child: SizedBox(
                                  width: 23 * fem,
                                  height: 21 * fem,
                                  child: Image.asset(
                                    'assets/mobile-app/images/vector-odG.png',
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
                      // autogroupbygpWZq (LoJbiRDGcjvMiUGK2abygP)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 14 * fem),
                      width: double.infinity,
                      height: 91 * fem,
                      child: TextFormField(
                        controller: _textEditingController,
                        keyboardType: TextInputType.text,
                        validator: (String? value) {
                          if (value?.isEmpty ?? true) {
                            return "من فضلك ادخل اسم المستخدم";
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                          labelText: 'اسم المستخدم',
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(
                            Icons.supervised_user_circle,
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
                      // autogroupd1d5tVq (LoJbz5Rqy1ahG5yeasd1d5)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 7 * fem),
                      width: double.infinity,
                      height: 88 * fem,
                      child: TextFormField(
                        controller: _passwordEditingController,
                        obscureText: !_isPasswordVisible,
                        keyboardType: TextInputType.text,
                        validator: (String? value) {
                          if (value?.isEmpty ?? true) {
                            return "من فضلك ادخل كلمه السر";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          labelText: 'كلمه السر',
                          border: const OutlineInputBorder(),
                          prefixIcon: const Icon(
                            Icons.lock,
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(_isPasswordVisible
                                ? Icons.visibility
                                : Icons.visibility_off),
                            onPressed: () {
                              setState(() {
                                _isPasswordVisible = !_isPasswordVisible;
                              });
                            },
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
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return Forgetpassword();
                        }));
                      },
                      child: Container(
                        // a9C (262:86)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 12 * fem, 27 * fem),
                        child: Text(
                          'نسيت كلمة السر؟',
                          style: SafeGoogleFont(
                            'Inter',
                            fontSize: 15 * ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.2272726695 * ffem / fem,
                            letterSpacing: -0.3 * fem,
                            color: Color(0xffb80000),
                          ),
                        ),
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
                        // frame2s8J (262:82)
                        margin: EdgeInsets.fromLTRB(
                            4 * fem, 0 * fem, 23 * fem, 0 * fem),
                        padding: EdgeInsets.fromLTRB(
                            74.5 * fem, 29 * fem, 61.5 * fem, 27 * fem),
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
                              // vectorHC2 (262:84)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 8 * fem, 1 * fem),
                              width: 24 * fem,
                              height: 24 * fem,
                              child: Image.asset(
                                'assets/mobile-app/images/vector-W2z.png',
                                width: 24 * fem,
                                height: 24 * fem,
                              ),
                            ),
                            Text(
                              // CZt (262:85)
                              'تسجيل الدخول',
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
