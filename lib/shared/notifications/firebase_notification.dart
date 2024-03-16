import 'dart:io';

import 'package:flutter/material.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'local_notification.dart';

@pragma('vm:entry-point')
Future<void> _firebaseMessagingBackgroundHandler(message) async {
  debugPrint("onBackgroundMessage: ${message.toString()}");
  debugPrint("onBackgroundMessage: ${message.notification}");
  /*LocalNotifications.show(
    title: message.notification!.title,
    body: message.notification!.body,
  );*/
}

class FirebaseNotifications {
  static FirebaseMessaging firebaseMessaging = FirebaseMessaging.instance;

  static void _iOSPermission() async {
    // firebaseMessaging.requestPermission();

    await firebaseMessaging.setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );
  }

  static Future<void> init() async {
    if (Platform.isIOS) _iOSPermission();

    firebaseMessaging.requestPermission();

    firebaseMessaging.getInitialMessage().then((message) {
      debugPrint("Listening to messages");
      debugPrint("onInitialMessage: ${message?.data}");
      debugPrint("onMessage: ${message?.notification}");
      /*LocalNotifications.show(
        title: message?.notification?.title ?? "",
        body: message?.notification?.body ?? "",
      );*/
    });

    FirebaseMessaging.onMessage.listen((message) {
      debugPrint("Listening to messages");
      debugPrint("onMessage: ${message.data}");
      debugPrint("onMessage: ${message.notification}");
      LocalNotifications.show(
        title: message.notification!.title,
        body: message.notification!.body,
      );
    });

    FirebaseMessaging.onBackgroundMessage(
      _firebaseMessagingBackgroundHandler,
    );
  }

  static Future<String?> getToken() async {
    // For testing purposes print the Firebase Messaging token
    String? token = await firebaseMessaging.getToken();
    // print("FirebaseMessaging token: $token");
    return token;
  }
}
