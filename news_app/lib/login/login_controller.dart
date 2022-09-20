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
      userGlobalController.nama = "Ramdan";
      userGlobalController.namaLengkap = "Ramdan Nurul";
      userGlobalController.email = "Ramdannur12@gmail.com";
      userGlobalController.pekerjaan = "Software Engineer";
      userGlobalController.hobi = "Travelling";

      Get.snackbar("Sukses", "Login Berhasil!");
      redirectToHome();
    } else {
      Get.snackbar("Error", "Login Gagal!");
    }
  }
}
