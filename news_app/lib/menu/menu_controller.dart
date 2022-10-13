import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:news_app/common/notification_service.dart';

class MenuController extends GetxController {
  @override
  void onInit() {
    FirebaseMessaging.instance.subscribeToTopic('global');

    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      RemoteNotification? notification = message.notification;
      AndroidNotification? android = message.notification?.android;

      if (notification != null && android != null) {
        NotificationService().showNotification(notification.title ?? "",
            notification.body ?? "", message.data.toString());
      }
    });

    NotificationService().getToken();

    super.onInit();
  }
}
