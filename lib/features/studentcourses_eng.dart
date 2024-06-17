import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:google_fonts/google_fonts.dart';

class StudentsCourses1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
      Container(
        decoration: BoxDecoration(
          color: Color(0xFFECECEC),
        ),
        child: Container(
          padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
            SizedBox(
            width: double.infinity,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
            Container(
            margin: EdgeInsets.fromLTRB(15, 0, 16, 7),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 8),
                  child: SizedBox(
                    width: 26,
                    height: 22,
                    child: SvgPicture.asset(
                      'assets/vectors/vector_34_x2.svg',
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 2, 0, 0),
                  child: SizedBox(
                    width: 30,
                    height: 28,
                    child: SvgPicture.asset(
                      'assets/vectors/vector_414_x2.svg',
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 2, 0, 9),
                  child: SizedBox(
                    width: 19,
                    height: 19,
                    child: SvgPicture.asset(
                      'assets/vectors/vector_388_x2.svg',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 21),
            decoration: BoxDecoration(
              color: Color(0xFFFFFFFF),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFF000000),
                  offset: Offset(0, 3),
                  blurRadius: 2.5,
                ),
              ],
            ),
            child: Container(
              width: 430,
              height: 1,
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(26, 0, 26, 31),
            child: Align(
              alignment: Alignment.topRight,
              child: SizedBox(
                width: 244,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 2, 17, 0),
                      child: SizedBox(
                        width: 204,
                        child: Text(
                          'Courses',
                          style: GoogleFonts.getFont(
                            'Inter',
                            fontWeight: FontWeight.w600,
                            fontSize: 28,
                            height: 1.2,
                            letterSpacing: -0.6,
                            color: Color(0xFF000000),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
                      child: SizedBox(
                        width: 23,
                        height: 21,
                        child: SvgPicture.asset(
                          'assets/vectors/vector_239_x2.svg',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(23, 0, 23, 9),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Student’s courses this term',
                style: GoogleFonts.getFont(
                  'Inter',
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  height: 1.2,
                  letterSpacing: -0.4,
                  color: Color(0xFF013267),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(15, 0, 18, 27),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
            Expanded(
            child: Container(
            margin: EdgeInsets.fromLTRB(0, 0, 14, 0),
            decoration: BoxDecoration(
              color: Color(0xFFFFFFFF),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(24),
                bottomRight: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
              boxShadow: [
                BoxShadow(
                  color: Color(0x40000000),
                  offset: Offset(0, 4),
                  blurRadius: 2,
                ),
              ],
            ),
            child: Container(
              padding: EdgeInsets.fromLTRB(6, 85, 19.6, 22),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
              Text(
              'Computer Vision',
              style: GoogleFonts.getFont(
                'Inter',
                fontWeight: FontWeight.w600,
                fontSize: 11,
                height: 1.6,
                letterSpacing: 0.1,
                color: Color(0xFF000000),
              ),
            ),
            Positioned(
              left: 2,
              bottom: -14,
              child: SizedBox(
                height: 17,
                child: Text(
                  'CS180',
                  style: GoogleFonts.getFont(
                    'Inter',
                    fontWeight: FontWeight.w600,
                    fontSize: 11,
                    height: 1.6,
                    letterSpacing: 0.1,
                    color: Color(0xFF484848),
                  ),
                ),
              ),
            ),
            ],
          ),
        ),
      ),
    ),
    Expanded(
    child: Container(
    margin: EdgeInsets.fromLTRB(0, 0, 15, 1),
    decoration: BoxDecoration(
    color: Color(0xFFFFFFFF),
    borderRadius: BorderRadius.only(
    topLeft: Radius.circular(25),
    topRight: Radius.circular(24),
    bottomRight: Radius.circular(12),
    bottomLeft: Radius.circular(12),
    ),
    boxShadow: [
    BoxShadow(
    color: Color(0x40000000),
    offset: Offset(0, 4),
    blurRadius: 2,
    ),
    ],
    ),
    child: Container(
    padding: EdgeInsets.fromLTRB(5, 84, 5, 22),
    child: Stack(
    clipBehavior: Clip.none,
    children: [
    Text(
    'Intro to CS',
    style: GoogleFonts.getFont(
    'Inter',
    fontWeight: FontWeight.w600,
    fontSize: 11,
    height: 1.6,
    letterSpacing: 0.1,
    color: Color(0xFF000000),
    ),
    ),
    Positioned(
    left: 2,
    bottom: -14,
    child: SizedBox(
    height: 17,
    child: Text(
    'CS180',
    style: GoogleFonts.getFont(
    'Inter',
    fontWeight: FontWeight.w600,
    fontSize: 11,
    height: 1.6,
    letterSpacing: 0.1,
    color: Color(0xFF484848),
    ),
    ),
    ),
    ),
    ],
    ),
    ),
    ),
    ),
    Expanded(
    child: Container(
    decoration: BoxDecoration(
    color: Color(0xFFFFFFFF),
    borderRadius: BorderRadius.only(
    topLeft: Radius.circular(25),
    topRight: Radius.circular(24),
    bottomRight: Radius.circular(12),
    bottomLeft: Radius.circular(12),
    ),
    boxShadow: [
    BoxShadow(
    color: Color(0x40000000),
    offset: Offset(0, 4),
    blurRadius: 2,
    ),
    ],
    ),
    child: Container(
    padding: EdgeInsets.fromLTRB(6, 85, 6, 22),
    child: Stack(
    clipBehavior: Clip.none,
    children: [
    Text(
    'Intro to CS',
    style: GoogleFonts.getFont(
    'Inter',
    fontWeight: FontWeight.w600,
    fontSize: 11,
    height: 1.6,
    letterSpacing: 0.1,
    color: Color(0xFF000000),
    ),
    ),
    Positioned(
    left: 1,
    bottom: -14,
    child: SizedBox(
    height: 17,
    child: Text(
    'CS180',
    style: GoogleFonts.getFont(
    'Inter',
    fontWeight: FontWeight.w600,
    fontSize: 11,
    height: 1.6,
    letterSpacing: 0.1,
    color: Color(0xFF484848),
    ),
    ),
    ),
    ),
    ],
    ),
    ),
    ),
    ),
    ],
    ),
    ),
    Container(
    margin: EdgeInsets.fromLTRB(15, 0, 18, 0),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Expanded(
    child: Container(
    margin: EdgeInsets.fromLTRB(0, 1, 14, 0),
    decoration: BoxDecoration(
    color: Color(0xFFFFFFFF),
    borderRadius: BorderRadius.only(
    topLeft: Radius.circular(25),
    topRight: Radius.circular(24),
    bottomRight: Radius.circular(12),
    bottomLeft: Radius.circular(12),
    ),
    boxShadow: [
    BoxShadow(
    color: Color(0x40000000),
    offset: Offset(0, 4),
    blurRadius: 2,
    ),
    ],
    ),
    child: Container(
    padding: EdgeInsets.fromLTRB(6, 85, 19.6, 22),
    child: Stack(
    clipBehavior: Clip.none,
    children: [
    Text(
    'Computer Vision',
    style: GoogleFonts.getFont(
    'Inter',
    fontWeight: FontWeight.w600,
    fontSize: 11,
    height: 1.6,
    letterSpacing: 0.1,
    color: Color(0xFF000000),
    ),
    ),
    Positioned(
    left: 2,
    bottom: -14,
    child: SizedBox(
    height: 17,
    child: Text(
    'CS180',
    style: GoogleFonts.getFont(
    'Inter',
    fontWeight: FontWeight.w600,
    fontSize: 11,
    height: 1.6,
    letterSpacing: 0.1,
    color: Color(0xFF484848),
    ),
    ),
    ),
    ),
    ],
    ),
    ),
    ),
    ),
    Expanded(
    child: Container(
    margin: EdgeInsets.fromLTRB(0, 1, 15, 1),
    decoration: BoxDecoration(
    color: Color(0xFFFFFFFF),
    borderRadius: BorderRadius.only(
    topLeft: Radius.circular(25),
    topRight: Radius.circular(24),
    bottomRight: Radius.circular(12),
    bottomLeft: Radius.circular(12),
    ),
    boxShadow: [
    BoxShadow(
    color: Color(0x40000000),
    offset: Offset(0, 4),
    blurRadius: 2,
    ),
    ],
    ),
    child: Container(
    padding: EdgeInsets.fromLTRB(5, 84, 5, 22),
    child: Stack(
    clipBehavior: Clip.none,
    children: [
    Text(
    'Intro to CS',
    style: GoogleFonts.getFont(
    'Inter',
    fontWeight: FontWeight.w600,
    fontSize: 11,
    height: 1.6,
    letterSpacing: 0.1,
    color: Color(0xFF000000),
    ),
    ),
    Positioned(
    left: 2,
    bottom: -14,
    child: SizedBox(
    height: 17,
    child: Text(
    'CS180',
    style: GoogleFonts.getFont(
    'Inter',
    fontWeight: FontWeight.w600,
    fontSize: 11,
    height: 1.6,
    letterSpacing: 0.1,
    color: Color(0xFF484848),
    ),
    ),
    ),
    ),
    ],
    ),
    ),
    ),
    ),
    Expanded(
    child: Container(
    margin: EdgeInsets.fromLTRB(0, 0, 0, 1),
    decoration: BoxDecoration(
    color: Color(0xFFFFFFFF),
    borderRadius: BorderRadius.only(
    topLeft: Radius.circular(25),
    topRight: Radius.circular(24),
    bottomRight: Radius.circular(12),
    bottomLeft: Radius.circular(12),
    ),
    boxShadow: [
    BoxShadow(
    color: Color(0x40000000),
    offset: Offset(0, 4),
    blurRadius: 2,
    ),
    ],
    ),
    child: Container(
    padding: EdgeInsets.fromLTRB(6, 85, 6, 22),
    child: Stack(
    clipBehavior: Clip.none,
    children: [
    Text(
    'Intro to CS',
    style: GoogleFonts.getFont(
    'Inter',
    fontWeight: FontWeight.w600,
    fontSize: 11,
    height: 1.6,
    letterSpacing: 0.1,
    color: Color(0xFF000000),
    ),
    ),
    Positioned(
    left: 1,
    bottom: -14,
    child: SizedBox(
    height: 17,
    child: Text(
    'CS180',
    style: GoogleFonts.getFont(
    'Inter',
    fontWeight: FontWeight.w600,
    fontSize: 11,
    height: 1.6,
    letterSpacing: 0.1,
    color: Color(0xFF484848),
    ),
    ),
    ),
    ),
    ],
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
    Positioned(
    left: 15,
    top: 163,
    child: Container(
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(22),
    color: Color(0xFFD9D9D9),
    image: DecorationImage(
    fit: BoxFit.cover,
    image: AssetImage(
    'assets/images/rectangle_29.jpeg',
    ),
    ),
    ),
    child: Container(
    width: 123,
    height: 87,
    ),
    ),
    ),
    Positioned(
    left: 15,
    top: 315,
    child: Container(
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(22),
    color: Color(0xFFD9D9D9),
    image: DecorationImage(
    fit: BoxFit.cover,
    image: AssetImage(
    'assets/images/rectangle_29.jpeg',
    ),
    ),
    ),
    child: Container(
    width: 123,
    height: 87,
    ),
    ),
    ),
    Positioned(
    top: 163,
    child: Container(
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(26),
    color: Color(0xFFD9D9D9),
    image: DecorationImage(
    fit: BoxFit.cover,
    image: AssetImage(
    'assets/images/rectangle_34.jpeg',
    ),
    ),
    ),
    child: Container(
    width: 124,
    height: 86,
    ),
    ),
    ),
    Positioned(
    top: 315,
    child: Container(
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(26),
    color: Color(0xFFD9D9D9),
    image: DecorationImage(
    fit: BoxFit.cover,
    image: AssetImage(
    'assets/images/rectangle_34.jpeg',
    ),
    ),
    ),
    child: Container(
    width: 124,
    height: 86,
    ),
    ),
    ),
    Positioned(
    right: 18,
    top: 163,
    child: Container(
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(25),
    color: Color(0xFFD9D9D9),
    image: DecorationImage(
    fit: BoxFit.cover,
    image: AssetImage(
    'assets/images/rectangle_391.jpeg',
    ),
    ),
    ),
    child: Container(
    width: 125,
    height: 87,
    ),
    ),
    ),
    Positioned(
    right: 18,
    top: 314,
    child: Container(
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(25),
    color: Color(0xFFD9D9D9),
    image: DecorationImage(
    fit: BoxFit.cover,
    image: AssetImage(
    'assets/images/rectangle_391.jpeg',
    ),
    ),
    ),
    child: Container(
    width: 125,
    height: 87,
    ),
    ),
    ),
    ],
    ),
    ),
    );
  }
}