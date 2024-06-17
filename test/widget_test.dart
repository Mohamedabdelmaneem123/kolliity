// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kolliity/features/login/login_-screen.dart';
import 'package:kolliity/features/profiledata-eng.dart';

import 'package:kolliity/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  Future<void> setMockSharedPreferences(bool isLoggedIn) async {
    SharedPreferences.setMockInitialValues({'isLoggedIn': isLoggedIn});
  }
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    await setMockSharedPreferences(false);
    // Build our app and trigger a frame.
    await tester.pumpWidget(const  MyApp(isdark: false, isLoggedIn: false,));


    expect(find.byType(Login_Eng), findsOneWidget);
    expect(find.byType(Profiledata_Eng), findsNothing);

    // Verify that our counter starts at 0.
    // expect(find.text('0'), findsOneWidget);
    // expect(find.text('1'), findsNothing);
    //
    // // Tap the '+' icon and trigger a frame.
    // await tester.tap(find.byIcon(Icons.add));
    // await tester.pump();
    //
    // // Verify that our counter has incremented.
    // expect(find.text('0'), findsNothing);
    // expect(find.text('1'), findsOneWidget);
  });
  testWidgets('App starts with profile screen when logged in', (WidgetTester tester) async {
    await setMockSharedPreferences(true); // Simulate user logged in

    await tester.pumpWidget(const MyApp(isLoggedIn: true, isdark: false)); // Pass isLoggedIn as true

    // Verify that ProfileDataScreen is shown
    expect(find.byType(Profiledata_Eng), findsOneWidget);
    expect(find.byType(Login_Eng), findsNothing);
  });

}
