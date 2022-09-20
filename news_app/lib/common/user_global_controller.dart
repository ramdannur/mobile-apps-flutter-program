import 'package:get/get.dart';

class UserGlobalController extends GetxController {
  String? nama;
  String? namaLengkap;
  String? email;
  String? pekerjaan;
  String? hobi;

  @override
  void onInit() {
    print("UserGlobalController diinisasi!");
    super.onInit();
  }
}
