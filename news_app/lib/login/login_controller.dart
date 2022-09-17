import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/common/user_global_controller.dart';

class LoginController extends GetxController {
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  UserGlobalController userGlobalController = Get.find();

  void redirectToHome() {
    Get.offNamed("menu");
  }

  void submit() {
    if (txtEmail.text == "admin@gmail.com" && txtPassword.text == "1234") {
      userGlobalController.nama = "Admin";

      Get.snackbar("Sukses", "Login Berhasil!");
      redirectToHome();
    } else {
      Get.snackbar("Error", "Login Gagal!");
    }
  }
}
