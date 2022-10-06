import 'package:get/get.dart';
import 'package:news_app/common/app_network.dart';
import 'package:news_app/users/source.dart';

class UsersController extends GetxController {
  final AppNetwork _appNetwork = AppNetwork();
  List<Source> listSource = [];
  bool isLoading = false;

  @override
  void onInit() {
    getData();
    super.onInit();
  }

  Future<void> getData() async {
    isLoading = true;
    update();
    try {
      final res = await _appNetwork.fetchSource();
      listSource.addAll(res.sources ?? []);
      update();
    } catch (e) {
      e.printError();
    }
    isLoading = false;
    update();
  }
}
