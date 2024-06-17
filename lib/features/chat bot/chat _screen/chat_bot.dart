import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:google_fonts/google_fonts.dart';

class Chatbot1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
              decoration: BoxDecoration(
                color: Color(0xFFFFFFFF),
              ),
              child: Container(
                padding: EdgeInsets.only(top: 60),
                child: SingleChildScrollView(

                  child: Column(
                      children: [


        Container(
        margin: EdgeInsets.fromLTRB(0, 0, 1, 43),
        child: Align(
        alignment: Alignment.center,
        child: Container(
        decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(197.5),
        image: DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage(
        'assets/images/image.jpeg',
        ),
        ),
        ),
        child: Container(
        width: 191,
        height: 191,
        ),
        ),
        ),
        ),
        Container(
                          margin: EdgeInsets.fromLTRB(25, 0, 25, 153),
                          child: Row(

                            children: [
                              RichText(
                                textAlign: TextAlign.right,
                                text: TextSpan(
                                  style: GoogleFonts.getFont(
                                    'Inter',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 24,
                                    letterSpacing: 0.7,
                                    color: Color(0xFF000000),
                                  ),
                                  children: [
                                    TextSpan(
                                      text: 'مرحبا، محمود!',
                                      style: GoogleFonts.getFont(
                                        'Inter',
                                        fontWeight: FontWeight.w700,
                                        fontSize: 24,
                                        height: 1.3,
                                        letterSpacing: 0.7,
                                        color: Color(0xFF02208B),
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'كيف أساعدك اليوم',
                                      style: GoogleFonts.getFont(
                                        'Inter',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 24,
                                        height: 1.3,
                                        letterSpacing: 0.7,
                                        color: Color(0xFF414141),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
        Container(
        margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
        decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(64),
        color: Color(0xFFE3E3E3),
        boxShadow: [
        BoxShadow(
        color: Color(0x40000000),
        offset: Offset(0, 4),
        blurRadius: 2,
        ),
        ],
        ),
        child: Container(

        child: TextField(
             textAlign: TextAlign.right,
          decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(30),),
          labelText: "اكتب هنا......",labelStyle: GoogleFonts.getFont(
              'Inter',
              fontWeight: FontWeight.w500,
              fontSize: 20,
              letterSpacing: 0.6,
              color: Color(0xFF454545),
            ),),

                 style: GoogleFonts.getFont(
                   'Inter',
                   fontWeight: FontWeight.w500,
                   fontSize: 20,
                   letterSpacing: 0.6,
                   color: Color(0xFF454545),
                 )
          ),
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