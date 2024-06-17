import 'package:flutter/material.dart';
import 'package:kolliity/features/profiledata-eng.dart';
import 'package:kolliity/features/setting-eng.dart';
import 'package:kolliity/features/student/student_list/view/student_list.dart';
import 'package:kolliity/features/studentcourses_eng.dart';
import 'package:kolliity/features/units.dart';
import 'package:kolliity/shared/extentions/string_extensions.dart';
import 'package:kolliity/shared/util/app_routes.dart';
import 'package:kolliity/shared/util/ui.dart';

import '../shared/app_size.dart';
import 'changepassword.dart';
import 'chat bot/chat _screen/chat_bot.dart';
import 'doctor/doctor_list/views/doctor_list.dart';
import 'language/change_language.dart';


class NavBar_Eng extends StatelessWidget {
   NavBar_Eng({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 430;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(''),
            accountEmail: Text(''),
            currentAccountPicture: CircleAvatar(),
            decoration: BoxDecoration(
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
          ),
          ListTile(
            leading: Icon(Icons.personal_injury),
            title: Text(
              'My profile'.tr(),
              style: SafeGoogleFont(
                'Inter',
                fontSize: 22 * ffem,
                fontWeight: FontWeight.w600,
                height: 1.2272726206 * ffem / fem,
                letterSpacing: -0.52 * fem,
                color: Color(0xff013267),
              ),
            ),
            onTap: () {
              UI.push(AppRoutes.profileData);
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.padding),
            title: Text(
              'change password'.tr(),
              style: SafeGoogleFont(
                'Inter',
                fontSize: 22 * ffem,
                fontWeight: FontWeight.w600,
                height: 1.2272726206 * ffem / fem,
                letterSpacing: -0.52 * fem,
                color: Color(0xff013267),
              ),
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return chandpassword();
              }));
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.search),
            title: Text(
              'My Courses'.tr(),
              style: SafeGoogleFont(
                'Inter',
                fontSize: 22 * ffem,
                fontWeight: FontWeight.w600,
                height: 1.2272726206 * ffem / fem,
                letterSpacing: -0.52 * fem,
                color: Color(0xff013267),
              ),
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return StudentsCourses1();
              }));
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.chat_rounded),
            title: Text(
              'CHAT BOT'.tr(),
              style: SafeGoogleFont(
                'Inter',
                fontSize: 22 * ffem,
                fontWeight: FontWeight.w600,
                height: 1.2272726206 * ffem / fem,
                letterSpacing: -0.52 * fem,
                color: Color(0xff013267),
              ),
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Chatbot1();
              }));
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.military_tech_outlined),
            title: Text(
              'Doctors'.tr(),
              style: SafeGoogleFont(
                'Inter',
                fontSize: 22 * ffem,
                fontWeight: FontWeight.w600,
                height: 1.2272726206 * ffem / fem,
                letterSpacing: -0.52 * fem,
                color: Color(0xff013267),
              ),
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DoctorList();
              }));
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.person_add_alt),
            title: Text(
              'Students'.tr(),
              style: SafeGoogleFont(
                'Inter',
                fontSize: 22 * ffem,
                fontWeight: FontWeight.w600,
                height: 1.2272726206 * ffem / fem,
                letterSpacing: -0.52 * fem,
                color: Color(0xff013267),
              ),
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return StudentList();
              }));
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text(
              'settings'.tr(),
              style: SafeGoogleFont(
                'Inter',
                fontSize: 22 * ffem,
                fontWeight: FontWeight.w600,
                height: 1.2272726206 * ffem / fem,
                letterSpacing: -0.52 * fem,
                color: Color(0xff013267),
              ),
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Setting_Eng();
              }));
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.bookmark_border),
            title: Text(
              'Courses'.tr(),
              style: SafeGoogleFont(
                'Inter',
                fontSize: 22 * ffem,
                fontWeight: FontWeight.w600,
                height: 1.2272726206 * ffem / fem,
                letterSpacing: -0.52 * fem,
                color: Color(0xff013267),
              ),
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Chatbot1();
              }));
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.language),
            title: Text(
              'language'.tr(),
              style: SafeGoogleFont(
                'Inter',
                fontSize: 22 * ffem,
                fontWeight: FontWeight.w600,
                height: 1.2272726206 * ffem / fem,
                letterSpacing: -0.52 * fem,
                color: Color(0xff013267),
              ),
            ),
            onTap: () {
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(AppSize.r30),
                    topRight: Radius.circular(AppSize.r30),
                  ),
                ),
                builder: (_) => const ChangeLanguage(),
              );
            },
          ),
          Divider(),
          ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text(
                'Sign Out'.tr(),
                style: SafeGoogleFont(
                  'Inter',
                  fontSize: 22 * ffem,
                  fontWeight: FontWeight.w600,
                  height: 1.2272726206 * ffem / fem,
                  letterSpacing: -0.52 * fem,
                  color: Color(0xff013267),
                ),
              ),
              onTap: () {
                UI.pushWithRemove(AppRoutes.Out);
              }),
          Divider()
        ],
      ),
    );
  }
}
