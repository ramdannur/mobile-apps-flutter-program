import 'dart:convert';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';

class NotificationService {
  static final NotificationService _notificationService =
      NotificationService._internal();

  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  factory NotificationService() {
    return _notificationService;
  }

  NotificationService._internal();

  Future<void> init() async {
    final AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings("app_icon");

    final InitializationSettings initializationSettings =
        InitializationSettings(
            android: initializationSettingsAndroid, iOS: null, macOS: null);

    await flutterLocalNotificationsPlugin.initialize(initializationSettings,
        onDidReceiveNotificationResponse: onDidReceiveNotificationResponse);
  }

  void onDidReceiveNotificationResponse(
      NotificationResponse notificationResponse) async {
    final String? payload = notificationResponse.payload;
    if (notificationResponse.payload != null) {
      debugPrint('notification payload: $payload');

      Map<String, dynamic> jsonPayload = jsonDecode(payload ?? "");

      Get.toNamed("notification", arguments: {
        'title': jsonPayload['title'],
        'body': jsonPayload['body'],
        'payload': payload,
      });
    }
  }

  void showNotification(title, desc, data) async {
    const AndroidNotificationDetails androidNotificationDetails =
        AndroidNotificationDetails("ID", "news_channel",
            channelDescription: 'Channel Descritption',
            largeIcon: DrawableResourceAndroidBitmap('app_icon'),
            importance: Importance.max,
            priority: Priority.high,
            ticker: 'ticker');

    const NotificationDetails notificationDetails =
        NotificationDetails(android: androidNotificationDetails);

    String payload = jsonEncode({'title': title, 'body': desc, 'data': data});

    await flutterLocalNotificationsPlugin
        .show(0, title, desc, notificationDetails, payload: payload);
  }

  String? token;
  getToken() async {
    token = await FirebaseMessaging.instance.getToken();
    print("FCM Token : " + token.toString());
  }
}
