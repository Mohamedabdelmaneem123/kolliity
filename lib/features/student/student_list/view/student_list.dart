// import 'package:flutter/material.dart';
// import 'dart:ui';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:kolliity/shared/util/app_routes.dart';
// import 'package:kolliity/shared/util/ui.dart';
//
// import '../../../../shared/constants/colors.dart';
//
// class StudentsList extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return
//       Container(
//         decoration: BoxDecoration(
//           color: Color(0xFFF4F4F4),
//         ),
//         child: Container(
//           padding: EdgeInsets.fromLTRB(0, 8, 0, 10),
//           child: Stack(
//             clipBehavior: Clip.none,
//             children: [
//               SizedBox(
//                 width: double.infinity,
//                 child: SingleChildScrollView(
//
//                   child: Padding(
//                     padding: const EdgeInsets.only(top: 20),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//
//                         Container(
//                           margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
//                           decoration: BoxDecoration(
//                             color: Color(0xFFFFFFFF),
//                             boxShadow: [
//                               BoxShadow(
//                                 color: Color(0xFF000000),
//                                 offset: Offset(0, 3),
//                                 blurRadius: 2.5,
//                               ),
//                             ],
//                           ),
//                           child: Container(
//                             width: 430,
//                             height: 1,
//                           ),
//                         ),
//                         Container(
//                           margin: EdgeInsets.fromLTRB(13, 0, 15, 86),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Container(
//                                 decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(31),
//                                   color: Color(0xFFD9D9D9),
//                                   image: DecorationImage(
//                                     fit: BoxFit.cover,
//                                     image: AssetImage(
//                                       'assets/images/ellipse_2.jpeg',
//                                     ),
//                                   ),
//                                 ),
//                                 child: Container(
//                                   width: 62,
//                                   height: 62,
//                                 ),
//                               ),
//                               Container(
//                                 margin: EdgeInsets.fromLTRB(0, 8, 0, 20),
//                                 child: Text(
//                                   'Students',
//                                   style: GoogleFonts.getFont(
//                                     'Inter',
//                                     fontWeight: FontWeight.w600,
//                                     fontSize: 28,
//                                     height: 1.2,
//                                     letterSpacing: -0.6,
//                                     color: Color(0xFF000000),
//                                   ),
//                                 ),
//                               ),
//                               Container(
//                                 margin: EdgeInsets.fromLTRB(0, 14, 0, 27),
//                                 child: SizedBox(
//                                   width: 23,
//                                   height: 21,
//                                   child: SvgPicture.asset(
//                                     'assets/vectors/vector_224_x2.svg',
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         Container(
//                           margin: EdgeInsets.fromLTRB(18, 0, 10, 11),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Container(
//                                 margin: EdgeInsets.fromLTRB(0, 11, 9.1, 21),
//                                 child: Text(
//                                   'filter students list by',
//                                   style: GoogleFonts.getFont(
//                                     'Inter',
//                                     fontWeight: FontWeight.w600,
//                                     fontSize: 12,
//                                     height: 1.2,
//                                     letterSpacing: -0.2,
//                                     color: Color(0xFF013267),
//                                   ),
//                                 ),
//                               ),
//                               Expanded(
//                                 child: Container(
//                                   margin: EdgeInsets.fromLTRB(0, 7, 10, 15),
//                                   decoration: BoxDecoration(
//                                     border: Border.all(color: Color(0xFF6A6A6A)),
//                                     borderRadius: BorderRadius.circular(8),
//                                     color: Color(0xFFE7E6E6),
//                                   ),
//                                   child: Container(
//                                     padding: EdgeInsets.fromLTRB(4, 1.5, 4.2, 1.5),
//                                     child: SingleChildScrollView(
//                                       scrollDirection: Axis.horizontal,
//                                       child: Row(
//                                         mainAxisAlignment: MainAxisAlignment.start,
//                                         crossAxisAlignment: CrossAxisAlignment.start,
//                                         children: [
//                                           Container(
//                                             margin: EdgeInsets.fromLTRB(0, 2.5, 4.3, 2.5),
//                                             child: Text(
//                                               'Username',
//                                               style: GoogleFonts.getFont(
//                                                 'Inter',
//                                                 fontWeight: FontWeight.w600,
//                                                 fontSize: 12,
//                                                 height: 1.2,
//                                                 letterSpacing: -0.2,
//                                                 color: Color(0xFF000000),
//                                               ),
//                                             ),
//                                           ),
//                                           Text(
//                                             '+',
//                                             style: GoogleFonts.getFont(
//                                               'Inter',
//                                               fontWeight: FontWeight.w600,
//                                               fontSize: 16,
//                                               height: 1.2,
//                                               letterSpacing: -0.3,
//                                               color: Color(0xFF013267),
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               Expanded(
//                                 child: Container(
//                                   margin: EdgeInsets.fromLTRB(0, 7, 12, 15),
//                                   decoration: BoxDecoration(
//                                     border: Border.all(color: Color(0xFF6A6A6A)),
//                                     borderRadius: BorderRadius.circular(8),
//                                     color: Color(0xFFE7E6E6),
//                                   ),
//                                   child: Container(
//                                     padding: EdgeInsets.fromLTRB(9.5, 1.5, 1.7, 1.5),
//                                     child: Row(
//                                       mainAxisAlignment: MainAxisAlignment.start,
//                                       crossAxisAlignment: CrossAxisAlignment.start,
//                                       children: [
//                                         Container(
//                                           margin: EdgeInsets.fromLTRB(0, 2.5, 4.8, 2.5),
//                                           child: Text(
//                                             'Code',
//                                             style: GoogleFonts.getFont(
//                                               'Inter',
//                                               fontWeight: FontWeight.w600,
//                                               fontSize: 12,
//                                               height: 1.2,
//                                               letterSpacing: -0.2,
//                                               color: Color(0xFF000000),
//                                             ),
//                                           ),
//                                         ),
//                                         Text(
//                                           '+',
//                                           style: GoogleFonts.getFont(
//                                             'Inter',
//                                             fontWeight: FontWeight.w600,
//                                             fontSize: 16,
//                                             height: 1.2,
//                                             letterSpacing: -0.3,
//                                             color: Color(0xFF013267),
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               Expanded(
//                                 child: Container(
//                                   decoration: BoxDecoration(
//                                     borderRadius: BorderRadius.circular(8),
//                                     gradient: LinearGradient(
//                                       begin: Alignment(-0.461, -0.723),
//                                       end: Alignment(0.009, 1.979),
//                                       colors: <Color>[Color(0xFF0E8388), Color(0xFFFFFFFF)],
//                                       stops: <double>[0, 1],
//                                     ),
//                                     boxShadow: [
//                                       BoxShadow(
//                                         color: Color(0x40000000),
//                                         offset: Offset(0, 4),
//                                         blurRadius: 2,
//                                       ),
//                                     ],
//                                   ),
//                                   child: Container(
//                                     padding: EdgeInsets.fromLTRB(5.5, 7, 4, 8),
//                                     child: SingleChildScrollView(
//                                       scrollDirection: Axis.horizontal,
//                                       child: Row(
//                                         mainAxisAlignment: MainAxisAlignment.center,
//                                         crossAxisAlignment: CrossAxisAlignment.center,
//                                         children: [
//                                           MaterialButton(
//                                             onPressed: () {
//                                               UI.pushWithRemove(AppRoutes.addStudent);
//                                             },
//                                             child: Container(
//                                               margin: EdgeInsets.fromLTRB(0, 7.5, 0, 6.5),
//                                               child: Text(
//                                                 'Add Student',
//                                                 style: GoogleFonts.getFont(
//                                                   'Inter',
//                                                   fontWeight: FontWeight.w600,
//                                                   fontSize: 15,
//                                                   height: 1.2,
//                                                   letterSpacing: -0.3,
//                                                   color: Color(0xFFFFFFFF),
//                                                 ),
//                                               ),
//                                             ),
//                                           ),
//
//                                         ],
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         Container(
//                           margin: EdgeInsets.fromLTRB(14, 0, 12, 11),
//                           child: Container(
//                             decoration: BoxDecoration(
//                               color: Color(0xFFFFFFFF),
//                               borderRadius: BorderRadius.circular(32),
//                             ),
//                             child: Container(
//                               padding: EdgeInsets.fromLTRB(17, 22, 0, 24),
//                               child: Column(
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Container(
//                                     margin: EdgeInsets.fromLTRB(0, 0, 0, 21),
//                                     child: Align(
//                                       alignment: Alignment.topLeft,
//                                       child: Row(
//                                         mainAxisAlignment: MainAxisAlignment.start,
//                                         crossAxisAlignment: CrossAxisAlignment.start,
//                                         children: [
//                                           Container(
//                                             margin: EdgeInsets.fromLTRB(0, 0, 16.4, 0),
//                                             padding: EdgeInsets.fromLTRB(3, 99, 0, 15),
//                                             decoration: BoxDecoration(
//                                               boxShadow: [
//                                                 BoxShadow(
//                                                   color: Color(0x78000000),
//                                                   offset: Offset(0, 5),
//                                                   blurRadius: 1.6499999762,
//                                                 ),
//                                               ],
//                                             ),
//                                             child: Stack(
//                                               clipBehavior: Clip.none,
//                                               children: [
//                                                 Positioned(
//                                                   left: -3,
//                                                   bottom: -15,
//                                                   child: Container(
//                                                     decoration: BoxDecoration(
//                                                       color: Color(0xFFFFFFFF),
//                                                     ),
//                                                     child: Container(
//                                                       width: 100,
//                                                       height: 127,
//                                                       child: Container(
//                                                         decoration: BoxDecoration(
//                                                           color: Color(0xFFFFFFFF),
//                                                           image: DecorationImage(
//                                                             fit: BoxFit.cover,
//                                                             image: AssetImage(
//                                                               'assets/images/rectangle_392.jpeg',
//                                                             ),
//                                                           ),
//                                                           boxShadow: [
//                                                             BoxShadow(
//                                                               color: Color(0x40000000),
//                                                               offset: Offset(0, 4),
//                                                               blurRadius: 2,
//                                                             ),
//                                                           ],
//                                                         ),
//                                                         child: Container(
//                                                           width: 100,
//                                                           height: 95,
//                                                         ),
//                                                       ),
//                                                     ),
//                                                   ),
//                                                 ),
//                                                 Text(
//                                                   'موسي عبدالوهاب ابراهيم سيد',
//                                                   style: GoogleFonts.getFont(
//                                                     'Inter',
//                                                     fontWeight: FontWeight.w500,
//                                                     fontSize: 8,
//                                                     height: 1.6,
//                                                     letterSpacing: 0.1,
//                                                     color:AppColors.kWhiteColor,
//                                                   ),
//                                                 ),
//                                                 Positioned(
//                                                   left: 1,
//                                                   bottom: -11,
//                                                   child: SizedBox(
//                                                     height: 13,
//                                                     child: Text(
//                                                       '200250, CS, Grade 3(G)',
//                                                       style: GoogleFonts.getFont(
//                                                         'Inter',
//                                                         fontWeight: FontWeight.w500,
//                                                         fontSize: 8,
//                                                         height: 1.6,
//                                                         letterSpacing: 0.1,
//                                                         color:AppColors.kWhiteColor,
//
//                                                       ),
//                                                     ),
//                                                   ),
//                                                 ),
//                                               ],
//                                             ),
//                                           ),
//                                           Container(
//                                             padding: EdgeInsets.fromLTRB(3, 99, 0, 15),
//                                             decoration: BoxDecoration(
//                                               boxShadow: [
//                                                 BoxShadow(
//                                                   color: Color(0x78000000),
//                                                   offset: Offset(0, 5),
//                                                   blurRadius: 1.6499999762,
//                                                 ),
//                                               ],
//                                             ),
//                                             child: Stack(
//                                               clipBehavior: Clip.none,
//                                               children: [
//                                                 Positioned(
//                                                   left: -3,
//                                                   bottom: -15,
//                                                   child: Container(
//                                                     decoration: BoxDecoration(
//                                                       color: Color(0xFFFFFFFF),
//                                                     ),
//                                                     child: Container(
//                                                       width: 100,
//                                                       height: 127,
//                                                       child: Container(
//                                                         decoration: BoxDecoration(
//                                                           color: Color(0xFFFFFFFF),
//                                                           image: DecorationImage(
//                                                             fit: BoxFit.cover,
//                                                             image: AssetImage(
//                                                               'assets/images/rectangle_392.jpeg',
//                                                             ),
//                                                           ),
//                                                           boxShadow: [
//                                                             BoxShadow(
//                                                               color: Color(0x40000000),
//                                                               offset: Offset(0, 4),
//                                                               blurRadius: 2,
//                                                             ),
//                                                           ],
//                                                         ),
//                                                         child: Container(
//                                                           width: 100,
//                                                           height: 95,
//                                                         ),
//                                                       ),
//                                                     ),
//                                                   ),
//                                                 ),
//                                                 Text(
//                                                   'موسي عبدالوهاب ابراهيم سيد',
//                                                   style: GoogleFonts.getFont(
//                                                     'Inter',
//                                                     fontWeight: FontWeight.w500,
//                                                     fontSize: 8,
//                                                     height: 1.6,
//                                                     letterSpacing: 0.1,
//                                                     color: Color(0xFF000000),
//                                                   ),
//                                                 ),
//                                                 Positioned(
//                                                   left: 1,
//                                                   bottom: -11,
//                                                   child: SizedBox(
//                                                     height: 13,
//                                                     child: Text(
//                                                       '200250, CS, Grade 3(G)',
//                                                       style: GoogleFonts.getFont(
//                                                         'Inter',
//                                                         fontWeight: FontWeight.w500,
//                                                         fontSize: 8,
//                                                         height: 1.6,
//                                                         letterSpacing: 0.1,
//                                                         color: Color(0xFF000000),
//                                                       ),
//                                                     ),
//                                                   ),
//                                                 ),
//                                               ],
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                   ),
//                                   Container(
//                                     margin: EdgeInsets.fromLTRB(0, 0, 0, 21),
//                                     child: Align(
//                                       alignment: Alignment.topLeft,
//                                       child: Row(
//                                         mainAxisAlignment: MainAxisAlignment.start,
//                                         crossAxisAlignment: CrossAxisAlignment.start,
//                                         children: [
//                                           Container(
//                                             margin: EdgeInsets.fromLTRB(0, 0, 16.4, 0),
//                                             padding: EdgeInsets.fromLTRB(3, 99, 0, 15),
//                                             decoration: BoxDecoration(
//                                               boxShadow: [
//                                                 BoxShadow(
//                                                   color: Color(0x78000000),
//                                                   offset: Offset(0, 5),
//                                                   blurRadius: 1.6499999762,
//                                                 ),
//                                               ],
//                                             ),
//                                             child: Stack(
//                                               clipBehavior: Clip.none,
//                                               children: [
//                                                 Positioned(
//                                                   left: -3,
//                                                   bottom: -15,
//                                                   child: Container(
//                                                     decoration: BoxDecoration(
//                                                       color: Color(0xFFFFFFFF),
//                                                     ),
//                                                     child: Container(
//                                                       width: 100,
//                                                       height: 127,
//                                                       child: Container(
//                                                         decoration: BoxDecoration(
//                                                           color: Color(0xFFFFFFFF),
//                                                           image: DecorationImage(
//                                                             fit: BoxFit.cover,
//                                                             image: AssetImage(
//                                                               'assets/images/rectangle_392.jpeg',
//                                                             ),
//                                                           ),
//                                                           boxShadow: [
//                                                             BoxShadow(
//                                                               color: Color(0x40000000),
//                                                               offset: Offset(0, 4),
//                                                               blurRadius: 2,
//                                                             ),
//                                                           ],
//                                                         ),
//                                                         child: Container(
//                                                           width: 100,
//                                                           height: 95,
//                                                         ),
//                                                       ),
//                                                     ),
//                                                   ),
//                                                 ),
//                                                 Text(
//                                                   'موسي عبدالوهاب ابراهيم سيد',
//                                                   style: GoogleFonts.getFont(
//                                                     'Inter',
//                                                     fontWeight: FontWeight.w500,
//                                                     fontSize: 8,
//                                                     height: 1.6,
//                                                     letterSpacing: 0.1,
//                                                     color: Color(0xFF000000),
//                                                   ),
//                                                 ),
//                                                 Positioned(
//                                                   left: 1,
//                                                   bottom: -11,
//                                                   child: SizedBox(
//                                                     height: 13,
//                                                     child: Text(
//                                                       '200250, CS, Grade 3(G)',
//                                                       style: GoogleFonts.getFont(
//                                                         'Inter',
//                                                         fontWeight: FontWeight.w500,
//                                                         fontSize: 8,
//                                                         height: 1.6,
//                                                         letterSpacing: 0.1,
//                                                         color: Color(0xFF000000),
//                                                       ),
//                                                     ),
//                                                   ),
//                                                 ),
//                                               ],
//                                             ),
//                                           ),
//                                           Container(
//                                             padding: EdgeInsets.fromLTRB(3, 99, 0, 15),
//                                             decoration: BoxDecoration(
//                                               boxShadow: [
//                                                 BoxShadow(
//                                                   color: Color(0x78000000),
//                                                   offset: Offset(0, 5),
//                                                   blurRadius: 1.6499999762,
//                                                 ),
//                                               ],
//                                             ),
//                                             child: Stack(
//                                               clipBehavior: Clip.none,
//                                               children: [
//                                                 Positioned(
//                                                   left: -3,
//                                                   bottom: -15,
//                                                   child: Container(
//                                                     decoration: BoxDecoration(
//                                                       color: Color(0xFFFFFFFF),
//                                                     ),
//                                                     child: Container(
//                                                       width: 100,
//                                                       height: 127,
//                                                       child: Container(
//                                                         decoration: BoxDecoration(
//                                                           color: Color(0xFFFFFFFF),
//                                                           image: DecorationImage(
//                                                             fit: BoxFit.cover,
//                                                             image: AssetImage(
//                                                               'assets/images/rectangle_392.jpeg',
//                                                             ),
//                                                           ),
//                                                           boxShadow: [
//                                                             BoxShadow(
//                                                               color: Color(0x40000000),
//                                                               offset: Offset(0, 4),
//                                                               blurRadius: 2,
//                                                             ),
//                                                           ],
//                                                         ),
//                                                         child: Container(
//                                                           width: 100,
//                                                           height: 95,
//                                                         ),
//                                                       ),
//                                                     ),
//                                                   ),
//                                                 ),
//                                                 Text(
//                                                   'موسي عبدالوهاب ابراهيم سيد',
//                                                   style: GoogleFonts.getFont(
//                                                     'Inter',
//                                                     fontWeight: FontWeight.w500,
//                                                     fontSize: 8,
//                                                     height: 1.6,
//                                                     letterSpacing: 0.1,
//                                                     color: Color(0xFF000000),
//                                                   ),
//                                                 ),
//                                                 Positioned(
//                                                   left: 1,
//                                                   bottom: -11,
//                                                   child: SizedBox(
//                                                     height: 13,
//                                                     child: Text(
//                                                       '200250, CS, Grade 3(G)',
//                                                       style: GoogleFonts.getFont(
//                                                         'Inter',
//                                                         fontWeight: FontWeight.w500,
//                                                         fontSize: 8,
//                                                         height: 1.6,
//                                                         letterSpacing: 0.1,
//                                                         color: Color(0xFF000000),
//                                                       ),
//                                                     ),
//                                                   ),
//                                                 ),
//                                               ],
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                   ),
//                                   Container(
//                                     margin: EdgeInsets.fromLTRB(0, 0, 0, 21),
//                                     child: Align(
//                                       alignment: Alignment.topLeft,
//                                       child: Row(
//                                         mainAxisAlignment: MainAxisAlignment.start,
//                                         crossAxisAlignment: CrossAxisAlignment.start,
//                                         children: [
//                                           Container(
//                                             margin: EdgeInsets.fromLTRB(0, 0, 16.4, 0),
//                                             padding: EdgeInsets.fromLTRB(3, 99, 0, 15),
//                                             decoration: BoxDecoration(
//                                               boxShadow: [
//                                                 BoxShadow(
//                                                   color: Color(0x78000000),
//                                                   offset: Offset(0, 5),
//                                                   blurRadius: 1.6499999762,
//                                                 ),
//                                               ],
//                                             ),
//                                             child: Stack(
//                                               clipBehavior: Clip.none,
//                                               children: [
//                                                 Positioned(
//                                                   left: -3,
//                                                   bottom: -15,
//                                                   child: Container(
//                                                     decoration: BoxDecoration(
//                                                       color: Color(0xFFFFFFFF),
//                                                     ),
//                                                     child: Container(
//                                                       width: 100,
//                                                       height: 127,
//                                                       child: Container(
//                                                         decoration: BoxDecoration(
//                                                           color: Color(0xFFFFFFFF),
//                                                           image: DecorationImage(
//                                                             fit: BoxFit.cover,
//                                                             image: AssetImage(
//                                                               'assets/images/rectangle_392.jpeg',
//                                                             ),
//                                                           ),
//                                                           boxShadow: [
//                                                             BoxShadow(
//                                                               color: Color(0x40000000),
//                                                               offset: Offset(0, 4),
//                                                               blurRadius: 2,
//                                                             ),
//                                                           ],
//                                                         ),
//                                                         child: Container(
//                                                           width: 100,
//                                                           height: 95,
//                                                         ),
//                                                       ),
//                                                     ),
//                                                   ),
//                                                 ),
//                                                 Text(
//                                                   'موسي عبدالوهاب ابراهيم سيد',
//                                                   style: GoogleFonts.getFont(
//                                                     'Inter',
//                                                     fontWeight: FontWeight.w500,
//                                                     fontSize: 8,
//                                                     height: 1.6,
//                                                     letterSpacing: 0.1,
//                                                     color: Color(0xFF000000),
//                                                   ),
//                                                 ),
//                                                 Positioned(
//                                                   left: 1,
//                                                   bottom: -11,
//                                                   child: SizedBox(
//                                                     height: 13,
//                                                     child: Text(
//                                                       '200250, CS, Grade 3(G)',
//                                                       style: GoogleFonts.getFont(
//                                                         'Inter',
//                                                         fontWeight: FontWeight.w500,
//                                                         fontSize: 8,
//                                                         height: 1.6,
//                                                         letterSpacing: 0.1,
//                                                         color: Color(0xFF000000),
//                                                       ),
//                                                     ),
//                                                   ),
//                                                 ),
//                                               ],
//                                             ),
//                                           ),
//                                           Container(
//                                             padding: EdgeInsets.fromLTRB(3, 99, 0, 15),
//                                             decoration: BoxDecoration(
//                                               boxShadow: [
//                                                 BoxShadow(
//                                                   color: Color(0x78000000),
//                                                   offset: Offset(0, 5),
//                                                   blurRadius: 1.6499999762,
//                                                 ),
//                                               ],
//                                             ),
//                                             child: Stack(
//                                               clipBehavior: Clip.none,
//                                               children: [
//                                                 Positioned(
//                                                   left: -3,
//                                                   bottom: -15,
//                                                   child: Container(
//                                                     decoration: BoxDecoration(
//                                                       color: Color(0xFFFFFFFF),
//                                                     ),
//                                                     child: Container(
//                                                       width: 100,
//                                                       height: 127,
//                                                       child: Container(
//                                                         decoration: BoxDecoration(
//                                                           color: Color(0xFFFFFFFF),
//                                                           image: DecorationImage(
//                                                             fit: BoxFit.cover,
//                                                             image: AssetImage(
//                                                               'assets/images/rectangle_392.jpeg',
//                                                             ),
//                                                           ),
//                                                           boxShadow: [
//                                                             BoxShadow(
//                                                               color: Color(0x40000000),
//                                                               offset: Offset(0, 4),
//                                                               blurRadius: 2,
//                                                             ),
//                                                           ],
//                                                         ),
//                                                         child: Container(
//                                                           width: 100,
//                                                           height: 95,
//                                                         ),
//                                                       ),
//                                                     ),
//                                                   ),
//                                                 ),
//                                                 Text(
//                                                   'موسي عبدالوهاب ابراهيم سيد',
//                                                   style: GoogleFonts.getFont(
//                                                     'Inter',
//                                                     fontWeight: FontWeight.w500,
//                                                     fontSize: 8,
//                                                     height: 1.6,
//                                                     letterSpacing: 0.1,
//                                                     color: Color(0xFF000000),
//                                                   ),
//                                                 ),
//                                                 Positioned(
//                                                   left: 1,
//                                                   bottom: -11,
//                                                   child: SizedBox(
//                                                     height: 13,
//                                                     child: Text(
//                                                       '200250, CS, Grade 3(G)',
//                                                       style: GoogleFonts.getFont(
//                                                         'Inter',
//                                                         fontWeight: FontWeight.w500,
//                                                         fontSize: 8,
//                                                         height: 1.6,
//                                                         letterSpacing: 0.1,
//                                                         color: Color(0xFF000000),
//                                                       ),
//                                                     ),
//                                                   ),
//                                                 ),
//                                               ],
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                   ),
//                                   Align(
//                                     alignment: Alignment.topLeft,
//                                     child: Row(
//                                       mainAxisAlignment: MainAxisAlignment.start,
//                                       crossAxisAlignment: CrossAxisAlignment.start,
//                                       children: [
//                                         Container(
//                                           margin: EdgeInsets.fromLTRB(0, 0, 16.4, 0),
//                                           padding: EdgeInsets.fromLTRB(3, 99, 0, 15),
//                                           decoration: BoxDecoration(
//                                             boxShadow: [
//                                               BoxShadow(
//                                                 color: Color(0x78000000),
//                                                 offset: Offset(0, 5),
//                                                 blurRadius: 1.6499999762,
//                                               ),
//                                             ],
//                                           ),
//                                           child: Stack(
//                                             clipBehavior: Clip.none,
//                                             children: [
//                                               Positioned(
//                                                 left: -3,
//                                                 bottom: -15,
//                                                 child: Container(
//                                                   decoration: BoxDecoration(
//                                                     color: Color(0xFFFFFFFF),
//                                                   ),
//                                                   child: Container(
//                                                     width: 100,
//                                                     height: 127,
//                                                     child: Container(
//                                                       decoration: BoxDecoration(
//                                                         color: Color(0xFFFFFFFF),
//                                                         image: DecorationImage(
//                                                           fit: BoxFit.cover,
//                                                           image: AssetImage(
//                                                             'assets/images/rectangle_392.jpeg',
//                                                           ),
//                                                         ),
//                                                         boxShadow: [
//                                                           BoxShadow(
//                                                             color: Color(0x40000000),
//                                                             offset: Offset(0, 4),
//                                                             blurRadius: 2,
//                                                           ),
//                                                         ],
//                                                       ),
//                                                       child: Container(
//                                                         width: 100,
//                                                         height: 95,
//                                                       ),
//                                                     ),
//                                                   ),
//                                                 ),
//                                               ),
//                                               Text(
//                                                 'موسي عبدالوهاب ابراهيم سيد',
//                                                 style: GoogleFonts.getFont(
//                                                   'Inter',
//                                                   fontWeight: FontWeight.w500,
//                                                   fontSize: 8,
//                                                   height: 1.6,
//                                                   letterSpacing: 0.1,
//                                                   color: Color(0xFF000000),
//                                                 ),
//                                               ),
//                                               Positioned(
//                                                 left: 1,
//                                                 bottom: -11,
//                                                 child: SizedBox(
//                                                   height: 13,
//                                                   child: Text(
//                                                     '200250, CS, Grade 3(G)',
//                                                     style: GoogleFonts.getFont(
//                                                       'Inter',
//                                                       fontWeight: FontWeight.w500,
//                                                       fontSize: 8,
//                                                       height: 1.6,
//                                                       letterSpacing: 0.1,
//                                                       color: Color(0xFF000000),
//                                                     ),
//                                                   ),
//                                                 ),
//                                               ),
//                                             ],
//                                           ),
//                                         ),
//                                         Container(
//                                           padding: EdgeInsets.fromLTRB(3, 99, 0, 15),
//                                           decoration: BoxDecoration(
//                                             boxShadow: [
//                                               BoxShadow(
//                                                 color: Color(0x78000000),
//                                                 offset: Offset(0, 5),
//                                                 blurRadius: 1.6499999762,
//                                               ),
//                                             ],
//                                           ),
//                                           child: Stack(
//                                             clipBehavior: Clip.none,
//                                             children: [
//                                               Positioned(
//                                                 left: -3,
//                                                 bottom: -15,
//                                                 child: Container(
//                                                   decoration: BoxDecoration(
//                                                     color: Color(0xFFFFFFFF),
//                                                   ),
//                                                   child: Container(
//                                                     width: 100,
//                                                     height: 127,
//                                                     child: Container(
//                                                       decoration: BoxDecoration(
//                                                         color: Color(0xFFFFFFFF),
//                                                         image: DecorationImage(
//                                                           fit: BoxFit.cover,
//                                                           image: AssetImage(
//                                                             'assets/images/rectangle_392.jpeg',
//                                                           ),
//                                                         ),
//                                                         boxShadow: [
//                                                           BoxShadow(
//                                                             color: Color(0x40000000),
//                                                             offset: Offset(0, 4),
//                                                             blurRadius: 2,
//                                                           ),
//                                                         ],
//                                                       ),
//                                                       child: Container(
//                                                         width: 100,
//                                                         height: 95,
//                                                       ),
//                                                     ),
//                                                   ),
//                                                 ),
//                                               ),
//                                               Text(
//                                                 'موسي عبدالوهاب ابراهيم سيد',
//                                                 style: GoogleFonts.getFont(
//                                                   'Inter',
//                                                   fontWeight: FontWeight.w500,
//                                                   fontSize: 8,
//                                                   height: 1.6,
//                                                   letterSpacing: 0.1,
//                                                   color: Color(0xFF000000),
//                                                 ),
//                                               ),
//                                               Positioned(
//                                                 left: 1,
//                                                 bottom: -11,
//                                                 child: SizedBox(
//                                                   height: 13,
//                                                   child: Text(
//                                                     '200250, CS, Grade 3(G)',
//                                                     style: GoogleFonts.getFont(
//                                                       'Inter',
//                                                       fontWeight: FontWeight.w500,
//                                                       fontSize: 8,
//                                                       height: 1.6,
//                                                       letterSpacing: 0.1,
//                                                       color: Color(0xFF000000),
//                                                     ),
//                                                   ),
//                                                 ),
//                                               ),
//                                             ],
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ),
//                         Container(
//                           margin: EdgeInsets.fromLTRB(5, 0, 0, 0),
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(8),
//                             color: Color(0xFFD9D9D9),
//                             boxShadow: [
//                               BoxShadow(
//                                 color: Color(0x40000000),
//                                 offset: Offset(0, 4),
//                                 blurRadius: 2,
//                               ),
//                             ],
//                           ),
//                           child: SizedBox(
//                             width: 173,
//                             child: Container(
//                               padding: EdgeInsets.fromLTRB(0, 4, 4.9, 3),
//                               child: Stack(
//                                 clipBehavior: Clip.none,
//                                 children: [
//                                   Positioned(
//                                     left: 14,
//                                     bottom: 4,
//                                     child: Container(
//                                       decoration: BoxDecoration(
//                                         borderRadius: BorderRadius.circular(4),
//                                         color: Color(0xFF0E8388),
//                                         boxShadow: [
//                                           BoxShadow(
//                                             color: Color(0x40000000),
//                                             offset: Offset(0, 4),
//                                             blurRadius: 2,
//                                           ),
//                                         ],
//                                       ),
//                                       child: Container(
//                                         width: 22,
//                                         height: 23,
//                                       ),
//                                     ),
//                                   ),
//                                   RichText(
//                                     text: TextSpan(
//                                       style: GoogleFonts.getFont(
//                                         'Inter',
//                                         fontWeight: FontWeight.w500,
//                                         fontSize: 16,
//                                         height: 1.6,
//                                         letterSpacing: 0.2,
//                                         color: Color(0xFF000000),
//                                       ),
//                                       children: [
//                                         TextSpan(
//                                           text: '1',
//                                           style: GoogleFonts.getFont(
//                                             'Inter',
//                                             fontWeight: FontWeight.w500,
//                                             fontSize: 16,
//                                             height: 1.3,
//                                             letterSpacing: 0.2,
//                                             color: Color(0xFFFFFFFF),
//                                           ),
//                                         ),
//                                         TextSpan(
//                                           text: '     2     3    Next',
//                                           style: GoogleFonts.getFont(
//                                             'Inter',
//                                             fontWeight: FontWeight.w500,
//                                             fontSize: 16,
//                                             height: 1.6,
//                                             letterSpacing: 0.2,
//                                             color: Color(0xFF000000),
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//               // Positioned(
//               //   right: 2.4,
//               //   top: 284,
//               //   child: Container(
//               //     height: 127,
//               //     decoration: BoxDecoration(
//               //       boxShadow: [
//               //         BoxShadow(
//               //           color: Color(0x78000000),
//               //           offset: Offset(0, 5),
//               //           blurRadius: 1.6499999762,
//               //         ),
//               //       ],
//               //     ),
//               //     child: Container(
//               //       padding: EdgeInsets.fromLTRB(3, 0, 0, 15),
//               //       child: Stack(
//               //         clipBehavior: Clip.none,
//               //         children: [
//               //           Positioned(
//               //             left: -3,
//               //             bottom: -15,
//               //             child: Container(
//               //               decoration: BoxDecoration(
//               //                 color: Color(0xFFFFFFFF),
//               //               ),
//               //               child: Container(
//               //                 width: 100,
//               //                 height: 127,
//               //                 child: Container(
//               //                   decoration: BoxDecoration(
//               //                     color: Color(0xFFFFFFFF),
//               //                     image: DecorationImage(
//               //                       fit: BoxFit.cover,
//               //                       image: AssetImage(
//               //                         'assets/images/rectangle_392.jpeg',
//               //                       ),
//               //                     ),
//               //                     boxShadow: [
//               //                       BoxShadow(
//               //                         color: Color(0x40000000),
//               //                         offset: Offset(0, 4),
//               //                         blurRadius: 2,
//               //                       ),
//               //                     ],
//               //                   ),
//               //                   child: Container(
//               //                     width: 100,
//               //                     height: 95,
//               //                   ),
//               //                 ),
//               //               ),
//               //             ),
//               //           ),
//               //           Text(
//               //             'موسي عبدالوهاب ابراهيم سيد',
//               //             style: GoogleFonts.getFont(
//               //               'Inter',
//               //               fontWeight: FontWeight.w500,
//               //               fontSize: 8,
//               //               height: 1.6,
//               //               letterSpacing: 0.1,
//               //               color: Color(0xFF000000),
//               //             ),
//               //           ),
//               //           Positioned(
//               //             left: 1,
//               //             bottom: -11,
//               //             child: SizedBox(
//               //               height: 13,
//               //               child: Text(
//               //                 '200250, CS, Grade 3(G)',
//               //                 style: GoogleFonts.getFont(
//               //                   'Inter',
//               //                   fontWeight: FontWeight.w500,
//               //                   fontSize: 8,
//               //                   height: 1.6,
//               //                   letterSpacing: 0.1,
//               //                   color: Color(0xFF000000),
//               //                 ),
//               //               ),
//               //             ),
//               //           ),
//               //         ],
//               //       ),
//               //     ),
//               //   ),
//               // ),
//               // Positioned(
//               //   right: 2.4,
//               //   bottom: 373,
//               //   child: Container(
//               //     height: 127,
//               //     decoration: BoxDecoration(
//               //       boxShadow: [
//               //         BoxShadow(
//               //           color: Color(0x78000000),
//               //           offset: Offset(0, 5),
//               //           blurRadius: 1.6499999762,
//               //         ),
//               //       ],
//               //     ),
//               //     child: Container(
//               //       padding: EdgeInsets.fromLTRB(3, 0, 0, 15),
//               //       child: Stack(
//               //         clipBehavior: Clip.none,
//               //         children: [
//               //           Positioned(
//               //             left: -3,
//               //             bottom: -15,
//               //             child: Container(
//               //               decoration: BoxDecoration(
//               //                 color: Color(0xFFFFFFFF),
//               //               ),
//               //               child: Container(
//               //                 width: 100,
//               //                 height: 127,
//               //                 child: Container(
//               //                   decoration: BoxDecoration(
//               //                     color: Color(0xFFFFFFFF),
//               //                     image: DecorationImage(
//               //                       fit: BoxFit.cover,
//               //                       image: AssetImage(
//               //                         'assets/images/rectangle_392.jpeg',
//               //                       ),
//               //                     ),
//               //                     boxShadow: [
//               //                       BoxShadow(
//               //                         color: Color(0x40000000),
//               //                         offset: Offset(0, 4),
//               //                         blurRadius: 2,
//               //                       ),
//               //                     ],
//               //                   ),
//               //                   child: Container(
//               //                     width: 100,
//               //                     height: 95,
//               //                   ),
//               //                 ),
//               //               ),
//               //             ),
//               //           ),
//               //           Text(
//               //             'موسي عبدالوهاب ابراهيم سيد',
//               //             style: GoogleFonts.getFont(
//               //               'Inter',
//               //               fontWeight: FontWeight.w500,
//               //               fontSize: 8,
//               //               height: 1.6,
//               //               letterSpacing: 0.1,
//               //               color: Color(0xFF000000),
//               //             ),
//               //           ),
//               //           Positioned(
//               //             left: 1,
//               //             bottom: -11,
//               //             child: SizedBox(
//               //               height: 13,
//               //               child: Text(
//               //                 '200250, CS, Grade 3(G)',
//               //                 style: GoogleFonts.getFont(
//               //                   'Inter',
//               //                   fontWeight: FontWeight.w500,
//               //                   fontSize: 8,
//               //                   height: 1.6,
//               //                   letterSpacing: 0.1,
//               //                   color: Color(0xFF000000),
//               //                 ),
//               //               ),
//               //             ),
//               //           ),
//               //         ],
//               //       ),
//               //     ),
//               //   ),
//               // ),
//               // Positioned(
//               //   right: 2.4,
//               //   bottom: 225,
//               //   child: Container(
//               //     height: 127,
//               //     decoration: BoxDecoration(
//               //       boxShadow: [
//               //         BoxShadow(
//               //           color: Color(0x78000000),
//               //           offset: Offset(0, 5),
//               //           blurRadius: 1.6499999762,
//               //         ),
//               //       ],
//               //     ),
//               //     child: Container(
//               //       padding: EdgeInsets.fromLTRB(3, 0, 0, 15),
//               //       child: Stack(
//               //         clipBehavior: Clip.none,
//               //         children: [
//               //           Positioned(
//               //             left: -3,
//               //             bottom: -15,
//               //             child: Container(
//               //               decoration: BoxDecoration(
//               //                 color: Color(0xFFFFFFFF),
//               //               ),
//               //               child: Container(
//               //                 width: 100,
//               //                 height: 127,
//               //                 child: Container(
//               //                   decoration: BoxDecoration(
//               //                     color: Color(0xFFFFFFFF),
//               //                     image: DecorationImage(
//               //                       fit: BoxFit.cover,
//               //                       image: AssetImage(
//               //                         'assets/images/rectangle_392.jpeg',
//               //                       ),
//               //                     ),
//               //                     boxShadow: [
//               //                       BoxShadow(
//               //                         color: Color(0x40000000),
//               //                         offset: Offset(0, 4),
//               //                         blurRadius: 2,
//               //                       ),
//               //                     ],
//               //                   ),
//               //                   child: Container(
//               //                     width: 100,
//               //                     height: 95,
//               //                   ),
//               //                 ),
//               //               ),
//               //             ),
//               //           ),
//               //           Text(
//               //             'موسي عبدالوهاب ابراهيم سيد',
//               //             style: GoogleFonts.getFont(
//               //               'Inter',
//               //               fontWeight: FontWeight.w500,
//               //               fontSize: 8,
//               //               height: 1.6,
//               //               letterSpacing: 0.1,
//               //               color: Color(0xFF000000),
//               //             ),
//               //           ),
//               //           Positioned(
//               //             left: 1,
//               //             bottom: -11,
//               //             child: SizedBox(
//               //               height: 13,
//               //               child: Text(
//               //                 '200250, CS, Grade 3(G)',
//               //                 style: GoogleFonts.getFont(
//               //                   'Inter',
//               //                   fontWeight: FontWeight.w500,
//               //                   fontSize: 8,
//               //                   height: 1.6,
//               //                   letterSpacing: 0.1,
//               //                   color: Color(0xFF000000),
//               //                 ),
//               //               ),
//               //             ),
//               //           ),
//               //         ],
//               //       ),
//               //     ),
//               //   ),
//               // ),
//               // Positioned(
//               //   right: 2.4,
//               //   bottom: 77,
//               //   child: Container(
//               //     height: 127,
//               //     decoration: BoxDecoration(
//               //       boxShadow: [
//               //         BoxShadow(
//               //           color: Color(0x78000000),
//               //           offset: Offset(0, 5),
//               //           blurRadius: 1.6499999762,
//               //         ),
//               //       ],
//               //     ),
//               //     child: Container(
//               //       padding: EdgeInsets.fromLTRB(3, 0, 0, 15),
//               //       child: Stack(
//               //         clipBehavior: Clip.none,
//               //         children: [
//               //           Positioned(
//               //             left: -3,
//               //             bottom: -15,
//               //             child: Container(
//               //               decoration: BoxDecoration(
//               //                 color: Color(0xFFFFFFFF),
//               //               ),
//               //               child: Container(
//               //                 width: 100,
//               //                 height: 127,
//               //                 child: Container(
//               //                   decoration: BoxDecoration(
//               //                     color: Color(0xFFFFFFFF),
//               //                     image: DecorationImage(
//               //                       fit: BoxFit.cover,
//               //                       image: AssetImage(
//               //                         'assets/images/rectangle_392.jpeg',
//               //                       ),
//               //                     ),
//               //                     boxShadow: [
//               //                       BoxShadow(
//               //                         color: Color(0x40000000),
//               //                         offset: Offset(0, 4),
//               //                         blurRadius: 2,
//               //                       ),
//               //                     ],
//               //                   ),
//               //                   child: Container(
//               //                     width: 100,
//               //                     height: 95,
//               //                   ),
//               //                 ),
//               //               ),
//               //             ),
//               //           ),
//               //           Text(
//               //             'موسي عبدالوهاب ابراهيم سيد',
//               //             style: GoogleFonts.getFont(
//               //               'Inter',
//               //               fontWeight: FontWeight.w500,
//               //               fontSize: 8,
//               //               height: 1.6,
//               //               letterSpacing: 0.1,
//               //               color: Color(0xFF000000),
//               //             ),
//               //           ),
//               //           Positioned(
//               //             left: 1,
//               //             bottom: -11,
//               //             child: SizedBox(
//               //               height: 13,
//               //               child: Text(
//               //                 '200250, CS, Grade 3(G)',
//               //                 style: GoogleFonts.getFont(
//               //                   'Inter',
//               //                   fontWeight: FontWeight.w500,
//               //                   fontSize: 8,
//               //                   height: 1.6,
//               //                   letterSpacing: 0.1,
//               //                   color: Color(0xFF000000),
//               //                 ),
//               //               ),
//               //             ),
//               //           ),
//               //         ],
//               //       ),
//               //     ),
//               //   ),
//               // ),
//             ],
//           ),
//         ),
//       );
//   }
// }

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kolliity/features/student/addnew_student/add_view.dart';

import '../../../../shared/app_size.dart';
import '../../../../shared/constants/colors.dart';
import '../search_on_student.dart';

class Student {
  final String profilePicture;
  final String username;
  final String fullName;
  final int code;

  Student(this.profilePicture, this.username, this.fullName, this.code);
}

class StudentList extends StatefulWidget {
  @override
  State<StudentList> createState() => _StudentListState();
}

class _StudentListState extends State<StudentList> {
  final List<Student> students = List.generate(
    10,
        (index) => Student(
      'https://via.placeholder.com/150', // Placeholder image URL
      'MahmoudStudent${10 + index}',
      'this is my student${10 + index}\'th full name',
      10 + index,
    ),
  );

  List<Student> filteredStudents = [];
  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    filteredStudents = students;
  }

  void _searchStudent(String query) {
    final int? code = int.tryParse(query);
    if (code != null) {
      setState(() {
        filteredStudents = students.where((student) => student.code == code).toList();
      });
    } else {
      setState(() {
        filteredStudents = students;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        IconButton(onPressed: (){
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(AppSize.r30),
                topRight: Radius.circular(AppSize.r30),
              ),
            ),
            builder: (_) =>  AddNewStudent(),
          );
        },
            icon: Icon(Icons.add))
      ],
        title: const Center(
          child: Text("students",
          style: TextStyle(fontWeight: FontWeight.bold),),
        ),

      ),
      body: SafeArea(
        child: Container(
          color: AppColors.kBackgroundColor,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60),
              child: TextField(
                controller: searchController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Search by code',
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                  suffixIcon: IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () {
                      _searchStudent(searchController.text);
                    },
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredStudents.length,
              itemBuilder: (context, index) {
                return StudentListItem(student: filteredStudents[index]);
              },
            ),
          ),
        ],
      ),
      ),
      ),
    );
  }
}

class StudentListItem extends StatelessWidget {
  final Student student;

  StudentListItem({required this.student});

  @override
  Widget build(BuildContext context) {
    return Padding(

        padding: const EdgeInsets.all(8.0),
        child: Card(
          color: Colors.white,
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(student.profilePicture),
            ),
            title: Text(student.username),
            subtitle: Text(student.fullName),
            trailing: Container(
              width: 180, // Adjust the width to better fit the buttons
              child: SingleChildScrollView(

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: ElevatedButton(
                            onPressed: () {
                              // Handle details button press
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.grey,
                            ),
                            child: Text('تفاصيل', overflow: TextOverflow.ellipsis),
                          ),
                        ),
                        SizedBox(width: 8),
                        Flexible(
                          child: ElevatedButton(
                            onPressed: () {
                              // Handle delete button press
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.red,
                            ),
                            child: Text('حذف', overflow: TextOverflow.ellipsis),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Text('الكود: ${student.code}'),
                  ],
                ),
              ),
            ),
          ),
        ),

    );
  }
}