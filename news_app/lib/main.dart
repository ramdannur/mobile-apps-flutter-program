import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/common/notification_service.dart';
import 'package:news_app/common/user_global_controller.dart';
import 'package:news_app/detail/detail_screen.dart';
import 'package:news_app/home/home_screen.dart';
import 'package:news_app/login/login_screen.dart';
import 'package:news_app/menu/menu_screen.dart';
import 'package:news_app/notification/notification_screen.dart';
import 'package:news_app/profile/profile_screen.dart';
import 'package:news_app/profile_edit/profile_edit_screen.dart';
import 'package:news_app/splash/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await NotificationService().init();

  initFirebase();

  Get.put(UserGlobalController());

  runApp(const MyApp());
}

initFirebase() async {
  await Firebase.initializeApp();

  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

  await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
      alert: true, badge: true, sound: true);
}

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
  print("Handling a background message ${message.messageId}");
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          color: Colors.orange,
          elevation: 3,
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.grey[50],
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(
              color: Colors.grey[300]!,
            ),
          ),
        ),
        textTheme: const TextTheme(
          caption: TextStyle(
            fontSize: 14,
            color: Colors.black87,
            height: 2,
          ),
        ),
      ),
      initialRoute: '/splash',
      getPages: [
        GetPage(name: '/splash', page: () => const SplashScreen()),
        GetPage(name: '/login', page: () => const LoginScreen()),
        GetPage(name: '/home', page: () => const HomeScreen()),
        GetPage(name: '/profile', page: () => const ProfileScreen()),
        GetPage(name: "/profile/edit", page: () => const ProfileEditScreen()),
        GetPage(name: '/menu', page: () => const MenuScreen()),
        GetPage(name: '/detail', page: () => const DetailScreen()),
        GetPage(name: "/notification", page: () => const NotificationScreen()),
      ],
    );
  }
}
