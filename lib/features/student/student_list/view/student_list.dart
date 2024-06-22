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

import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kolliity/features/student/addnew_student/add_view.dart';

import '../../../../shared/app_size.dart';
import '../../../../shared/constants/colors.dart';
import '../search_on_student.dart';
import 'package:http/http.dart' as http;


class Student {
  final String? profilePicture;
  final String username;
  final String fullName;
  final int code;

  Student({
    required this.profilePicture,
    required this.username,
    required this.fullName,
    required this.code,
  });

  factory Student.fromJson(Map<String, dynamic> json) {
    return Student(
      profilePicture: json['profileImage'],
      username: json['userName'],
      fullName: json['fullNameInArabic'],
      code: int.parse(json['code']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'profileImage': profilePicture,
      'userName': username,
      'fullNameInArabic': fullName,
      'code': code.toString(),
    };
  }
}





class StudentList extends StatefulWidget {
  @override
  State<StudentList> createState() => _StudentListState();
}

class _StudentListState extends State<StudentList> {
  List<Student> students = [];
  List<Student> filteredStudents = [];
  TextEditingController searchController = TextEditingController();
  final String authToken = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb2xlIjoiU3R1ZGVudCIsIm5hbWVpZCI6Ik1haG1vdWRTdHVkZW50MjIiLCJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9zaWQiOiJlNmQ5NDQxYy02ZjA1LTQ1ZGEtMzA3YS0wOGRjMmYyNDljZDIiLCJuYmYiOjE3MTg3MzEyNzksImV4cCI6MTcxODczMzk3OSwiaWF0IjoxNzE4NzMxMjc5LCJpc3MiOiJBdXRoU2VydmVyIiwiYXVkIjoiQXV0aFNlcnZlciJ9.48YcDaYAJphmkPnEtg5Ln05ArvsWf13m-lINsACBKSQ';
  @override
  void initState() {
    super.initState();
    fetchStudents();
  }


  Future<void> fetchStudents({int pageIndex = 0, int pageSize = 11, String? code, String? userNamePrefix}) async {
    try {
      final queryParameters = {
        'PageIndex': pageIndex.toString(),
        'PageSize': pageSize.toString(),
        if (code != null) 'Code': code,
        if (userNamePrefix != null) 'UserNamePrefix': userNamePrefix,
      };
      final uri = Uri.http('kollity.runasp.net', '/api/Student', queryParameters);
      final response = await http.get(
        uri,
        headers: {
          'Authorization': 'Bearer $authToken',
          'accept': 'text/plain',
          'Content-Type': 'application/json'
        },
      );

      if (response.statusCode == 200) {
        final List<dynamic> data = json.decode(response.body);
        setState(() {
          students = data.map((json) => Student.fromJson(json)).toList();
          filteredStudents = students;
        });
      } else {
        print('Failed to load students. Status code: ${response.statusCode}');
        print('Response body: ${response.body}');
        throw Exception('Failed to load students');
      }
    } catch (e) {
      print('Error occurred: $e');
      throw Exception('Failed to load students');
    }
  }

  void _searchStudent(String query) {
    setState(() {
      filteredStudents = students
          .where((student) => student.username.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  Future<void> removeStudent(Student student) async {
    final response = await http.delete(
      Uri.parse('http://kollity.runasp.net/api/Student/${student.code}'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      fetchStudents(); // Refresh the student list after removing a student
    } else {
      throw Exception('Failed to delete student');
    }
  }

  Future<void> addStudent(Student student) async {
    final response = await http.post(
      Uri.parse('http://kollity.runasp.net/api/Student'),
      headers: {'Content-Type': 'application/json'},
      body: json.encode(student.toJson()),
    );

    if (response.statusCode == 200) {
      fetchStudents(); // Refresh the student list after adding a new student
    } else {
      throw Exception('Failed to add student');
    }
  }

  void _showAddStudentDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AddNewStudent(onAdd: addStudent);
      },
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        IconButton(onPressed: _showAddStudentDialog,
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
                onChanged: (value) {
                  _searchStudent(value);
                },
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredStudents.length,
              itemBuilder: (context, index) {
                return StudentListItem(student: filteredStudents[index],
                  onRemove: removeStudent,
                );

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
  final Function(Student) onRemove;

  StudentListItem({required this.student,required this.onRemove});

  @override
  Widget build(BuildContext context) {
    return Padding(

        padding: const EdgeInsets.all(8.0),
        child: Card(
          color: Colors.white,
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage:  NetworkImage(
                student.profilePicture ?? 'https://via.placeholder.com/150', // Placeholder image if null
              )
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
                              onRemove(student);
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