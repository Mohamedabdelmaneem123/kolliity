import 'package:flutter/material.dart';
import 'package:kolliity/features/profiledata-eng.dart';
import 'package:kolliity/features/setting-eng.dart';
import 'package:kolliity/features/studentcourses_eng.dart';
import 'package:kolliity/features/units.dart';

import 'changepassword.dart';


class NavBar_Eng extends StatelessWidget {
  const NavBar_Eng({super.key});

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
              'My Profile',
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
                return Profiledata_Eng();
              }));
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.padding),
            title: Text(
              'Change Password',
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
              'My Courses',
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
                return StudentCourses_Eng();
              }));
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text(
              'Settings',
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
              leading: Icon(Icons.exit_to_app),
              title: Text(
                'Sign Out',
                style: SafeGoogleFont(
                  'Inter',
                  fontSize: 22 * ffem,
                  fontWeight: FontWeight.w600,
                  height: 1.2272726206 * ffem / fem,
                  letterSpacing: -0.52 * fem,
                  color: Color(0xff013267),
                ),
              ),
              onTap: () => null),
          Divider()
        ],
      ),
    );
  }
}
