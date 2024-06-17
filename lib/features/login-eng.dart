// import 'package:flutter/material.dart';
// import 'package:flutter/gestures.dart';
// import 'package:get/get.dart';
// import 'package:kolliity/features/profiledata-eng.dart';
// import 'package:kolliity/features/units.dart';
// import 'package:kolliity/shared/extentions/string_extensions.dart';
//
//
// import 'dart:ui';
//
// import 'choosing-lang.dart';
// import 'forgetpassword-eng.dart';
// import 'nav-eng.dart';
//
// class Login_Eng extends StatefulWidget {
//   Login_Eng({super.key});
//
//   @override
//   State<Login_Eng> createState() => _Login_EngState();
// }
//
// class _Login_EngState extends State<Login_Eng> {
//   final _formKey = GlobalKey<FormState>();
//   final _textEditingController = TextEditingController();
//   final _passwordEditingController = TextEditingController();
//   final _codeEditingController = TextEditingController();
//   bool _isPasswordVisible = false;
//   @override
//   void dispose() {
//     _textEditingController.dispose();
//     _codeEditingController.dispose();
//     _passwordEditingController.dispose();
//     super.dispose();
//   }
//
//   @override
//   void initState() {
//     _isPasswordVisible = false;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     double baseWidth = 430;
//     double fem = MediaQuery.of(context).size.width / baseWidth;
//     double ffem = fem * 0.97;
//     return Scaffold(
//       // drawer: NavBar_Eng(),
//       // appBar: AppBar(
//       //   toolbarHeight: 40,
//       //   actions: [
//       //     Padding(
//       //       padding: const EdgeInsets.only(right: 130.0),
//       //       child: IconButton(
//       //         onPressed: () {},
//       //         icon: Icon(Icons.home),
//       //         iconSize: 30,
//       //       ),
//       //     ),
//       //     IconButton(
//       //       onPressed: () {},
//       //       icon: Icon(Icons.search),
//       //       iconSize: 30,
//       //     )
//       //   ],
//       // ),
//       body: Padding(
//         padding: const EdgeInsets.only(top: 25),
//         child: Container(
//           width: double.infinity,
//           child: Container(
//             // loginsZ8 (67:107)
//             padding: EdgeInsets.fromLTRB(0 * fem, 8 * fem, 0 * fem, 0 * fem),
//             width: double.infinity,
//             decoration: BoxDecoration(
//               color: Color(0xffffffff),
//             ),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 // Container(
//                 //   // line1Tfk (67:112)
//                 //   width: double.infinity,
//                 //   height: 1 * fem,
//                 //   decoration: BoxDecoration(
//                 //     color: Color(0xffffffff),
//                 //     boxShadow: [
//                 //       BoxShadow(
//                 //         color: Color(0xff000000),
//                 //         offset: Offset(0 * fem, 3 * fem),
//                 //         blurRadius: 2.5 * fem,
//                 //       ),
//                 //     ],
//                 //   ),
//                 // ),
//                 Container(
//                   // autogroupzbolz9t (3AuxzaXTSmNu4TJmdTZboL)
//                   padding:
//                       EdgeInsets.fromLTRB(22 * fem, 10 * fem, 22 * fem, 0 * fem),
//                   width: double.infinity,
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       Container(
//                         // autogroupwyneJgN (3AuxPbXkG2zBs4HjtvwyNe)
//                         margin: EdgeInsets.fromLTRB(
//                             85 * fem, 0 * fem, 97 * fem, 11 * fem),
//                         width: double.infinity,
//                         height: 113 * fem,
//                         child: Row(
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           children: [
//                             Container(
//                               // p8v (67:134)
//                               width: 113 * fem,
//                               height: 113 * fem,
//                               child: ClipRRect(
//                                 borderRadius: BorderRadius.circular(97.5 * fem),
//                                 child: Image.asset(
//                                   'assets/mobile-app/images/-7JE.png',
//                                   fit: BoxFit.cover,
//                                 ),
//                               ),
//                             ),
//                             Container(
//                               // autogrouphwtnwzE (3AuxUviCRQMsqUncykhWtN)
//                               margin: EdgeInsets.fromLTRB(
//                                   0 * fem, 24 * fem, 0 * fem, 29 * fem),
//                               width: 91 * fem,
//                               height: double.infinity,
//                               child: Stack(
//                                 children: [
//                                   Positioned(
//                                     // fcaiUzA (67:135)
//                                     left: 0 * fem,
//                                     top: 0 * fem,
//                                     child: Align(
//                                       child: SizedBox(
//                                         width: 91 * fem,
//                                         height: 53 * fem,
//                                         child: Text(
//                                           'FCAI',
//                                           style: SafeGoogleFont(
//                                             'Krub',
//                                             fontSize: 43 * ffem,
//                                             fontWeight: FontWeight.w700,
//                                             height: 1.2272726547 * ffem / fem,
//                                             letterSpacing: -0.86 * fem,
//                                             color: Color(0xff000000),
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                   Positioned(
//                                     // platformmiN (67:136)
//                                     left: 36 * fem,
//                                     top: 44 * fem,
//                                     child: Align(
//                                       child: SizedBox(
//                                         width: 51 * fem,
//                                         height: 16 * fem,
//                                         child: Text(
//                                           'platform',
//                                           style: SafeGoogleFont(
//                                             'Krub',
//                                             fontSize: 13 * ffem,
//                                             fontWeight: FontWeight.w500,
//                                             height: 1.2272726206 * ffem / fem,
//                                             letterSpacing: -0.26 * fem,
//                                             color: Color(0xff6b6b6b),
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       Container(
//                         // autogroup1tyiGv2 (3AuxaLiqsEMFQKEKz81TYi)
//                         margin: EdgeInsets.fromLTRB(
//                             0 * fem, 0 * fem, 264 * fem, 10 * fem),
//                         width: double.infinity,
//                         child: Row(
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           children: [
//                             GestureDetector(
//                               onTap: () {
//                                 Navigator.push(context,
//                                     MaterialPageRoute(builder: (context) {
//                                   return Choosing_lang();
//                                 }));
//                               },
//                               child: Container(
//                                 // vectorzr2 (67:111)
//                                 margin: EdgeInsets.fromLTRB(
//                                     0 * fem, 0 * fem, 9 * fem, 3 * fem),
//                                 width: 23 * fem,
//                                 height: 21 * fem,
//                                 child: Image.asset(
//                                   'assets/mobile-app/images/vector-8nJ.png',
//                                   width: 23 * fem,
//                                   height: 21 * fem,
//                                 ),
//                               ),
//                             ),
//                             Text(
//                               // login8BY (67:110)
//                               "log in",
//                               style: SafeGoogleFont(
//                                 'Inter',
//                                 fontSize: 32 * ffem,
//                                 fontWeight: FontWeight.w600,
//                                 height: 1.2272726297 * ffem / fem,
//                                 letterSpacing: -0.64 * fem,
//                                 color: Color(0xff013267),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       Container(
//                         // autogroupbygpWZq (LoJbiRDGcjvMiUGK2abygP)
//                         margin: EdgeInsets.fromLTRB(
//                             0 * fem, 10 * fem, 0 * fem, 14 * fem),
//                         width: double.infinity,
//                         height: 91 * fem,
//                         child: TextFormField(
//                           controller: _textEditingController,
//                           keyboardType: TextInputType.text,
//                           validator: (String? value) {
//                             if (value?.isEmpty ?? true) {
//                               return "Please Enter User name";
//                             }
//                             return null;
//                           },
//                           decoration: const InputDecoration(
//                             labelText: 'user_name',
//                             border: OutlineInputBorder(),
//                             prefixIcon: Icon(
//                               Icons.supervised_user_circle,
//                             ),
//                           ),
//                           onFieldSubmitted: (String value) {
//                             print(value);
//                           },
//                           onChanged: (String value) {
//                             print(value);
//                           },
//                         ),
//                       ),
//                       Container(
//                         // autogroupd1d5tVq (LoJbz5Rqy1ahG5yeasd1d5)
//                         margin: EdgeInsets.fromLTRB(
//                             0 * fem, 0 * fem, 0 * fem, 7 * fem),
//                         width: double.infinity,
//                         height: 88 * fem,
//                         child: TextFormField(
//                           controller: _passwordEditingController,
//                           obscureText: !_isPasswordVisible,
//                           keyboardType: TextInputType.text,
//                           validator: (String? value) {
//                             if (value?.isEmpty ?? true) {
//                               return "Please Enter Password";
//                             }
//                             return null;
//                           },
//                           decoration: InputDecoration(
//                             labelText: 'Password',
//                             border: const OutlineInputBorder(),
//                             prefixIcon: const Icon(
//                               Icons.lock,
//                             ),
//                             suffixIcon: IconButton(
//                               icon: Icon(_isPasswordVisible
//                                   ? Icons.visibility
//                                   : Icons.visibility_off),
//                               onPressed: () {
//                                 setState(() {
//                                   _isPasswordVisible = !_isPasswordVisible;
//                                 });
//                               },
//                             ),
//                           ),
//                           onFieldSubmitted: (String value) {
//                             print(value);
//                           },
//                           onChanged: (String value) {
//                             print(value);
//                           },
//                         ),
//                       ),
//                       GestureDetector(
//                         onTap: () {
//                           Navigator.push(context,
//                               MaterialPageRoute(builder: (context) {
//                             return Forgetpassword_Eng();
//                           }));
//                         },
//                         child: Container(
//                           // iforgotmypasswordRVQ (67:133)
//                           margin: EdgeInsets.fromLTRB(
//                               0 * fem, 0 * fem, 17 * fem, 27 * fem),
//                           child: Text(
//                             'I forgot my password?',
//                             style: SafeGoogleFont(
//                               'Inter',
//                               fontSize: 15 * ffem,
//                               fontWeight: FontWeight.w500,
//                               height: 1.2272726695 * ffem / fem,
//                               letterSpacing: -0.3 * fem,
//                               color: Color(0xffb80000),
//                             ),
//                           ),
//                         ),
//                       ),
//                       GestureDetector(
//                         onTap: () {
//                           Navigator.push(context,
//                               MaterialPageRoute(builder: (context) {
//                             return Profiledata_Eng();
//                           }));
//                         },
//                         child: Container(
//                           // frame2X2e (67:129)
//                           margin: EdgeInsets.fromLTRB(
//                               28 * fem, 0 * fem, 29 * fem, 0 * fem),
//                           padding: EdgeInsets.fromLTRB(
//                               114 * fem, 29 * fem, 118 * fem, 27 * fem),
//                           width: double.infinity,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(19 * fem),
//                             gradient: LinearGradient(
//                               begin: Alignment(0.1, -0.582),
//                               end: Alignment(0.598, 2.716),
//                               colors: <Color>[
//                                 Color(0xff0e8388),
//                                 Color(0xffffffff)
//                               ],
//                               stops: <double>[0, 1],
//                             ),
//                             boxShadow: [
//                               BoxShadow(
//                                 color: Color(0x3f000000),
//                                 offset: Offset(0 * fem, 4 * fem),
//                                 blurRadius: 1.5 * fem,
//                               ),
//                             ],
//                           ),
//                           child: Row(
//                             crossAxisAlignment: CrossAxisAlignment.center,
//                             children: [
//                               Container(
//                                 // vectorws4 (67:131)
//                                 margin: EdgeInsets.fromLTRB(
//                                     0 * fem, 0 * fem, 8 * fem, 1 * fem),
//                                 width: 24 * fem,
//                                 height: 24 * fem,
//                                 child: Image.asset(
//                                   'assets/mobile-app/images/vector-jH8.png',
//                                   width: 24 * fem,
//                                   height: 24 * fem,
//                                 ),
//                               ),
//                               Text(
//                                 // loginGuL (67:132)
//                                 'Log in',
//                                 style: SafeGoogleFont(
//                                   'Inter',
//                                   fontSize: 23 * ffem,
//                                   fontWeight: FontWeight.w700,
//                                   height: 1.2272726142 * ffem / fem,
//                                   letterSpacing: -0.46 * fem,
//                                   color: Color(0xffffffff),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
